package th.ac.ku.kps.eng.cpe.edu.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import th.ac.ku.kps.eng.cpe.edu.project.model.Area;

@Repository
public interface AreaRepository extends CrudRepository<Area, Integer> {
	@Query("from Area a where a.row =:row and a.col =:col")
	public Area findByRowAndCol(@Param("row") int row, @Param("col") int col);
	
	@Query("FROM Area a WHERE a.areaId NOT IN (:areaIdList)")
	public List<Area> findNotInAreaIdList(@Param("areaIdList")List<Integer> areaIdList);
}
