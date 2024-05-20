package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.appDao;
import com.model.weather;

@Service
public class appServiceImpl implements appService {

	@Autowired
	public appDao dao;

	public weather getReport(String city) {

		return dao.getReport(city);
	}

}
