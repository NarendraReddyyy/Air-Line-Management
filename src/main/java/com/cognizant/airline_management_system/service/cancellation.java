package com.cognizant.airline_management_system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.airline_management_system.dao.BookingDao;
import com.cognizant.airline_management_system.dao.BookingDaoImpl;
import com.cognizant.airline_management_system.dao.FeedbackDaoImpl;
import com.cognizant.airline_management_system.dao.FlightBookingDaoImpl;
import com.cognizant.airline_management_system.dao.PassengerDaoImpl;
import com.cognizant.airline_management_system.model.Booking;

@Service
public class cancellation {
	@Autowired
	BookingDaoImpl bookingDaoImpl;
	@Autowired
	FlightBookingDaoImpl flightBookingDaoImpl;
	@Autowired
	PassengerDaoImpl passengerDaoImpl;
	@Autowired
	FeedbackDaoImpl feedbackDaoImpl;
	
	
	
	
	public void deleteBooking(String bookingid) {
		bookingDaoImpl.deleteByBookingId(bookingid);
		
	}
	public void deleteflightBooking(String flightbookingid) {
		flightBookingDaoImpl.deleteflightBooking(flightbookingid);
		
	}
	public void deletepassenger(String bookingid) {
		// TODO Auto-generated method stub
		passengerDaoImpl.deleteByFlightid(bookingid);
	}
	public void deletefeedback(String flightbookingid) {
		feedbackDaoImpl.deleteByFlightid(flightbookingid);
	}
	public List<Booking> findByFlightBookingIdAndFlightId(String flightbookingid, String bookingid) {
		// TODO Auto-generated method stub
		List<Booking> booking= bookingDaoImpl.findByFlightBookingIdAndFlightBookingId(flightbookingid, bookingid);
		return booking;
		
	}


	
}
