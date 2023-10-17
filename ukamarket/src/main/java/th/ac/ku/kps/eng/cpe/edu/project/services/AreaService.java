package th.ac.ku.kps.eng.cpe.edu.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import th.ac.ku.kps.eng.cpe.edu.project.model.Area;
import th.ac.ku.kps.eng.cpe.edu.project.repository.AreaRepository;

@Service
public class AreaService {
	@Autowired
	private AreaRepository areaRepository;
	
	public Area findById(int id) {
		return areaRepository.findById(id).orElse(null);
	}
	
	public List<Area> findAll() {
		return (List<Area>) areaRepository.findAll();
	}
	
	public Area save(Area reservation) {
		return areaRepository.save(reservation);
	}
	
	public void deleteById(int id) {
		areaRepository.deleteById(id);
	}
	
	public Area findByRowAndCol(int row,int col) {
		return areaRepository.findByRowAndCol(row, col);
	}
	
	public List<Area> findNotInAreaIdList(List<Integer> areaIds){
		return areaRepository.findNotInAreaIdList(areaIds);
	}
}
