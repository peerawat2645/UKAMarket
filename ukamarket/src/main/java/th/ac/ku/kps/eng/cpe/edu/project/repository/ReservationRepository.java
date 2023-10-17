package th.ac.ku.kps.eng.cpe.edu.project.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import th.ac.ku.kps.eng.cpe.edu.project.model.Area;
import th.ac.ku.kps.eng.cpe.edu.project.model.Reservation;

@Repository
public interface ReservationRepository extends CrudRepository<Reservation, Integer>{

	@Query("from Reservation r inner join r.store s where s.storeId =:storeId and r.endDate >=:currentDate")
	public List<Reservation> findByStoreIdAndCurrentDate(@Param("storeId")int storeId,@Param("currentDate")Date currentDate);
	
	@Query("from Reservation r inner join r.area a where a.areaId =:areaId order by r.startDate")
	public List<Reservation> findByAreaId(@Param("areaId")int areaId);
	
	@Query("select a from Reservation r inner join r.area a where r.endDate >=:currentDate")
	public List<Area> findByCurrentDate(@Param("currentDate")Date currentDate);
	
	@Query("select distinct a from Reservation r inner join r.area a where r.startDate <=:currentDate and r.endDate >:currentDate")
	public List<Area> findByStartDate(@Param("currentDate")Date currentDate);
}
