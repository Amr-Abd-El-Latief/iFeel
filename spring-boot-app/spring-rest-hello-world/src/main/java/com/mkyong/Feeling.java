package com.mkyong;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Feeling {

	@Id
	@GeneratedValue
	private Long id;
	private Integer feeling;
	private String lat;
	private String lon;
	
	
}
