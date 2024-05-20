package com.dao;

import com.model.weather;

public interface appDao {

	weather getReport(String city);

}
