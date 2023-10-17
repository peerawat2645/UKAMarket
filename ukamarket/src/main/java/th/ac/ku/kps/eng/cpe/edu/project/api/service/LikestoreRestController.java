package th.ac.ku.kps.eng.cpe.edu.project.api.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
import th.ac.ku.kps.eng.cpe.edu.project.services.LikestoreService;
import th.ac.ku.kps.eng.cpe.edu.project.services.ReservationService;
import th.ac.ku.kps.eng.cpe.edu.project.services.StoreService;
import th.ac.ku.kps.eng.cpe.edu.project.services.UserService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/v1/like")
public class LikestoreRestController {
	@Autowired
	private ReservationService reservationService;

	@Autowired
	private StoreService storeService;

	@Autowired
	private LikestoreService likestoreService;

	@Autowired
	private UserService userService;

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

	@PostMapping("/{storeId}/userId/{userId}")
	public ResponseEntity<Response<String>> like(@PathVariable("storeId") int storeId,
			@PathVariable("userId") int userId) {
		Response<String> res = new Response<>();
		try {
			Likestore likestore = likestoreService.findByStoreIdAndUserId(storeId, userId);
			if (likestore == null) {
				Store store = storeService.findById(storeId);
				User user = userService.findById(userId);
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

	@GetMapping("/user/{userId}")
	public ResponseEntity<Response<List<LikestoreDTO>>> like(@PathVariable("userId") int userId) {
		Response<List<LikestoreDTO>> res = new Response<>();
		try {
			List<Likestore> likestore = likestoreService.findByUserId(userId);
			List<LikestoreDTO> likestoreDTOs = new ArrayList<LikestoreDTO>();
			for (Likestore ls : likestore) {
				List<Reservation> rev = reservationService.findByStoreIdAndCurrentDate(ls.getStore().getStoreId());
				System.out.println(rev.size());
				if (rev.size() > 0) {
					Reservation reservation = rev.get(0);

					Date startDate = reservation.getStartDate();
					Date endDate = reservation.getEndDate();
					Date open1 = getDateMonOrWed(startDate, endDate);
					Date open2 = getDateMonOrWed(getUTC(open1), endDate);

					likestoreDTOs.add(new LikestoreDTO(ls.getStore().getName(), open1, open2));
				}
				else {
					likestoreDTOs.add(new LikestoreDTO(ls.getStore().getName(), null, null));
				}
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
