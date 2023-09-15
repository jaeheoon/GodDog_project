package tteogipbangbeomdae.goddog.domain.donahistory.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import tteogipbangbeomdae.goddog.domain.donahistory.dto.Donahistory;
import tteogipbangbeomdae.goddog.domain.donahistory.mapper.DonahistoryMapper;

/**
 * 
 * 후원내역 관련 비즈니스 로직 처리 및 트랜잭션 관리 명세 구현체
 *
 * @author  떡잎방범대 조영호
 * @since   2023. 09. 12.
 * @version 1.0
 */
@Service
@RequiredArgsConstructor
public class DonahistoryServiceImpl implements DonahistroyService {

	private final DonahistoryMapper donahistoryMapper;
	
	@Override
	public List<Donahistory> getAllDonaHistory(String memberId) {
		List<Donahistory> allList = null;
		
		allList = donahistoryMapper.findAllById(memberId);
		
		return allList;
	}

}
