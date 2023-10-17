package th.ac.ku.kps.eng.cpe.edu.project.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import th.ac.ku.kps.eng.cpe.edu.project.model.Area;
import th.ac.ku.kps.eng.cpe.edu.project.model.Reservation;
import th.ac.ku.kps.eng.cpe.edu.project.repository.ReservationRepository;

@Service
public class ReservationService {
	
	@Autowired
	private ReservationRepository reservationRepository;
	
	@Autowired
	private AreaService areaService;
	
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
	
	public List<Area> findByDate(Date date) {
		List<Area> areas = reservationRepository.findByCurrentDate(date);
		List<Integer> areaIds = new ArrayList<Integer>();
		for(Area a : areas) {
			areaIds.add(a.getAreaId());
		}
		List<Area> areaList = new ArrayList<Area>();
		if(areas.size() > 0)
			areaList = areaService.findNotInAreaIdList(areaIds);
		else
			areaList = areaService.findAll();
		return areaList;
	}
	
	public List<Reservation> findByAreaId(int areaId){
		return reservationRepository.findByAreaId(areaId);
	}
	
	public List<Area> findByNotInCurrentDate(){
		Date currentDate = new Date();
		List<Area> areas = reservationRepository.findByCurrentDate(currentDate);
		List<Integer> areaIds = new ArrayList<Integer>();
		for(Area a : areas) {
			areaIds.add(a.getAreaId());
		}
		List<Area> areaList = new ArrayList<Area>();
		if(areas.size() > 0)
			areaList = areaService.findNotInAreaIdList(areaIds);
		else
			areaList = areaService.findAll();
		return areaList;
	}
	
	public List<Area> findAllByCurrentDate(){
		Date currentDate = new Date();
		return reservationRepository.findByStartDate(currentDate);
	}
}
