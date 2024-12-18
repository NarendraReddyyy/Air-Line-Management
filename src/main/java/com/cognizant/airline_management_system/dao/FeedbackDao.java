package com.cognizant.airline_management_system.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.cognizant.airline_management_system.model.feedback;

@Repository
public interface FeedbackDao extends CrudRepository<feedback,String> {

}
