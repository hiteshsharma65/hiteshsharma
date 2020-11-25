package runners;

import cucumber.api.CucumberOptions;
import cucumber.api.testng.AbstractTestNGCucumberTests;


@CucumberOptions(features = "src/test/resources/features", glue = {"stepDefinitions"}, tags = {"@LatestExchange, @HistoricalExchange"})
public class TestRunner extends AbstractTestNGCucumberTests {
	
}
