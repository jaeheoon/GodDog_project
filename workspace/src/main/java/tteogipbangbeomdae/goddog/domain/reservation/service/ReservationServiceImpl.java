package tteogipbangbeomdae.goddog.domain.reservation.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import tteogipbangbeomdae.goddog.domain.reservation.dto.Reservation;
import tteogipbangbeomdae.goddog.domain.reservation.mapper.ReservationMapper;

/**
 * 봉사예약 관련 비즈니스 로직 처리 및 트랜잭션 관리 구현체
 * 
 * @author  떡잎방범대 홍재헌
 * @since   2023. 9. 14.
 * @version 1.0
 */
@RequiredArgsConstructor
@Service
public class ReservationServiceImpl implements ReservationService{
	
	private final ReservationMapper reservationMapper;
	
	/** 봉사 예약 등록 인터페이스 구현체 */
	@Override
	@Transactional
	public void isReservation(Reservation reservation) {
		reservationMapper.createReservation(reservation);
	}
	
	@Override
	public int getReservation(int careNo) {
		return reservationMapper.getReservationCount(careNo);
	};

}
