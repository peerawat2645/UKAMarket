package th.ac.ku.kps.eng.cpe.edu.project.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import th.ac.ku.kps.eng.cpe.edu.project.model.Store;
import th.ac.ku.kps.eng.cpe.edu.project.repository.StoreRepository;

@Service
public class StoreService {
	
	@Autowired
	private StoreRepository storeRepository;
	
	public Store findById(int id) {
		return storeRepository.findById(id).orElse(null);
	}
	
	public List<Store> findAll() {
		return (List<Store>) storeRepository.findAll();
	}
	
	public Store save(Store store) {
		return storeRepository.save(store);
	}
	
	public void deleteById(int id) {
		storeRepository.deleteById(id);
	}
	
	public boolean isNameUnique(String name) {
        Optional<Store> existingStore = storeRepository.findByName(name);
        return existingStore.isEmpty();
    }
	
}
