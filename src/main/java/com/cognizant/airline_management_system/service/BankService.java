package com.cognizant.airline_management_system.service;

import com.cognizant.airline_management_system.dao.BankDao;
import com.cognizant.airline_management_system.model.Bank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BankService {
    private BankDao bankDao;

    @Autowired
    public void setBankDao(BankDao bankDao) {
        this.bankDao = bankDao;
    }

    public Bank getBankById(Integer id) {
        return bankDao.findById(id).orElse(null);
    }

    public List<Bank> getBanks() {
        return (List<Bank>) bankDao.findAll();
    }
}
