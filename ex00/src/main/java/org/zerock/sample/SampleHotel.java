package org.zerock.sample;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.ToString;

@Component
@ToString
@Getter
public class SampleHotel {

	private Chef chef;

	public SampleHotel(Chef chef) {
		super();
		this.chef = chef;
	}

	public Object getChef() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
