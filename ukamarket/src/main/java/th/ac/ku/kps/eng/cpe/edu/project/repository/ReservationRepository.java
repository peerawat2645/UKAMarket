package th.ac.ku.kps.eng.cpe.edu.project.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import th.ac.ku.kps.eng.cpe.edu.project.model.Reservation;

@Repository
public interface ReservationRepository extends CrudRepository<Reservation, Integer>{

	@Query("from Reservation r inner join r.store s where s.storeId =:storeId and r.endDate >=:currentDate")
	public List<Reservation> findByStoreIdAndCurrentDate(@Param("storeId")int storeId,@Param("currentDate")Date currentDate);
}
