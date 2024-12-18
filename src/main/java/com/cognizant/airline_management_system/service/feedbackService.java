package com.cognizant.airline_management_system.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.airline_management_system.dao.FeedbackDao;
import com.cognizant.airline_management_system.dao.FeedbackDaoImpl;
import com.cognizant.airline_management_system.model.Booking;
import com.cognizant.airline_management_system.model.feedback;

@Service
public class feedbackService {
	
	@Autowired
	FeedbackDao feedbackDao;
	@Autowired
	FeedbackDaoImpl feedbackDaoimpl;
	
	public void saveFeedback(feedback feed) {
		feedbackDao.save(feed);
    }

	public List<feedback> viewfeed(String bookingid) {
		// TODO Auto-generated method stub
		//// TODO Auto-generated method stub
		List<feedback> feed= feedbackDaoimpl.findAllByBookingId(bookingid);
		return feed;
		
		
		
		
	}

	

}
