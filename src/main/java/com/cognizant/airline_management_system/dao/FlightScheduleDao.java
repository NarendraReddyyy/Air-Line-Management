package com.cognizant.airline_management_system.dao;

import com.cognizant.airline_management_system.model.FlightSchedule;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FlightScheduleDao extends CrudRepository<FlightSchedule, Integer> {
}
