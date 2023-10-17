package th.ac.ku.kps.eng.cpe.edu.project.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import th.ac.ku.kps.eng.cpe.edu.project.model.Store;

@Repository
public interface StoreRepository extends CrudRepository<Store, Integer> {

	@Query("select s from Store s where s.name = :name")
	public Optional<Store> findByName(@Param("name")String name);
	
	@Query("select s from Store s inner join s.user u where u.userId = :userId")
	public List<Store> findByUserId(@Param("userId")int userId);
}
