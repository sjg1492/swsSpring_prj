package kr.co.sist.user.domain;

import lombok.Data;

@Data
public class Product {
	private String product_num, category, brand, prd_name, input_date, img1, img2, img3, img4, 
	 fc_num, sc_num;
	private int rental_fee,product_count,price;
}
