package com.dao;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.model.weather;

@Repository
public class appDaoImpl implements appDao {

	@Autowired
	public weather report;

	public weather getReport(String city) {

		// TODO Auto-generated method stub
		// API Key
		String apiKey = "7c3dbdcf13faf65896dd742d3390f5ad";

		// Create the URL for the OpenWeatherMap API request
		String Url = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + apiKey;

		try {
			URL url = new URL(Url);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");

			InputStream inputStream = connection.getInputStream();
			InputStreamReader reader = new InputStreamReader(inputStream);
			// System.out.println(reader);

			Scanner scanner = new Scanner(reader);
			StringBuilder responseContent = new StringBuilder();

			while (scanner.hasNext()) {
				responseContent.append(scanner.nextLine());
			}

			scanner.close();

			// Parse the JSON response to extract temperature, date, and humidity
			Gson gson = new Gson();
			JsonObject jsonObject = gson.fromJson(responseContent.toString(), JsonObject.class);

			// Date & Time
			long dateTimestamp = jsonObject.get("dt").getAsLong() * 1000;
			String date = new Date(dateTimestamp).toString();

			// Temperature
			double temperatureKelvin = jsonObject.getAsJsonObject("main").get("temp").getAsDouble();
			int temperatureCelsius = (int) (temperatureKelvin - 273.15);

			// Humidity
			int humidity = jsonObject.getAsJsonObject("main").get("humidity").getAsInt();

			// Wind Speed
			double windSpeed = jsonObject.getAsJsonObject("wind").get("speed").getAsDouble();

			// Weather Condition
			String weatherCondition = jsonObject.getAsJsonArray("weather").get(0).getAsJsonObject().get("main")
					.getAsString();

			// Set the data as request attributes (for sending to the jsp page)
			report.setDate(date);
			report.setCity(city);
			report.setTemperatureCelsius(temperatureCelsius);
			report.setWeatherCondition(weatherCondition);
			report.setHumidity(humidity);
			report.setWindSpeed(windSpeed);
			report.setWeatherData(responseContent.toString());
			return report;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

}
