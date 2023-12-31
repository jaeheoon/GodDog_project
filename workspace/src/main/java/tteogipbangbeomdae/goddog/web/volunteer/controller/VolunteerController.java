package tteogipbangbeomdae.goddog.web.volunteer.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import tteogipbangbeomdae.goddog.domain.member.dto.Member;
import tteogipbangbeomdae.goddog.domain.reservation.dto.Reservation;
import tteogipbangbeomdae.goddog.domain.reservation.service.ReservationService;
import tteogipbangbeomdae.goddog.domain.shelter.dto.Shelter;
import tteogipbangbeomdae.goddog.domain.shelter.service.ShelterService;

/**
 * 
 * /volunteer요청에 대한 세부 컨트롤러 요청된 url에 따라 해당하는 DB작업을 이루고 템플릿으로 연동시켜줌.
 *
 * @author  떡잎방범대 홍재헌, 조영호(봉사예약수정, 삭제, 상세보기 담당)
 * @since   2023. 09. 18.
 * @version 1.0
 */
@Controller
@RequestMapping("/volunteer")
@RequiredArgsConstructor
public class VolunteerController {
	
	private final ReservationService reservationService;

	private final ShelterService shelterService;
	
	/**
	 * @author 떡잎방범대 홍재헌
	 * @param 봉사예약 컨트롤러
	 * @since 2023. 09. 18.
	 * @version 1.0
	 * @return /volunteer요청에 해당하는 활동과 뷰 반환
	 */
	@GetMapping("")
	public String intro(Model model) {
		return "volunteer/volunteer";
	}
	
	@GetMapping("/agreement")
	public String viewAgreement(Model model) {
		return "volunteer/agreement";
	}
	
	/**
	 * DB에 저장된 쉘터 정보 받아와서 model에 저장 
	 * @author 홍재헌
	 * @since 2023. 09. 13.
	 * @return 날짜 선택 페이지로 반환
	 */
	@GetMapping("/map")
	public String viewMap(Model model) {
		List<Shelter> Shelterlist = shelterService.findAllShelter();
		model.addAttribute("Shelterlist", Shelterlist);
		return "volunteer/map";
	}
	
	/**
	 * @author 홍재헌, 조영호
	 * @since 2023. 09. 13.
	 * @param 사용자가 선택한 보호소 번호 받아와서 데이터 처리
	 * @return 날짜 선택 페이지로 반환
	 */
	@GetMapping("/calender")
	public String viewCalender(@RequestParam("careNo") int careNo, 
							   @RequestParam(value = "reservationNo", required = false) String reservationNo,
							   Model model,HttpSession session) {
		Shelter shelter = shelterService.clickShelter(careNo);
		int maxCount = reservationService.getReservationCount(careNo);
		if(reservationNo != null) {
			int reservationNumber = Integer.parseInt(reservationNo);
			Reservation updateReservation = reservationService.getReservaionInfo(reservationNumber);			
			session.setAttribute("updateReservation", updateReservation);
		}
		session.setAttribute("careNo", careNo);
		session.setAttribute("shelter", shelter);
		session.setAttribute("maxCount", maxCount);
		return "volunteer/calender";
	}
	
	/**
	 * @author 홍재헌D
	 * @since 2023. 09. 13.
	 * @param 사용자가 선택한 날짜, 시간 받아와서 포맷 처리
	 * @return choice 페이지로 반환
	 */
	@GetMapping("/choice")
	public String viewChoice(@RequestParam("regdate") String regdate, Model model, HttpSession session) {
		SimpleDateFormat inputFormat = new SimpleDateFormat("yyyyMMdd");
	    SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
	    Shelter shelter = (Shelter)session.getAttribute("shelter");
	    int careNo = shelter.getCareNo();
	    try {
	        Date date = inputFormat.parse(regdate); // 입력 날짜를 파싱
	        String formattedDate = outputFormat.format(date); // 원하는 형식으로 포맷
	        session.setAttribute("regdate", formattedDate);
	        int allPeople = reservationService.getAllpeople(careNo, formattedDate);
	        model.addAttribute("allPeople", allPeople);
	    } catch (ParseException e) {
	        // 파싱 실패 시 예외 처리
	        e.printStackTrace();
	    }
		return "volunteer/choice";
	}
	
