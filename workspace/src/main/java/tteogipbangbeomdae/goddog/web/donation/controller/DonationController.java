package tteogipbangbeomdae.goddog.web.donation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * /donation관련 요청을 처리하는 세부 컨트롤러 구현 클래스
 *
 * @author  떡잎방범대 조영호
 * @since   2023. 9. 10.
 * @version 1.0
 */
@Controller
@RequestMapping("/donation")
public class DonationController {
	
	@GetMapping("")
	public String showDog(Model model) {		
		return "donation/donation";
	}
	
	@GetMapping("/method")
	public String selectMethod(Model model) {		
		return "donation/payment_method";
	}
	
	@GetMapping("/result")
	public String viewResult(Model model) {		
		return "donation/result";
	}
	
}