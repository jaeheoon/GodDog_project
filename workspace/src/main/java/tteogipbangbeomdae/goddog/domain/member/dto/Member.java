package tteogipbangbeomdae.goddog.domain.member.dto;

import java.time.Month;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class Member {
	
	@NotBlank(message = "아이디는 필수 입력 항목입니다.")
	@Size(min = 6, max = 12)
	private String memberId;
	
	@NotBlank(message = "비밀번호는 필수 입력 항목입니다.")
	private String passwd;
	
	@NotBlank(message = "이름은 필수 입력 항목입니다.")
	private String name;
	
	@NotBlank(message = "전화번호는 필수 입력 항목입니다.")
	private String phoneNum;
	
	@NotBlank(message = "이메일은 필수 입력 항목입니다.")
	private String emailF;

	@NotBlank(message = "이메일은 필수 입력 항목입니다.")
	private String emailB;
	
//	@NotBlank(message = "이메일은 필수 입력 항목입니다.")
//	private String email;
	
	private String regdate;
	
//	@NotBlank(message = "생년월일은 필수 입력 항목입니다.")
//	private String birthday;
	
	@NotBlank(message = "생년월일은 필수 입력 항목입니다.")
	private String year;
	
	@NotBlank(message = "생년월일은 필수 입력 항목입니다.")
	private String month;
	
	@NotBlank(message = "생년월일은 필수 입력 항목입니다.")
	private String day;
	
//	@NotBlank(message = "상세주소는 필수 입력 항목입니다.")
//	private String adress;
	
	@NotBlank(message = "상세주소는 필수 입력 항목입니다.")
	private String adress;
	
	@NotBlank(message = "상세주소는 필수 입력 항목입니다.")
	private String detailAdress;
	
	//일반회원 lev1, 관리자 lev0
	private int lev;
	
//	폼필드에서 들어온 각 값들을 하나의 값으로 초기화해주기 위한 필드값과 메소드
	private String fullEmail;
	
	private String fullBirthday;
	
	private String fullAdress;
	
	public String combineFullEmail() {
		fullEmail = emailF+"@"+emailB;
		return fullEmail;
	}
	
	public String combineFullBirthday() {
		fullBirthday = year + "-" + month + "-" + day;
		return fullBirthday;
	}
	
	public String combineFullAdress() {
		fullAdress = adress+" "+detailAdress;
		return fullAdress;
	}
	
}





