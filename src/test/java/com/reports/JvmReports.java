package com.reports;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

public class JvmReports {
	public static void generateJVM(String jsonFile) {
		File reportDirectory = new File("C:\\Users\\Nanda\\eclipse-workspace\\CucumberProject\\src\\test\\resources\\Reports");
		Configuration config = new Configuration(reportDirectory,"AdactinBooking");
		config.addClassifications("OS","Windows10");
		config.addClassifications("Browser","Chrome");
		List<String> json=new ArrayList<String>();
		json.add(jsonFile);
		ReportBuilder builder = new ReportBuilder(json, config);
		builder.generateReports();
		
	}

}
