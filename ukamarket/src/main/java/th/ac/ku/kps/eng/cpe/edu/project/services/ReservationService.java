package th.ac.ku.kps.eng.cpe.edu.project.services;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import th.ac.ku.kps.eng.cpe.edu.project.model.Reservation;
import th.ac.ku.kps.eng.cpe.edu.project.repository.ReservationRepository;

@Service
public class ReservationService {
	
	@Autowired
	private ReservationRepository reservationRepository;
	
	public Reservation findById(int id) {
		return reservationRepository.findById(id).orElse(null);
	}
	
	public List<Reservation> findAll() {
		return (List<Reservation>) reservationRepository.findAll();
	}
	
	public Reservation save(Reservation reservation) {
		return reservationRepository.save(reservation);
	}
	
	public void deleteById(int id) {
		reservationRepository.deleteById(id);
	}
	
	public Reservation findByStoreIdAndCurrentDate(int storeId) {
		Date currentDate = new Date();
		return reservationRepository.findByStoreIdAndCurrentDate(storeId, currentDate).get(0);
	}
}
