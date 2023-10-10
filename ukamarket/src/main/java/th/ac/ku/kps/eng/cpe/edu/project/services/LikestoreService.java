package th.ac.ku.kps.eng.cpe.edu.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import th.ac.ku.kps.eng.cpe.edu.project.model.Likestore;
import th.ac.ku.kps.eng.cpe.edu.project.repository.LikestoreRepository;

@Service
public class LikestoreService {

	@Autowired
	private LikestoreRepository likestoreRepository;
	
	public Likestore findById(int id) {
		return likestoreRepository.findById(id).orElse(null);
	}
	
	public List<Likestore> findAll() {
		return (List<Likestore>) likestoreRepository.findAll();
	}
	
	public Likestore save(Likestore likestore) {
		return likestoreRepository.save(likestore);
	}
	
	public void deleteById(int id) {
		likestoreRepository.deleteById(id);
	}
	
	public Likestore findByStoreIdAndUserId(int storeId,int userId) {
		return likestoreRepository.findByStoreIdAndUserId(storeId,userId);
	}
	
	public List<Likestore> findByUserId(int userId) {
		return likestoreRepository.findByUserId(userId);
	}
}