	/**
	 * @author 홍재헌
	 * @since 2023. 09. 14.
	 * @param 사용자가 선택한 캘린더, 맵, 날짜, 시간 받아와서 데이터 처리
	 * @return 결과페이지 반환
	 */
	@GetMapping("/result/{id}/{regdate}/{regtime}")
	public String viewResult(@PathVariable("id") String id, @PathVariable("regdate") String regdate, 
							 @PathVariable("regtime") String regtime, Model model, HttpSession session) {
		int careNo = (int)session.getAttribute("careNo");
		Reservation reservation = Reservation.builder()
				.memberId(id)
				.regdate(regdate)
				.regtime(regtime)
				.careNo(careNo)
				.build();
		Reservation resultReservation = reservationService.isReservation(reservation);
		Shelter resultShelter = shelterService.clickShelter(careNo);
		model.addAttribute("resultReservation", resultReservation);
		model.addAttribute("resultShelter", resultShelter);
		session.removeAttribute("careNo");
		session.removeAttribute("shelter");
		session.removeAttribute("maxCount");
		session.removeAttribute("updateReservation");
		return "volunteer/result";
	}
	
	/**
	 * @author 홍재헌
	 * @since 2023. 09. 16.
	 * @param 봉사 예약 정보
	 * @return 사용자가 선택한 캘린더, 맵, 날짜, 시간 Post
	 */
	@PostMapping("/result")
	public String viewResultProsses(@ModelAttribute Reservation resultReservation, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model, HttpSession session) {
		Member member = (Member)session.getAttribute("loginMember");
		int careNo = (int)session.getAttribute("careNo");
		String memberId = member.getMemberId();
		String shelterName = resultReservation.getShelterName();
		int people = resultReservation.getPeople();
		String regTime = resultReservation.getRegtime();
		String regDate = resultReservation.getRegdate().replace('.', '-');
		Reservation setReservation;
		// 데이터 검증 실패 시 봉사예약 첫 화면으로 Forward
		if (bindingResult.hasErrors()) {
			return "volunteer/map";
		}
		if(session.getAttribute("updateReservation") != null) {
			Reservation updateReservation = (Reservation)session.getAttribute("updateReservation");
			updateReservation.setRegdate(regDate);
			updateReservation.setRegtime(regTime);
			updateReservation.setPeople(people);
			Reservation updatedReservation = reservationService.updateReservationInfo(updateReservation);
			return "redirect:/volunteer/result/" + updatedReservation.getMemberId() + "/" + updatedReservation.getRegdate() + "/" + updatedReservation.getRegtime();
		} else {
			setReservation = Reservation.builder()
					.memberId(memberId)
					.careNo(careNo)
					.shelterName(shelterName)
					.people(people)
					.regdate(regDate)
					.regtime(regTime)
					.build();		
			reservationService.isReservation(setReservation);
			redirectAttributes.addFlashAttribute("status", true);
			return "redirect:/volunteer/result/" + setReservation.getMemberId() + "/" + setReservation.getRegdate() + "/" + setReservation.getRegtime();
		}
	}
	
	/**
	 * 봉사내역 상세보기
	 * @param reservationNo 선택된 내역번호
	 * @param model
	 * @return 상세보기페이지 이동
	 */
	@GetMapping("/detail/{reservationNo}")
	public String viewDetail(@PathVariable("reservationNo")int reservationNo, Model model) {
		Reservation reservation = reservationService.getReservation(reservationNo);

		model.addAttribute("reservation", reservation);
		return "volunteer/cancel_detail";
	}
	
	/**
	 * 삭제할 내역번호를 받아 봉사내역삭제
	 * @param reservationNo 내역번호
	 * @param model
	 * @return 삭제후 전페이지로 이동
	 */
	@GetMapping("/cancel/{reservationNo}")
	public String deleteReservation(@PathVariable("reservationNo")int reservationNo, Model model) {
			reservationService.deleteReservation(reservationNo);
			
		return "redirect:/member/mypage";
	}
	
	/**
	 * @author 조영호
	 * @since 2023. 09. 22.
	 * @param formattedDate 자바스크립트에서 넘어온 동적 날짜들
	 * @return 날짜에 해당하는 총 봉사인원 수 반환
	 */
	@GetMapping("/calender/people/{formattedDate}/{careNo}")
	@ResponseBody
	public Map<String,Object> sendPeopleCount(@PathVariable("formattedDate") String formattedDate,@PathVariable("careNo") int careNo,Model model) {
		int limitCount = reservationService.getMaxCount(careNo);
		int peopleCount = reservationService.getAllpeople(careNo, formattedDate);
		String closeday = reservationService.getClosedayByCareNo(careNo);
	    Map<String, Object> responseMap = new HashMap<>();
	    responseMap.put("limitCount", limitCount);
	    responseMap.put("peopleCount", peopleCount);
	    responseMap.put("closeday", closeday);
		return responseMap;
	}
	
}

