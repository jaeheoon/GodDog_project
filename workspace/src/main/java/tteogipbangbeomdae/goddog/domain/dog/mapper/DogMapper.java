package tteogipbangbeomdae.goddog.domain.dog.mapper;

import org.apache.ibatis.annotations.Mapper;

import tteogipbangbeomdae.goddog.domain.dog.dto.Dog;

@Mapper
public interface DogMapper {
	
	public void create(Dog dog);

}







