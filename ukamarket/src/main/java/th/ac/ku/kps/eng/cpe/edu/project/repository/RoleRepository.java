package th.ac.ku.kps.eng.cpe.edu.project.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import th.ac.ku.kps.eng.cpe.edu.project.model.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Integer>{

}
