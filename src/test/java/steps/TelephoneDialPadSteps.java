package steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import org.testng.Assert;

import java.util.List;

import dto.TelephoneDialPad;
import framework.Base;


import java.util.Arrays;

public class TelephoneDialPadSteps extends Base{

    private String inputDigit;
    private List<String> actualCombinations;

    @Given("I have the digit {string}")
public void i_have_the_digit(String string) {
    this.inputDigit = string;
    logInfo("The given input digit is"+ inputDigit);
}

    @When("I retrieve all possible combinations")
    public void iRetrieveAllPossibleCombinations() {
       
        actualCombinations = TelephoneDialPad.retrieveCombinations(inputDigit); 
        logInfo("The generated Telephone deial pad combinations are " + actualCombinations.toString());
    }


    @Then("the result should contain {string}")
public void the_result_should_contain(String string) {
    List<String> expectedCombinations = Arrays.asList(string.split(",\\s*"));
    Assert.assertTrue(actualCombinations.containsAll(expectedCombinations), 
    "The expected combinations are not found in the actual result");
    logInfo("The actual combinations ["+expectedCombinations+"] are matched with expected combination ["+expectedCombinations+"]");

    Assert.assertEquals(actualCombinations.size(), expectedCombinations.size(), 
    "The actual combinations size doesn't match the expected size");

      logInfo("The actual combinations size  match the expected size");
}
    
}
