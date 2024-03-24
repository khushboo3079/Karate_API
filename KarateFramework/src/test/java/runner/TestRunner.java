package runner;

import static org.testng.Assert.assertTrue;

import org.testng.annotations.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class TestRunner {
	@Test
	public void testFeatureLocally() {
		System.setProperty("karate.env", "dev");
		String featureFilePath="features/getAPI.feature";
		featureFilePath="classpath:" +featureFilePath;
		Results results =Runner.path("classpath:features/SucessFlow.feature").parallel(1);
		Results result1 =Runner.path("classpath:features/Schemavalidation.feature").parallel(1);
		Results result2 =Runner.path("classpath:features/BusinessValidation.feature").parallel(1);


		
	}

 }
