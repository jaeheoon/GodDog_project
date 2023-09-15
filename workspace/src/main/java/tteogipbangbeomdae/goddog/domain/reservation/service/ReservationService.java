package tteogipbangbeomdae.goddog.domain.reservation.service;

import tteogipbangbeomdae.goddog.domain.reservation.dto.Reservation;

/**
 * 봉사예약 관련 비즈니스 인터페이스
 *
 * @author  떡잎방범대 홍재헌
 * @since   2023. 9. 14.
 * @version 1.0
 */
public interface ReservationService {
	
	/** 봉사 예약 등록 */
	public void isReservation(Reservation reservation);
	
	/** CareNo로 봉사 예약 총 인원 수 검색 
	 * @return */
	public int getReservation(int careNo);

}