package kr.co.sist.user.domain;

import lombok.Data;

@Data
public class Inquiry {
	private int i_number, title, member_number, manager_number;
	private String content, i_type, input_date, answer_date, answer_check;
}
