package com.runner;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.reports.JvmReports;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources"},glue={"com.step"},monochrome = true,dryRun = true,plugin = {"C:\\Users\\Nanda\\eclipse-workspace\\CucumberProject\\src\\test\\resources\\Reports\\adactin.json"} )
public class TestRunner {

@AfterClass
public static void afterClass() {
	JvmReports.generateJVM("C:\\Users\\Nanda\\eclipse-workspace\\CucumberProject\\src\\test\\resources\\Reports\\adactin.json");
}
}
