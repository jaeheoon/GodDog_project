package tteogipbangbeomdae.goddog.domain.reservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 * 
 * 봉사예약 신청과 봉사 체크여부를 담기 위한 bean객체
 *
 * @author  떡잎방범대 홍재헌
 * @since   2023. 09. 14.
 * @version 1.0
 */
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
@Builder
public class Reservation{

   private String memberId;		//회원 ID
   private int careNo;			//보호소 번호
   private String shelterName;	//보호소 이름
   private String regdate;		//봉사 예약 날짜
   private String regtime;		//봉사 예약 시간
   private int people;			//봉사 인원
   private String status;		//봉사 승인 상태(true, false, wait)
   
}