package th.ac.ku.kps.eng.cpe.edu.project.api.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import th.ac.ku.kps.eng.cpe.edu.project.api.util.Response;
import th.ac.ku.kps.eng.cpe.edu.project.model.Area;
import th.ac.ku.kps.eng.cpe.edu.project.model.Likestore;
import th.ac.ku.kps.eng.cpe.edu.project.model.Reservation;
import th.ac.ku.kps.eng.cpe.edu.project.model.Store;
import th.ac.ku.kps.eng.cpe.edu.project.model.User;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.LikestoreDTO;
import th.ac.ku.kps.eng.cpe.edu.project.services.AreaService;
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
	
	@GetMapping("/userId/{id}")
	public ResponseEntity<Response<List<Store>>> getAllStoreByUserId(@PathVariable("id") int userId) {
		Response<List<Store>> res = new Response<>();
		try {
			List<Store> store = storeService.findByUserId(userId);
			res.setBody(store);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<List<Store>>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<List<Store>>>(res, res.getHttpStatus());
		}
	}

	@GetMapping("/{id}")
	public ResponseEntity<Response<Store>> getStoreData(@PathVariable("id") int storeId) {
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
	
	

}
