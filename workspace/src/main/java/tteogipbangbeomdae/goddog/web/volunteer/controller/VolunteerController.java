package tteogipbangbeomdae.goddog.web.volunteer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


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
public class VolunteerController {
	
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
	public String viewCalender(Model model) {
		return "volunteer/calender";
	}
	
	@GetMapping("/choice")
	public String viewChoice(Model model) {
		return "volunteer/choice";
	}
	
	@GetMapping("/result")
	public String viewResult(Model model) {
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

