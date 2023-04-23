/*
 * Copyright © 2023 Mirada Medical Ltd.
 * All Rights Reserved.
 */

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

/**
 * Test runner for Cucumber tests.
 *
 * @author lottie.thomas
 */
@RunWith( Cucumber.class )
@CucumberOptions(
   features = { "src/test/resources" },
        glue={"StepDefs"},
        plugin = {"pretty", "html:Reports/Report"}
)
public class RunCucumberTests
{

}
