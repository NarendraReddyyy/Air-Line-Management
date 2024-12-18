package com.cognizant.airline_management_system.dao;

import com.cognizant.airline_management_system.model.Booking;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookingDao extends CrudRepository<Booking, String> {
}
