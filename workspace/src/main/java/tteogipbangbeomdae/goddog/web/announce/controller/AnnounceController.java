package tteogipbangbeomdae.goddog.web.announce.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import tteogipbangbeomdae.goddog.domain.announce.dto.Announce;
import tteogipbangbeomdae.goddog.domain.announce.service.AnnounceService;

/**
 * /announce관련 요청을 처리하는 세부 컨트롤러 구현 클래스
 * 공지사항 목록 조회
 * @author  떡잎방범대 신혜원
 * @since 2023. 9. 14.
 * @version 1.0
 */
@Controller
@RequiredArgsConstructor
@RequestMapping("/announce")
public class AnnounceController {
	private final AnnounceService announceService;
	
	/**
	 * announce 목록 불러오기
	 * @author 신혜원
	 * @param model
	 * @return
	 */
	@GetMapping("")
	public String showFQA(Model model) {
		List<Announce> list = announceService.getAnnoList();
		model.addAttribute("list", list);
		return "announce/announce";
	}
}