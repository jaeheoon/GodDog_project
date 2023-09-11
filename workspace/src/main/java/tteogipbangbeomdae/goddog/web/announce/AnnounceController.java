package tteogipbangbeomdae.goddog.web.announce;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * /announce관련 요청을 처리하는 세부 컨트롤러 구현 클래스
 *
 * @author  떡잎방범대 조영호
 * @since   2023. 9. 10.
 * @version 1.0
 */
@Controller
@RequestMapping("/announce")
public class AnnounceController {
	
	@GetMapping("")
	public String showDog(Model model) {		
		return "announce/announce";
	}
	
}