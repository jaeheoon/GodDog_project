package tteogipbangbeomdae.goddog.web.dog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * /dog관련 요청을 처리하는 세부 컨트롤러 구현 클래스
 *
 * @author  떡잎방범대 홍재헌
 * @since   2023. 9. 10.
 * @version 1.0
 */
@Controller
@RequestMapping("/dog")
public class DogController {
	
	@GetMapping("")
	public String showDog(Model model) {
		return "dog/dog_list";
	}
	
	@GetMapping("/profile")
	public String showDogProfile(Model model) {		
		return "dog/dog_profile";
	}
}