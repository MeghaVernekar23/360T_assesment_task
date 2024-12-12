package framework;

import com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter;
import com.aventstack.extentreports.Status;


public class Base {

     

    public void logInfo(String message) {

        try {
            ExtentCucumberAdapter.getCurrentStep().log(Status.INFO, message);
        } catch (Exception e) {
            ExtentCucumberAdapter.getCurrentStep().log(Status.FAIL, e.getMessage());
        }
    }

    public void logSuccess(String message) {

        try {
            ExtentCucumberAdapter.getCurrentStep().log(Status.PASS, message);
        } catch (Exception e) {
            ExtentCucumberAdapter.getCurrentStep().log(Status.FAIL, e.getMessage());
        }
    }

    public void logFailure(String message) {

        try {
            ExtentCucumberAdapter.getCurrentStep().log(Status.FAIL, message);
        } catch (Exception e) {
            ExtentCucumberAdapter.getCurrentStep().log(Status.FAIL, e.getMessage());
        }
    }
    
}
