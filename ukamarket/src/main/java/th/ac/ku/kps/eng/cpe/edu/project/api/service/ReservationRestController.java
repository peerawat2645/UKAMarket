package th.ac.ku.kps.eng.cpe.edu.project.api.service;

import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
import th.ac.ku.kps.eng.cpe.edu.project.model.Area;
import th.ac.ku.kps.eng.cpe.edu.project.model.Reservation;
import th.ac.ku.kps.eng.cpe.edu.project.model.Store;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.ReservationCreateDTO;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.ReservationDTO;
import th.ac.ku.kps.eng.cpe.edu.project.services.AreaService;
import th.ac.ku.kps.eng.cpe.edu.project.services.ReservationService;
import th.ac.ku.kps.eng.cpe.edu.project.services.StoreService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/v1/reserv")
public class ReservationRestController {

	@Autowired
	private ReservationService reservationService;

	@Autowired
	private StoreService storeService;
	
	@Autowired
	private AreaService areaService;

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

	private List<String> getAllMonth() {
		List<String> months = new ArrayList<String>();
		Calendar calendar = Calendar.getInstance();
		int currentMonth = calendar.get(Calendar.MONTH);

		DateFormatSymbols dfs = new DateFormatSymbols(Locale.getDefault());

		for (int month = currentMonth + 1; month <= Calendar.DECEMBER; month++) {
			String monthName = dfs.getMonths()[month];
			months.add(monthName);
		}
		return months;
	}

	private List<Date> getDayOfMonth(String month) {
		List<Date> dates = new ArrayList<Date>();
		int monthIndex = -1;
		DateFormatSymbols dfs = new DateFormatSymbols(Locale.getDefault());
		String[] monthNames = dfs.getMonths();

		for (int i = 0; i < monthNames.length; i++) {
			if (monthNames[i].equalsIgnoreCase(month)) {
				monthIndex = i;
				break;
			}
		}

		if (monthIndex != -1) {
			Calendar calendar = Calendar.getInstance();
			calendar.set(Calendar.MONTH, monthIndex);
			int maxDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);

			for (int day = 1; day <= maxDay; day++) {
				calendar.set(Calendar.DAY_OF_MONTH, day);

				int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);

				if (dayOfWeek == Calendar.MONDAY || dayOfWeek == Calendar.WEDNESDAY) {
					Date date = calendar.getTime();
					dates.add(date);
				}
			}
		}
		return dates;
	}

	@GetMapping("/choice/store/{id}/type/{type}")
	public ResponseEntity<Response<ReservationDTO>> getDate(@PathVariable("id") int storeId,
			@PathVariable("type") String type) {
		Response<ReservationDTO> res = new Response<>();
		try {
			ReservationDTO reserv = new ReservationDTO();
			if (type.equals("month")) {
				reserv.setMonths(getAllMonth());
			}
			reserv.setStore(storeService.findById(storeId));
			reserv.setType(type);
			res.setBody(reserv);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<ReservationDTO>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<ReservationDTO>>(res, res.getHttpStatus());
		}
	}

	@GetMapping("/description")
	public ResponseEntity<Response<ReservationCreateDTO>> getDate(@Param("date") Date date,
			@Param("month") String month, @Param("type") String type, @Param("storeId") int storeId) {
		Response<ReservationCreateDTO> res = new Response<>();
		try {
			ReservationCreateDTO reserv = new ReservationCreateDTO();
			if (type.equals("month")) {
				reserv.setDates(getDayOfMonth(month));
			} else {
				List<Date> dates = new ArrayList<Date>();
				dates.add(date);
				reserv.setDates(dates);
			}
			reserv.setStore(storeService.findById(storeId));
			res.setBody(reserv);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<ReservationCreateDTO>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<ReservationCreateDTO>>(res, res.getHttpStatus());
		}
	}

	@PostMapping("/create")
	public ResponseEntity<Response<Reservation>> getStoreData(@Param("row") int row, @Param("col") int col,
			@Param("dates") List<Date> dates, @Param("type") String type, @Param("storeId") int storeId) {
		Response<Reservation> res = new Response<>();
		try {
			Area a = areaService.findByRowAndCol(row, col);
			Store store = storeService.findById(storeId);
			Collections.sort(dates);
			Reservation r = new Reservation(a,store,dates.get(0),dates.get(dates.size()-1),type);
			Reservation reserv = reservationService.save(r);
			res.setBody(reserv);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<Reservation>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<Reservation>>(res, res.getHttpStatus());
		}
	}
}
