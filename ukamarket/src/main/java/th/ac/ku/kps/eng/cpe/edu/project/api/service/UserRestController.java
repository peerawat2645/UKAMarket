package th.ac.ku.kps.eng.cpe.edu.project.api.service;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
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
import th.ac.ku.kps.eng.cpe.edu.project.model.User;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.ResetPasswordDTO;
import th.ac.ku.kps.eng.cpe.edu.project.services.UserService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/v1/user")
public class UserRestController {

	@Autowired
	private UserService userService;

	@Autowired
	private PasswordEncoder encoder;

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

	@GetMapping("/{userId}")
	public ResponseEntity<Response<User>> getUserData(@PathVariable("userId") String id) {
		Response<User> res = new Response<>();
		try {
			User user = userService.findById(Integer.valueOf(id));
			res.setBody(user);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<User>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<User>>(res, res.getHttpStatus());
		}
	}

	@PostMapping("/update")
	public ResponseEntity<Response<User>> update(@Valid @RequestBody User user) {
		Response<User> res = new Response<>();
		try {
			User u = userService.save(user);
			res.setBody(u);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<User>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<User>>(res, res.getHttpStatus());
		}
	}

	@PostMapping("/resetPassword")
	public ResponseEntity<Response<String>> resetPassword(@Valid @RequestBody ResetPasswordDTO reset) {
		Response<String> res = new Response<>();
		try {
			User user = userService.findById(reset.getUserId());
			if (!encoder.matches(reset.getCurrPassword(), user.getPassword())) {
				res.setBody("password not correct!");
				res.setHttpStatus(HttpStatus.BAD_REQUEST);
				return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
			} else if (!reset.getNewPassword().equals(reset.getConfirmPassword())) {
				res.setBody("new password not matching!");
				res.setHttpStatus(HttpStatus.BAD_REQUEST);
				return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
			}
			user.setPassword(encoder.encode(reset.getNewPassword()));
			userService.save(user);
			res.setBody("change password successfully!");
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
		}
	}
}
