package com.cognizant.airline_management_system.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class feedback {

	@Id
    private String bookingId;
	public feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	public feedback(String bookingId, String feedback) {
		super();
		this.bookingId = bookingId;
		this.feedback = feedback;
	}
	private String feedback;
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	@Override
	public String toString() {
		return "feedback [bookingId=" + bookingId + ", feedback=" + feedback + "]";
	}
	
}
