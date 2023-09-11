package tteogipbangbeomdae.goddog.domain.member.dao;

import java.util.List;

import tteogipbangbeomdae.goddog.domain.member.dto.Member;


public interface MemberDao {
	
	public int getCount();
	public List<Member> findByAll();
	public Member findById(String id);

}
