package th.ac.ku.kps.eng.cpe.edu.project.api.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import th.ac.ku.kps.eng.cpe.edu.project.api.util.Response;
import th.ac.ku.kps.eng.cpe.edu.project.model.Likestore;
import th.ac.ku.kps.eng.cpe.edu.project.model.Reservation;
import th.ac.ku.kps.eng.cpe.edu.project.model.Store;
import th.ac.ku.kps.eng.cpe.edu.project.model.User;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.LikestoreDTO;
import th.ac.ku.kps.eng.cpe.edu.project.security.jwt.JwtUtils;
import th.ac.ku.kps.eng.cpe.edu.project.services.LikestoreService;
import th.ac.ku.kps.eng.cpe.edu.project.services.ReservationService;
import th.ac.ku.kps.eng.cpe.edu.project.services.StoreService;
import th.ac.ku.kps.eng.cpe.edu.project.services.UserService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/v1/stores")
public class StoreRestController {

	@Autowired
	private StoreService storeService;

	@Autowired
	private UserService userService;

	@Autowired
	private LikestoreService likestoreService;

	@Autowired
	private ReservationService reservationService;

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<Response<ObjectNode>> handleValidationExceptions(MethodArgumentNotValidException ex) {
		Response<ObjectNode> res = new Response<>();
		res.setHttpStatus(HttpStatus.BAD_REQUEST);

		ObjectMapper mapper = new ObjectMapper();

		ObjectNode responObject = mapper.createObjectNode();

		ex.getBindingResult().getAllErrors().forEach((error) -> {
			String fieldname = ((FieldError) error).getField();
			String errorMessage = error.getDefaultMessage();
			responObject.put(fieldname, errorMessage);
		});
		res.setMessage(HttpStatus.BAD_REQUEST.getReasonPhrase());
		res.setBody(responObject);
		return new ResponseEntity<Response<ObjectNode>>(res, res.getHttpStatus());
	}

	@GetMapping("/{id}")
	public ResponseEntity<Response<Store>> getStoreData(@PathVariable int storeId) {
		Response<Store> res = new Response<>();
		try {
			Store store = storeService.findById(storeId);
			res.setBody(store);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<Store>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<Store>>(res, res.getHttpStatus());
		}
	}

	@PostMapping("/create/{userId}")
	public ResponseEntity<Response<Store>> create(@Valid @RequestBody Store store, @PathVariable("userId")int id) {
		Response<Store> res = new Response<>();
		try {
//			if (!storeService.existsByName(store.getName())) {
//				Store s = storeService.findByName(store.getName());
//				res.setBody(s);
//				res.setHttpStatus(HttpStatus.BAD_REQUEST);
//				return new ResponseEntity<Response<Store>>(res, res.getHttpStatus());
//			}
			if (storeService.isNameUnique(store.getName())) {
				User user = userService.findById(id);
				store.setUser(user);
				Store ss = storeService.save(store);
				res.setBody(ss);
				res.setHttpStatus(HttpStatus.OK);
			} else {
				res.setMessage("Duplicate Name");
				res.setBody(null);
				res.setHttpStatus(HttpStatus.BAD_REQUEST);
			}
			
			return new ResponseEntity<Response<Store>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<Store>>(res, res.getHttpStatus());
		}
	}

	@PostMapping("/update")
	public ResponseEntity<Response<Store>> update(@Valid @RequestBody Store store) {
		Response<Store> res = new Response<>();
		try {
			Store ss = storeService.save(store);
			res.setBody(ss);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<Store>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<Store>>(res, res.getHttpStatus());
		}
	}

	@PostMapping("/delete/{id}")
	public ResponseEntity<Response<String>> update(@PathVariable("id") int storeId) {
		Response<String> res = new Response<>();
		try {
			if (storeService.findById(storeId) == null) {
				res.setBody("dont have store object");
				res.setHttpStatus(HttpStatus.BAD_REQUEST);
				return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
			}
			storeService.deleteById(storeId);
			res.setBody("delete Successfully");
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
		}
	}

	@PostMapping("/like/{storeId}")
	public ResponseEntity<Response<String>> like(@PathVariable("storeId") int storeId) {
		Response<String> res = new Response<>();
		try {
			Likestore likestore = likestoreService.findByStoreIdAndUserId(storeId, 1);
			if (likestore == null) {
				Store store = storeService.findById(storeId);
				User user = userService.findById(1);
				Likestore ls = new Likestore(store, user);
				likestoreService.save(ls);
				res.setBody("Like Success");
				res.setHttpStatus(HttpStatus.OK);
				return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
			}

			likestoreService.deleteById(likestore.getLikeId());
			res.setBody("Unlike Success");
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
		}
	}

	private Date getUTC(Date date) {
		// Calculate milliseconds for one day
		long oneDayInMillis = 24 * 60 * 60 * 1000;

		// Calculate tomorrow's date in milliseconds
		long tomorrowInMillis = date.getTime() + oneDayInMillis;

		// Create a new Date object for tomorrow
		Date tomorrowDate = new Date(tomorrowInMillis);
		return tomorrowDate;
	}

	private Date getDateMonOrWed(Date startDate, Date endDate) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(startDate);

		while (calendar.getTime().before(endDate) || calendar.getTime().equals(endDate)) {
			int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);

			if ((dayOfWeek == Calendar.MONDAY || dayOfWeek == Calendar.WEDNESDAY)) {
				return getUTC(calendar.getTime());
			}

			calendar.add(Calendar.DAY_OF_MONTH, 1);
		}
		return null;
	}

	@GetMapping("/like")
	public ResponseEntity<Response<List<LikestoreDTO>>> like() {
		Response<List<LikestoreDTO>> res = new Response<>();
		try {
			List<Likestore> likestore = likestoreService.findByUserId(1);
			List<LikestoreDTO> likestoreDTOs = new ArrayList<LikestoreDTO>();
			for (Likestore ls : likestore) {
				Reservation reservation = reservationService.findByStoreIdAndCurrentDate(ls.getStore().getStoreId());

				Date startDate = reservation.getStartDate();
				Date endDate = reservation.getEndDate();
				Date open1 = getDateMonOrWed(startDate, endDate);
				Date open2 = getDateMonOrWed(getUTC(open1), endDate);

				likestoreDTOs.add(new LikestoreDTO(ls.getStore().getName(), open1, open2));
			}
			res.setBody(likestoreDTOs);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<List<LikestoreDTO>>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<List<LikestoreDTO>>>(res, res.getHttpStatus());
		}
	}

}
