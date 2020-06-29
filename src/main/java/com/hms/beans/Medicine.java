package com.hms.beans;

import javax.persistence.Embeddable;


@Embeddable
public class Medicine {
	
	
	
	
	private String name;
	
	private int quantity;
	
	private int rate;
	
	private int amount;

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

		
	
	
	
	
}
