package kr.co.sist.user.domain;

import lombok.Data;

@Data
public class Notice {
	private int n_number, manager_number;
	private String title, contents, input_date, notice_flag, id;
}
