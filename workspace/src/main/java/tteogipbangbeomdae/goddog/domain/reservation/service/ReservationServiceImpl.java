package tteogipbangbeomdae.goddog.domain.reservation.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import tteogipbangbeomdae.goddog.domain.reservation.dto.Reservation;
import tteogipbangbeomdae.goddog.domain.reservation.mapper.ReservationMapper;
import tteogipbangbeomdae.goddog.domain.shelter.dto.Shelter;
import tteogipbangbeomdae.goddog.domain.shelter.mapper.ShelterMapper;

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
	private final ShelterMapper shelterMapper;
	
	@Override
	public int getReservationCount(int careNo) {
		if (reservationMapper.getReservationCount(careNo) != null) {
			return reservationMapper.getReservationCount(careNo);
		} else {
			return 0;
		}
	};
	
	@Override
	@Transactional
	public Reservation isReservation(Reservation reservation) {
		if(reservationMapper.getReservation(reservation) != null) {
			Reservation resultReservation = reservationMapper.getReservation(reservation);
			Reservation reservation2 = Reservation.builder()
												.memberId(resultReservation.getMemberId())
												.regdate(resultReservation.getRegdate())
												.regtime(resultReservation.getRegtime())
												.people(resultReservation.getPeople())
												.careNo(resultReservation.getCareNo())
												.shelterName(shelterMapper.selectShelter(resultReservation.getCareNo()).getName())
												.build();
			return reservation2;
		} else {
			reservationMapper.createReservation(reservation);
			Reservation resultReservation = reservationMapper.getReservation(reservation);
			Reservation reservation2 = Reservation.builder()
												.memberId(resultReservation.getMemberId())
												.regdate(resultReservation.getRegdate())
												.regtime(resultReservation.getRegtime())
												.people(resultReservation.getPeople())
												.careNo(resultReservation.getCareNo())
												.shelterName(shelterMapper.selectShelter(resultReservation.getCareNo()).getName())
												.build();
			return reservation2;
		}
	};

}
