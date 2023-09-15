package tteogipbangbeomdae.goddog.domain.donahistory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import tteogipbangbeomdae.goddog.domain.donahistory.dto.Donahistory;

/**
 * 
 * 도네이션 관련 DB작업을 실행하는 Mapper인터페이스 xml파일에 해당하는 메소드를 맵핑하여 DB작업 수행
 *
 * @author  떡잎방범대 조영호
 * @since  	2023. 09. 12.
 * @version 버전
 */
@Mapper
public interface DonahistoryMapper {
	
	public List<Donahistory> findAllById(String memberId);
	
}
