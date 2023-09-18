package tteogipbangbeomdae.goddog.domain.reservation.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import tteogipbangbeomdae.goddog.domain.reservation.dto.Reservation;

/**
 * 
 * 봉사 관련 DB작업을 실행하는 Mapper인터페이스 xml파일에 해당하는 메소드를 맵핑하여 DB작업 수행
 *
 * @author  떡잎방범대 홍재헌
 * @since  	2023. 09. 14.
 * @version 버전
 */
@Mapper
public interface ReservationMapper {
	
	//로그인한 회원 아이디에 해당하는 봉사활동내역 등록하기
	public void createReservation(Reservation reservation);
	
	//보호소 봉사 예약 인원 불러오기
	public Integer getReservationCount(@Param("careNo") Integer careNo);
	
	//날짜와 아이디로 보호소 예약 불러오기
	public Reservation getReservation(Reservation reservation);
	
}
