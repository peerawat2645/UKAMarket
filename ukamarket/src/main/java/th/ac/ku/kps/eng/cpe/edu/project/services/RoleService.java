package th.ac.ku.kps.eng.cpe.edu.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import th.ac.ku.kps.eng.cpe.edu.project.model.Role;
import th.ac.ku.kps.eng.cpe.edu.project.repository.RoleRepository;

@Service
public class RoleService {

	@Autowired
	private RoleRepository roleRepository;
	
	public Role findById(int id) {
		return roleRepository.findById(id).orElse(null);
	}
	
	public List<Role> findAll() {
		return (List<Role>) roleRepository.findAll();
	}
	
	public Role save(Role role) {
		return roleRepository.save(role);
	}
	
	public void deleteById(int id) {
		roleRepository.deleteById(id);
	}
}
