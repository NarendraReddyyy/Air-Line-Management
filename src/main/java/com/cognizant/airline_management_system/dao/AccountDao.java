package com.cognizant.airline_management_system.dao;

import com.cognizant.airline_management_system.model.Account;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountDao extends CrudRepository<Account, Long> {
}