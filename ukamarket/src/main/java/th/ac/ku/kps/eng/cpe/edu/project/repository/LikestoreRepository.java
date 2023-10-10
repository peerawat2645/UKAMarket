package th.ac.ku.kps.eng.cpe.edu.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import th.ac.ku.kps.eng.cpe.edu.project.model.Likestore;

@Repository
public interface LikestoreRepository extends CrudRepository<Likestore, Integer> {

	@Query("from Likestore ls inner join ls.store s inner join ls.user u where s.storeId =:storeId and u.userId =:userId")
	public Likestore findByStoreIdAndUserId(@Param("storeId") int storeId, @Param("userId") int userId);
	
	@Query("from Likestore ls inner join ls.user u where u.userId =:userId")
	public List<Likestore> findByUserId(@Param("userId") int userId);
}
