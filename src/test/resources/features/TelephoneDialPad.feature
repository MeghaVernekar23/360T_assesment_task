Feature: Telephone Dial Pad Combinations
  As a user, I want to retrieve all possible alphabet combinations based on the numeric input from a telephone dial pad.

  @High
  Scenario Outline: Single digit input (Positive Test)
    Given I have the digit "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

    Examples:
      | input | expected   |
      |     2 | A, B, C    |
      |     4 | G, H, I    |
      |     7 | P, Q, R, S |
      |     9 | W, X, Y, Z |

  @High
  Scenario Outline: Multiple digit input (Positive Test)
    Given I have the digit "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

    Examples:
      | input | expected                           |
      |    23 | AD, AE, AF, BD, BE, BF, CD, CE, CF |
      |    32 | DA, DB, DC, EA, EB, EC, FA, FB, FC |

  @High
  Scenario Outline: Edge case for single digit  (Positive Test)
    Given I have the digit "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

    Examples:
      | input | expected |
      |     0 |        0 |
      |     1 |        1 |

  @High
  Scenario Outline: Input with multiple repeating digits (Positive Test)
    Given I have the digit "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

    Examples:
      | input | expected                           |
      |    22 | AA, AB, AC, BA, BB, BC, CA, CB, CC |
      |  0000 |                               0000 |
      |   111 |                                111 |

  @High
  Scenario Outline: Input with invalid characters (Negative Test)
    Given I have the input "<input>"
    When I retrieve the response message
    Then I should receive an error message "<expectedMessage>"

    Examples:
      | input | expectedMessage                                                 |
      |   2a4 | Invalid input. Please enter a string of digits between 0 and 9. |
      | 2ABC3 | Invalid input. Please enter a string of digits between 0 and 9. |
      | ASDFG | Invalid input. Please enter a string of digits between 0 and 9. |

  @High
  Scenario Outline: Input with special characters (Negative Test)
    Given I have the input "<input>"
    When I retrieve the response message
    Then I should receive an error message "<expectedMessage>"

    Examples:
      | input | expectedMessage                                                 |
      |   2#4 | Invalid input. Please enter a string of digits between 0 and 9. |
      | 2-3-4 | Invalid input. Please enter a string of digits between 0 and 9. |
      | ????? | Invalid input. Please enter a string of digits between 0 and 9. |

  @High
  Scenario: Empty input (Negative Test)
    Given I have the input "<input>"
    When I retrieve the response message
    Then I should receive an error message "<expectedMessage>"

    Examples:
      | input | expectedMessage                                                 |
      |       | Invalid input. Please enter a string of digits between 0 and 9. |

  @Medium
  Scenario Outline: Combination of 0 and 1 (Positive Test)
    Given I have the digit "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

    Examples:
      | input | expected |
      |    01 |       01 |

  @Medium
  Scenario Outline: Input with three digits (Positive Test)
    Given I have the digit "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

    Examples:
      | input | expected                                                                                                                              |
      |   234 | ADG, ADH, ADI, AEG, AEH, AEI, AFG, AFH, AFI, BDG, BDH, BDI, BEG, BEH, BEI, BFG, BFH, BFI, CDG, CDH, CDI, CEG, CEH, CEI, CFG, CFH, CFI |

  @Medium
  Scenario: Input with leading zero and one (Positive Test)
    Given I have the input "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

    Examples:
      | input | expected                                                        |
      |   023 |                     0AD, 0AE, 0AF, 0BD, 0BE, 0BF, 0CD, 0CE, 0CF |
      |   197 | 1WP,1WQ,1WR,1WS,1XP,1XQ,1XR,1XS,1YP,1YQ,1YR,1YS,1ZP,1ZQ,1ZR,1ZS |

  @Medium
  Scenario Outline: Input with mix of uppercase and lowercase letters (Negative Test)
    Given I have the input "<input>"
    When I retrieve the response message
    Then I should receive an error message "<expectedMessage>"

    Examples:
      | input | expectedMessage                                                 |
      | AbCd  | Invalid input. Please enter a string of digits between 0 and 9. |

  @Medium
  Scenario: Input with multiple digit sequences separated by spaces (Negative Test)
    Given I have the input "23 45"
    When I retrieve the response message
    Then I should receive an error message "Invalid input. Please enter a string of digits between 0 and 9."

  @Medium
  Scenario Outline: Numeric input with tabs or newline characters (Negative Test)
    Given I have the input "<input>"
    When I retrieve the response message
    Then I should receive an error message "<expectedMessage>"

    Examples:
      | input | expectedMessage                                                 |
      |  2\n3 | Invalid input. Please enter a string of digits between 0 and 9. |

  @Medium
  Scenario Outline: Input with numeric characters out of bounds (Negative Test)
    Given I have the input "<input>"
    When I retrieve the response message
    Then I should receive an error message "<expectedMessage>"

    Examples:
      | input | expectedMessage                                                 |
      |    -1 | Invalid input. Please enter a string of digits between 0 and 9. |
      |  10.5 | Invalid input. Please enter a string of digits between 0 and 9. |

  @Medium
  Scenario Outline: Handling non-ASCII characters in input (Negative Test)
    Given I have the input "<input>"
    When I retrieve the response message
    Then I should receive an error message "<expectedMessage>"

    Examples:
      | input | expectedMessage                                                 |
      | 你好  | Invalid input. Please enter a string of digits between 0 and 9. |

  @Medium
  Scenario: Input with trailing zero and one (Positive Test)
    Given I have the input "<input>"
    When I retrieve all possible combinations
    Then the result should contain "<expected>"

    Examples:
      | input | expected                                     |
      |  2300 | AD00,AE00,AF00,BD00,BE00,BF00,CD00,CE00,CF00 |
      |  4511 | GJ11,GK11,GL11,HJ11,HK11,HL11,IJ11,IK11,IL11 |

  @Low
  Scenario: Input validation with whitespace (Negative Test)
    Given I have the input " 2"
    When I retrieve the response message
    Then I should receive an error message "Invalid input. Please enter a string of digits between 0 and 9."

  @Low
  Scenario: Input validation  only whitespace (Negative Test)
    Given I have the input "  "
    When I retrieve the response message
    Then I should receive an error message "Invalid input. Please enter a string of digits between 0 and 9."
