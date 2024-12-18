package com.cognizant.airline_management_system.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.cognizant.airline_management_system.constant.Queries;
import com.cognizant.airline_management_system.model.feedback;

@Repository
public class FeedbackDaoImpl {
	  private JdbcTemplate jdbcTemplate;

	    @Autowired
	    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
	        this.jdbcTemplate = jdbcTemplate;
	    }
	    //inserting
	    public void update(feedback feed) {
			// TODO Auto-generated method stub
	    	String query="update feedback set booking_id = ?, feedback = ?;";
	    	 jdbcTemplate.update(
	                 query,
	                 feed.getBookingId(),
	                 feed.getFeedback()
	                
	         );

		}
	    //feching
	    public List<feedback> findAllByBookingId(String bookingId) {
	        String query = "select * from feedback where booking_id = ?;";
	        return jdbcTemplate.query(query, new BeanPropertyRowMapper<>(feedback.class), bookingId);
	    }
	    //deleting
		public void deleteByFlightid(String bookingId) {
			// TODO Auto-generated method stub
			String deleteQuery = "delete from feedback where booking_id = ?";
	    	jdbcTemplate.update(deleteQuery, bookingId);
		}

}
