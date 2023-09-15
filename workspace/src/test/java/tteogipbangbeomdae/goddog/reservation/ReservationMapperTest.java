package tteogipbangbeomdae.goddog.reservation;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;
import tteogipbangbeomdae.goddog.domain.reservation.dto.Reservation;
import tteogipbangbeomdae.goddog.domain.reservation.mapper.ReservationMapper;

@SpringBootTest
@Slf4j
public class ReservationMapperTest {
	
	@Autowired
	private ReservationMapper reservationMapper;
	
	@Test
	@Disabled
	@DisplayName("봉사 내역 등록")
	public void createReservationTest() {
		Reservation reservation = Reservation.builder()
											.memberId("bangry")
											.careNo(1)
											.regtime("09:00~13:00")
											.regdate("2023-09-16")
											.people(4)
											.build();
		reservationMapper.createReservation(reservation);
	}
	
	@Test
	@DisplayName("보호소별 예약 인원")
	public void getReservationCount() {
		log.info("인원 수 : " + reservationMapper.getReservationCount(1));
	}
	
}
