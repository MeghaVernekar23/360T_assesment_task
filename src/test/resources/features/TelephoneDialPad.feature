Feature: Telephone Dial Pad Combinations
  As a user, I want to retrieve all possible alphabet combinations based on the numeric input from a telephone dial pad.


   @High
   Scenario Outline: Single digit input (Positive Test)
    Given I have the digit "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

     Examples:
      | input | expected    |
      | 2     | A, B, C  |