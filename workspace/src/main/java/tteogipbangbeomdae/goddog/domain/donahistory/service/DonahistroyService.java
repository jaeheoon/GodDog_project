package tteogipbangbeomdae.goddog.domain.donahistory.service;

import java.util.List;

import tteogipbangbeomdae.goddog.domain.donahistory.dto.Donahistory;

/**
 * 
 * 후원내역 관련 비즈니스 로직 처리 및 트랜잭션 관리 명세
 *
 * @author  떡잎방범대 조영호
 * @since   2023. 09. 12.
 * @version 1.0
 */
public interface DonahistroyService {
	
	//멤버 아이디로 후원내역들 찾아오기
	public List<Donahistory> getAllDonaHistory(String memberId); 

}
