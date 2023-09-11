package tteogipbangbeomdae.goddog.web.dog.controller;

import java.io.BufferedReader;
import java.io.Console;
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
@Slf4j
public class DogController {
	
	@Autowired
	private DogService dogService;
	
	@GetMapping("")
	public String showDog(Model model) {
		return "dog/dog_list";
	}
	
	@GetMapping("/test")
	public String testDog(Model model) {
		StringBuilder sb = new StringBuilder();
	     
	       try {
	    	   StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic"); /*URL*/
	           urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=akTdA6bI7qrFaVDNLP%2BSmmO0iqjbLVr6ff3e3zCcvKWVCtW%2B%2BmG2WQwnFVcsSjYMJPPRn54XgDA66FM2XgO1vQ%3D%3D"); /*Service Key*/
	           urlBuilder.append("&" + URLEncoder.encode("upkind","UTF-8") + "=" + URLEncoder.encode("417000", "UTF-8")); /*한 페이지 결과 수(1,000 이하)*/
	           urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*xml(기본값) 또는 json*/
	           URL url = new URL(urlBuilder.toString());
	           HttpURLConnection urlConnection = (HttpURLConnection)url.openConnection();
	           urlConnection.setRequestMethod("GET");
	           urlConnection.setRequestProperty("Content-type", "application/json");
	           
	           BufferedReader bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
	           
	           String line = null;
	           while ((line = bf.readLine()) != null) {
	               sb.append(line);
	           }
	           bf.close();
	           
	           JSONParser jsonParser = new JSONParser();
	           JSONObject jsonObject = (JSONObject)jsonParser.parse(sb.toString());
	           JSONObject response = (JSONObject)jsonObject.get("response");
	           JSONObject body = (JSONObject)response.get("body");
	           JSONObject items = (JSONObject)body.get("items");
	           JSONArray jsonArray = (JSONArray)items.get("item");
	           for (int i = 0; i < jsonArray.size(); i++) {
	        	   JSONObject object = (JSONObject) jsonArray.get(i);
	        	   String happenDt = (String) object.get("happenDt");
	        	   String happenPlace = (String) object.get("happenPlace");
	        	   String kindCd = (String) object.get("kindCd");
	        	   String colorCd = (String) object.get("colorCd");
	        	   String age = (String) object.get("age");
	        	   String weight = (String) object.get("weight");
	        	   String popfile = (String) object.get("popfile");
	        	   String processState = (String) object.get("processState");
	        	   String sexCd = (String) object.get("sexCd");
	        	   String neuterYn = (String) object.get("neuterYn");
	        	   String specialMark = (String) object.get("specialMark");
	        	   String careAddr = (String) object.get("careAddr");
	        	   String noticeComment = (String) object.get("noticeComment");
	        	   String noticeSdt = (String) object.get("noticeSdt");
	        	   String noticeEdt = (String) object.get("noticeEdt");
	        	   /*
	        	    * 접수일
	        	    * 발견장소
	        	    * 품종
	        	    * 색상
	        	    * 나이
	        	    * 체중
	        	    * Image
	        	    * 보호중
	        	    * 성별
	        	    * 중성화여부
	        	    * 특징
	        	    * 보호장소
	        	    * 특이사항
	        	    * 공고시작일
	        	    * 공고종료일
	        	    */
	        	   Dog dog = Dog.builder()
	        			   		.happenDt(happenDt)
	        			   		.happenPlace(happenPlace)
	        			   		.kindCd(kindCd)
	        			   		.colorCd(colorCd)
	        			   		.age(age)
	        			   		.weight(weight)
	        			   		.popfile(popfile)
	        			   		.processState(processState)
	        			   		.sexCd(sexCd)
	        			   		.neuterYn(neuterYn)
	        			   		.specialMark(specialMark)
	        			   		.careAddr(careAddr)
	        			   		.noticeComment(noticeComment)
	        			   		.noticeSdt(noticeSdt)
	        			   		.noticeEdt(noticeEdt)
	        			   		.build();
	        	   log.info("강아지 정보 : " + dog);
	        	   dogService.register(dog);
	           }
	       }catch(Exception e) {
	           e.printStackTrace();
	       }
		return "dog/test";
	}
	
	@GetMapping("/profile")
	public String showDogProfile(Model model) {		
		return "dog/dog_profile";
	}
}