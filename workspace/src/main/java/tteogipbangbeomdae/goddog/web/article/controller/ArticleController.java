package tteogipbangbeomdae.goddog.web.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * /article요청에 대한 세부 컨트롤러 요청된 url에 따라 해당하는 DB작업을 이루고 템플릿으로 연동시켜줌.
 *
 * @author  떡잎방범대 조영호
 * @since   2023. 09. 10.
 * @version 1.0
 */
@Controller
@RequestMapping("/article")
public class ArticleController {
	
	/**
	 * @author 떡잎방범대 조영호
	 * @param 뷰에담아줄 모델
	 * @since 2023. 09. 10.
	 * @version 1.0
	 * @return /volunteer요청에 해당하는 활동과 뷰 반환
	 */
	@GetMapping("/volunteer/board")
	public String viewVolunteerBoard(Model model) {
		return "article/volunteer_board";
	}
	
	@GetMapping("/adoption/board")
	public String viewAdoptionBoard(Model model) {
		return "article/adoption_board";
	}
//	==============================================Create=========================================================================
	
	@GetMapping("/volunteer/create")
	public String createVolunteerArticle(Model model) {
		return "article/volunteer_create";
	}
	
	@GetMapping("/adoption/create")
	public String createAdoptionArticle(Model model) {
		return "article/adoption_create";
	}
	
	@PostMapping("/volunteer/create")
	public String createVolunteerArticleResult(Model model) {
		return "redirect:volunteer_board";
	}
	
	@PostMapping("/adoption/create")
	public String createAdoptionArticleResult(Model model) {
		return "redirect:adoption_board";
	}
	
// ==============================================Read===========================================================================
	@GetMapping("/volunteer/read")
	public String readVolunteerArticle(Model model) {
		return "article/volunteer_read";
	}
	
	@GetMapping("/adoption/read")
	public String readAdoptionArticle(Model model) {
		return "article/adoption_read";
	}

// =============================================Update=========================================================================
	@GetMapping("/volunteer/correct")
	public String correctVolunteerArticle(Model model) {
		return "article/volunteer_create";
	}
	
	@GetMapping("/adoption/correct")
	public String correctAdoptionArticle(Model model) {
		return "article/adoption_create";
	}
	
	@PostMapping("/volunteer/correct")
	public String correctAdoptionArticleResult(Model model) {
		return "redirect:volunteer_board";
	}
	
	@PostMapping("/adoption/correct")
	public String correctVolunteerArticleResult(Model model) {
		return "redirect:adoption_board";
	}
	
//============================================Delete===========================================================================
	@GetMapping("/volunteer/delete")
	public String deleteVolunteerArticle(Model model) {
		return "redirect:volunteer_board";
	}
	
	@GetMapping("/adoption/delete")
	public String deletetAdoptionArticle(Model model) {
		return "redirect:adoption_board";
	}
}