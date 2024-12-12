package dto;

import java.util.LinkedList;
import java.util.List;

public class TelephoneDialPad {

    public static String dialPadMap[][] = {
            { "0" }, { "1" }, { "A", "B", "C" }, { "D", "E", "F" }, { "G", "H", "I" },
            { "J", "K", "L" }, { "M", "N", "O" }, { "P", "Q", "R", "S" },
            { "T", "U", "V" }, { "W", "X", "Y", "Z" }
    };

    protected static void calculateAlphabetCombinations(List<String> combinationList, String prefixVar,
            String remainingVar) {
        int digitVar = Integer.parseInt(remainingVar.substring(0, 1));
        if (remainingVar.length() == 1) {
            for (int i = 0; i < dialPadMap[digitVar].length; i++) {
                combinationList.add(prefixVar + dialPadMap[digitVar][i]);
            }
        } else {
            for (int i = 0; i < dialPadMap[digitVar].length; i++) {
                calculateAlphabetCombinations(combinationList,
                        prefixVar + dialPadMap[digitVar][i], remainingVar.substring(1));
            }
        }
    }

    public static Object retrieveCombinations(String digitInput) {
        if (!isValidInput(digitInput)) {
            return "Invalid input. Please enter a string of digits between 0 and 9.";
        }
        LinkedList<String> combinationList = new LinkedList<>();
        calculateAlphabetCombinations(combinationList, "", digitInput);
        return combinationList;
    }

    /**
     * Validates whether the input string is a non-null, non-empty string
     * containing only numeric digits ('0' through '9').
     *
     * @param input The string to be validated.
     * @return {@code true} if the input is non-null, non-empty, and contains
     *         only numeric characters; {@code false} otherwise.
     */
    private static boolean isValidInput(String input) {
        if (input == null || input.isEmpty()) {
            return false;
        }
        for (char c : input.toCharArray()) {
            if (!Character.isDigit(c) || c < '0' || c > '9') {
                return false;
            }
        }
        return true;
    }
}
