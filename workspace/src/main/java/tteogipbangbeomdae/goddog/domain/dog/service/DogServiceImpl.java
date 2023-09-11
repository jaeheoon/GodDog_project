package tteogipbangbeomdae.goddog.domain.dog.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import tteogipbangbeomdae.goddog.domain.dog.dto.Dog;
import tteogipbangbeomdae.goddog.domain.dog.mapper.DogMapper;

@RequiredArgsConstructor
@Service
public class DogServiceImpl implements DogService{
	
	private final DogMapper dogMapper;
	
	@Override
	@Transactional
//	@Transactional(propagation = Propagation.REQUIRED)
	public void register(Dog dog) {
		dogMapper.create(dog);
	}

}
