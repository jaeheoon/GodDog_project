package tteogipbangbeomdae.goddog;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;
import tteogipbangbeomdae.goddog.domain.dog.dto.Dog;
import tteogipbangbeomdae.goddog.domain.dog.mapper.DogMapper;

@SpringBootTest
@Slf4j
public class DogMapperTest {
	
	@Autowired
	private DogMapper dogMapper;
	
	@Test
//	@Disabled
	void createTest() {
		Dog createDog = Dog
				.builder()
				.happenDt("230909")
				.happenPlace("10")
				.kindCd("10")
//				.colorCd("10")
				.age("10")
				.weight("10")
				.popfile("10")
				.processState("10")
				.sexCd("1")
				.neuterYn("1")
				.specialMark("10")
				.careAddr("10")
				.noticeComment("10")
				.noticeSdt("20220104")
				.noticeEdt("20220117")
				.build();
		dogMapper.create(createDog);
		log.info("강아지 등록 완료 : {}", createDog);
	}
	
}
