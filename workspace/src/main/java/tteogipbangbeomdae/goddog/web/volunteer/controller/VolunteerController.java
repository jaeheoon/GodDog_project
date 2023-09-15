package tteogipbangbeomdae.goddog.web.volunteer.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
 * @author  떡잎방범대 조영호
 * @since   2023. 09. 10.
 * @version 1.0
 */
@Controller
@RequestMapping("/volunteer")
@RequiredArgsConstructor
@Slf4j
public class VolunteerController {
	
	private final ReservationService reservationService;
	private final ShelterService shelterService;
	
	/**
	 * @author 떡잎방범대 조영호
	 * @param 뷰에담아줄 모델
	 * @since 2023. 09. 10.
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
	
	@GetMapping("/map")
	public String viewMap(Model model) {
		return "volunteer/map";
	}
	
	@GetMapping("/calender")
	public String viewCalender(@RequestParam("careNo") int careNo, Model model,HttpSession session) {
		Shelter shelter = shelterService.clickShelter(careNo);
		int maxCount = reservationService.getReservation(careNo);
		session.setAttribute("shelter", shelter);
		session.setAttribute("maxCount", maxCount);
		return "volunteer/calender";
	}
	
	@GetMapping("/choice")
	public String viewChoice(@RequestParam("regdate") String regdate, Model model, HttpSession session) {
		SimpleDateFormat inputFormat = new SimpleDateFormat("yyyyMMdd");
	    SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy.MM.dd");
	    
	    try {
	        Date date = inputFormat.parse(regdate); // 입력 날짜를 파싱
	        String formattedDate = outputFormat.format(date); // 원하는 형식으로 포맷
	        session.setAttribute("regdate", formattedDate);
	    } catch (ParseException e) {
	        // 파싱 실패 시 예외 처리
	        e.printStackTrace();
	    }
		return "volunteer/choice";
	}
	
	@GetMapping("/result")
	public String viewResult(@RequestParam("regtime") String regtime, @RequestParam("people") int people, Model model, HttpSession session) {
		
		Member member = (Member)session.getAttribute("loginMember");
		String regdate = (String)session.getAttribute("regdate");
		Shelter shelter = (Shelter)session.getAttribute("shelter");
		int careNo = shelter.getCareNo();
		
//		String memberId = member.getMemberId();
//		model.addAttribute("memberId", memberId);
		String memberId = member.getMemberId();
	
//		boolean reservation = reservationService.isReservation(regtime, regdate, people, memberId, careNo);
		
		
//		model.addAttribute("reservation", reservation);
		
		return "volunteer/result";
	}
	
	@PostMapping("/result")
	public String viewResultProsses(@ModelAttribute Reservation reservation, Model model, HttpSession session) {
		log.info(reservation.toString());
		
		return "volunteer/result";
	}
	
	@GetMapping("/list")
	public String viewList(Model model) {
		return "volunteer/list";
	}
	
	@GetMapping("/detail")
	public String viewDetail(Model model) {
		return "volunteer/cancel_detail";
	}
	
}

