package kr.co.sist.user.domain;

import lombok.Data;

@Data
public class Member {
	private String member_number, id, name, birth, gender, marriage, password, phone, email, zipcode, address, status, input_date, answer, question_num;
}
