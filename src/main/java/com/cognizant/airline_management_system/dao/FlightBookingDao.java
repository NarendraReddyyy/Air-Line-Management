package com.cognizant.airline_management_system.dao;

import com.cognizant.airline_management_system.model.FlightBooking;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FlightBookingDao extends CrudRepository<FlightBooking, String> {
}
