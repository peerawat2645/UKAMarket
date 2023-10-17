package th.ac.ku.kps.eng.cpe.edu.project.api.service;

import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.time.Month;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
import th.ac.ku.kps.eng.cpe.edu.project.model.Reservation;
import th.ac.ku.kps.eng.cpe.edu.project.model.Store;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.LikestoreDTO;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.ReservationCreateDTO;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.ReservationDTO;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.ReservationDescriptionRequestDTO;
import th.ac.ku.kps.eng.cpe.edu.project.model.DTO.ReservationRequestDTO;
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
	
	@GetMapping("/")
	public ResponseEntity<Response<List<Area>>> getAllOpen() {
		Response<List<Area>> res = new Response<>();
		try {
			List<Area> areas = reservationService.findAllByCurrentDate();

			res.setBody(areas);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<List<Area>>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<List<Area>>>(res, res.getHttpStatus());
		}
	}

	@GetMapping("/choice/store/{id}/type/{type}") // dropdown month
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

	@GetMapping("/choice/") // dropdown month
	public ResponseEntity<Response<List<Area>>> getStore() {
		Response<List<Area>> res = new Response<>();
		try {
			List<Area> areas = reservationService.findByNotInCurrentDate();
			res.setBody(areas);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<List<Area>>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<List<Area>>>(res, res.getHttpStatus());
		}
	}

	@GetMapping("/choice/row/{row}/col/{col}") // dropdown month
	public ResponseEntity<Response<String>> checkLock(@PathVariable("row") int row, @PathVariable("col") int col) {
		Response<String> res = new Response<>();
		try {
			Area area = areaService.findByRowAndCol(row, col);
			reservationService.findByAreaId(area.getAreaId()).get(0);
			res.setBody("success");
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody("fail");
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<String>>(res, res.getHttpStatus());
		}
	}

	public static int getMonthInt(String monthString) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		calendar.set(Calendar.MONTH, Month.valueOf(monthString.toUpperCase()).getValue() - 1);
		return calendar.get(Calendar.MONTH);
	}

	public static Date getFirstDayOfMonth(int month) {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.MONTH, month);
		calendar.set(Calendar.DAY_OF_MONTH, 1);
		return calendar.getTime();
	}

	@GetMapping("/choice/month/{month}") // dropdown month
	public ResponseEntity<Response<List<Area>>> checkLock(@PathVariable("month") String month) {
		Response<List<Area>> res = new Response<>();
		try {
			// Convert month string to Month enum
			int monthInt = getMonthInt(month);

			// Get the first day of the month
			Date firstDayOfMonth = getFirstDayOfMonth(monthInt);
			List<Area> areas = reservationService.findByDate(firstDayOfMonth);
			res.setBody(areas);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<List<Area>>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<List<Area>>>(res, res.getHttpStatus());
		}
	}

	@GetMapping("/description") // checkinfo
	public ResponseEntity<Response<ReservationCreateDTO>> getDate(@Valid @RequestBody ReservationDescriptionRequestDTO req) {
		Response<ReservationCreateDTO> res = new Response<>();
		try {
			ReservationCreateDTO reserv = new ReservationCreateDTO();
			if (req.getType().equals("month")) {
				reserv.setDates(getDayOfMonth(req.getMonth()));
			} else {
				List<Date> dates = new ArrayList<Date>();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date = dateFormat.parse(req.getDate());
				dates.add(date);
				reserv.setDates(dates);
			}
			Store store = storeService.findById(req.getStoreId());
			reserv.setStore(store);
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
	public ResponseEntity<Response<Reservation>> getStoreData(@Valid @RequestBody ReservationRequestDTO req) {
		Response<Reservation> res = new Response<>();
		try {
			Area a = areaService.findByRowAndCol(req.getRow(), req.getCol());
			Store store = storeService.findById(req.getStoreId());
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date sDate = dateFormat.parse(req.getStartDate());
			Date eDate = dateFormat.parse(req.getStartDate());
			sDate.setHours(0);
			sDate.setMinutes(0);
			sDate.setSeconds(0);
			eDate.setHours(23);
			eDate.setMinutes(59);
			eDate.setSeconds(59);

			Reservation r = new Reservation(a, store, sDate, eDate, req.getType());
			Reservation reserv = reservationService.save(r);
			res.setBody(reserv);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<Reservation>>(res, res.getHttpStatus());
		} catch (

		Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<Reservation>>(res, res.getHttpStatus());
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
	
	@GetMapping("/row/{row}/col/{col}")
	public ResponseEntity<Response<LikestoreDTO>> getDataFromRowAndCol(@PathVariable("row")int row ,@PathVariable("col")int col) {
		Response<LikestoreDTO> res = new Response<>();
		try {
			Area area = areaService.findByRowAndCol(row, col);
			Reservation reservation = reservationService.findByAreaId(area.getAreaId()).get(0);
			Date startDate = reservation.getStartDate();
			Date endDate = reservation.getEndDate();
			Date open1 = getDateMonOrWed(startDate, endDate);
			Date open2 = getDateMonOrWed(getUTC(open1), endDate);
			LikestoreDTO lsd = new LikestoreDTO(reservation.getStore().getName(), open1, open2);
			res.setBody(lsd);
			res.setHttpStatus(HttpStatus.OK);
			return new ResponseEntity<Response<LikestoreDTO>>(res, res.getHttpStatus());
		} catch (Exception ex) {
			res.setBody(null);
			res.setHttpStatus(HttpStatus.NOT_FOUND);
			return new ResponseEntity<Response<LikestoreDTO>>(res, res.getHttpStatus());
		}
	}
}
