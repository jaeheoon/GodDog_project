package tteogipbangbeomdae.goddog.web.dog.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import tteogipbangbeomdae.goddog.domain.dog.dto.Dog;
import tteogipbangbeomdae.goddog.domain.dog.service.DogService;

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