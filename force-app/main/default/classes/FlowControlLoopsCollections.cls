/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Module 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Shelley Snow
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Question 1
     * Compares two numbers and return "Hello World!" x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        // Check if either number is null, if so, return null
        if (x == null || y == null) {
            return null;
        }
        //Check if x is greater than y, if so, return "Hello World!"
        // If not, return null
        if (x > y) {
            return 'Hello World!'; 
       } else {
            return null;
       }
    }

    /**
     * Question 2
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * If the age is less than 18, the method will return false.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        //Check if a person's age is 18 or older if so, return true
        // If not, return false
        if (age >= 18) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Question 3
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     */
    public static Integer findMax(Integer num1, Integer num2) {
        // Check if either number is null, if so return null
        if (num1 == null || num2 == null) {
            return null;
        }
        //Compare the two numbers and find the maximum number
        //If num1 is greater or equal, return num1
        //If num2 is greater, return num2
        if (num1 >= num2) {
            return num1;
        } else {
            return num2;
        }
    }


    /**
     * Question 4
     * Checks if a number is positive, negative, or zero.
     * If the number is null, return null.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        // Check if the number is null
        if (a == null) {
            return null;
        }
        // Check if the number is positive, negative or zero
        if (a > 0) {
            return 'Positive';
        } else if (a < 0) {
            return 'Negative';
        } else {
            return 'Zero';
        }
    }

    /**
     * Question 5
     * Checks if a number is even or odd.
     * If the number is null, return null.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     */
    public static String checkEvenOdd(Integer a) {
        // Check if the number is null
        if (a == null) {
            return null; 
        }
        // Check if n is even or odd
        //If a is divisible by 2, return "Even"
    	if(Math.mod(a, 2) == 0) {
            return 'Even';
        } else {
            return 'Odd';
        }
    }

    /**
     * Question 6
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        // Check if the string is null
        if (a == null) {
            return 'Null';
        // Check if the string is empty
        } else if (a == '') {
            return 'Empty';
        // If the string is not null and not empty, it contains text
        } else {
            return 'Contains Text';
        }   
    }

    /**
     * Question 7
     * Determines the grade based on the score.
     * Grade A if score is greater than or equal to 90.
     * Grade B if score is greater than or equal to 80.
     * Grade C if score is greater than or equal to 70.
     * Grade D if score is greater than or equal to 60.
     * Grade F otherwise.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     */
    public static String determineGrade(Integer score) {
       // Check if the score is null
        if (score == null) {
            return 'Invalid Score';
        }
        // Check if the score is greater than or equal to 90
        if (score >= 90) {
            return 'A';
        } else if (score >= 80) {
        return 'B';
        } else if (score >= 70) {
        return 'C';
        } else if (score >= 60) {
        return 'D';
        } else {
        return 'F';
        }
    }    


    /**
     * Question 8
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
        // Check if intlimit is null or less than 1
        if (intLimit == null || intLimit < 1) {
            return 0; // Returning 0 in case of invalid input
        }
        // Create variable named 'sum' and set it to 0
        Integer sum = 0;
        // Loop from 1 to intlimit and sum the numbers
        for (Integer i = 1; i <= intLimit; i++) {
            sum += i; // add each number to the sum
        }
        return sum; // Return the final sum
    }

    /**
     * Question 9
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     */
    public static String returnHelloWorld() {
        // Initialize the 'result' variable as an empty string to start with
        String result = '';
        // Use a for loop to append 'Hello World!;' to the result string three times
        for (Integer i = 0; i < 3; i++) {
            result += 'Hello World!; ';
        }
        return result; // Return the final result string
    }

    /**
     * Question 10
     * Generate a string where the input string is repeated the given number of times, with each
	 * repetition separated by a semicolon. 
     * Do not add a semicolon after the last repetition.
	 * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     */
    public static String repeatString(String inputString, Integer repeatCount) {
        // Initialize the result String
        String result = '';
        // Check if the inputString is null or repeatCount is less than 1
        if (inputString == null || repeatCount < 1) {
            return result; // Return an empty string if input is invalid
        }
        // Loop repeatCount times and append inputString to the result string separated by semicolons
        for (Integer i = 0; i < repeatCount; i++) {
            result += inputString;
            // Append a semicolon only if it's not the last repetition
            if (i < repeatCount - 1) {
                result += '; ';
            }
        }
        return result; // Return the final string
    }

    /**
     * Question 11
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
        // Create a new list of integers
        List<Integer> numbers = new List<Integer>();
        
        // Add the integers 1, 2, and 3 to the list
        for (Integer i = 1; i <= 3; i++) {
            numbers.add(i);
        }
        // Return the new list
        return numbers; 
    }

    /**
     * Question 12
     * Creates a List of integers and adds the integers from 1 to 5. Then it removes the number 3 from the list.
     * Example: createAndRemoveFromList () should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        // Create a new list of integers and add numbers 1 to 5
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5}; 
        // Remove the 3rd element (number 3) from the list
         numberList.remove(2); // Index 2 corresponds to the 3rd element in a zero-based index list
         // Return the updated list
        return numberList;
    }

    /**
     * Question 13
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5] 
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {
        // Create a new list of integers 
        List<integer> numberList = new List<Integer>();
        // Loop to add integers from 1 to 'n" to the list
        for (Integer i = 1; i <= n; i++) {
            numberList.add (i) ;
        }
        // Return the new list
        return numberList;
    }

    /**
    * Question 14
    * Create a list of integers from 1 to 100.
    * @return A List of integers from 1 to 100.
    */
    public static List<Integer> createIntegerList() {
    // Create a new list with the type of Integer
    List<Integer> numberList = new List<Integer>();

    // Populate the List of integers from 1 to 100 using a loop
    for (Integer i = 1; i <= 100; i++) {
        numberList.add(i);
    }

    // Return the populated list
    return numberList;
}
    /**
     * Question 14
     * Remove duplicate values from the list of Strings.
     * The returned Set contains the unique strings from the input List.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     */
    public static Set<String> createStringSet(List<String> inputList) {
        // Create a new Set of strings
        Set<String> stringSet = new Set<String>();

        //add strings to the set
        for (String str : inputList) {
            stringSet.add(str);
        }
     // Return the populated set
     return stringSet;
    }

    /**
     * Question 15
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
         // List of integers provided
    List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6}; // DO NOT CHANGE

    // Initialize a variable to hold the sum of positive integers
    Integer sum = 0;

    // Loop through the list of integers
    for (Integer num : numbers) {
        // If the number is positive, add it to the sum
        if (num > 0) {
            sum += num;
        }
    }
    // Return the sum of positive integers
    return sum;
}

    /**
     * Question 16
     * Iterates over a list of strings and searches for a specific word. Once found, it breaks the loop.
     *  Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list as a string or -1 if the word was not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
     // The variable to store the index of the word
    Integer index = -1;

    // Loop through the list of words
    for (Integer i = 0; i < words.size(); i++) {
        // If the current word is the word to find, exit the loop
        if (words[i].equals(wordToFind)) {
            index = i;
            break;
        }
    }
    // Return the index of the word or -1 if not found
    return index;
}
         
    /**
     * Question 17
     * Loop through the list of money and adds them up until it accumulates more than 40 and then stops counting.
     * The change values are in cents and the total is to be calculated in dollars.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     */
    public static Decimal countMoney() {
        // The list of money in the wallet, represented in dollars and cents
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90}; //DO NOT CHANGE
        // Initialize the sum
        Decimal sum = 0;
        // Loop through the list of money
        for (Decimal amount : moneyInWallet) {
        sum += amount;
        // If the total sum exceeds 40, stop counting
        if (sum > 40) {
        break; //The break condition ensures the loop stops adding as soon as sum exceeds 40
      }
    }
    // Return the total sum of money
    return sum;
}

    /**
     * Question 18
     * Create a map that has five key-value pairs to the map, where the keys are the names of fruits and the values are their quantities.
     * Example: addItemsToMap() should return "Apples => 5, Oranges => 10, Bananas => 15, Pears => 20, Grapes => 25"
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        // Initialize an empty Map
        Map<String, Integer> fruitMap = new Map<String, Integer>();
        // Add key-value pairs to the Map
        // add Apples => 5
        // add Oranges => 10
        // add Bananas => 15
        // add Pears => 20
        // add Grapes => 25

       // Create a list of fruit names
       List<String> fruits = new List<String>{'Apples', 'Oranges', 'Bananas', 'Pears', 'Grapes'};
       // Create a list of corresponding quantities
       List<Integer> quantities = new List<Integer>{5, 10, 15, 20, 25};
       // Use a loop to add key-value pairs to the Map
       for (Integer i = 0; i < fruits.size(); i++) {
       fruitMap.put(fruits[i], quantities[i]);
    }
       // Return the populated Map
       return fruitMap;
}
    
    /**
     * Question 19
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then returns the salary of the employee whose name is specified.
     * Example: getSalary("John Doe") should return 50000
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_get
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if the employee is not found in the Map.
     */
    public static Integer getSalary(String employeeName) {
        // Initialize a Map
        Map<String, Integer> employeeSalaries = new Map<String, Integer>();
        // Add key-value pairs to the Map
        // add John Doe => 50000
        // add Jane Smith => 60000
        // add Sam Brown => 55000
        // add Alice Johnson => 65000
        // Create a list of employee names
        List<String> employees = new List<String>{'John Doe', 'Jane Smith', 'Sam Brown', 'Alice Johnson'};
        // Create a list of corresponding salaries
        List<Integer> salaries = new List<Integer>{50000, 60000, 55000, 65000};
        // Use a loop to add key-value pairs to the Map
        for (Integer i = 0; i < employees.size(); i++) {
        employeeSalaries.put(employees[i], salaries[i]);
}
        // Get the salary of the employee
        Integer salary = employeeSalaries.get(employeeName);
        // Return the salary of the employee, or null if the employee is not found in the Map
        return salary;
    }

    /**
    * Question 20
    * Create a map where the keys are the names of employees and the values are their salaries.
    * Then, iterates over the map and checks if an employee's salary is more than 55000.
    * If it is, add the employee's name to a list of employees that is returned by the method.
    * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
    * @return A list of employee names who have a salary more than 55000.
    */
    public static List<String> getHighPaidEmployees() {
        // Initialize a Map to store employee names and their salaries
        Map<String, Integer> employeeSalaries = new Map<String, Integer>();
        // Create a list of employee names
        List<String> employees = new List<String>{'John Doe', 'Jane Smith', 'Sam Brown', 'Alice Johnson'};
        // Create a list of corresponding salaries
        List<Integer> salaries = new List<Integer>{50000, 60000, 55000, 65000};
        // Use a for loop to add key-value pairs to the Map
        for (Integer i = 0; i < employees.size(); i++) {
            employeeSalaries.put(employees[i], salaries[i]);
        }
        // Initialize a list to store the names of high-paid employees
        List<String> highPaidEmployees = new List<String>();
        // Iterate over the Map using a for loop
        for (String employee : employeeSalaries.keySet()) {
            Integer salary = employeeSalaries.get(employee);
            // Check if the salary of the employee is more than 55000
            if (salary > 55000) {
                // Add the employee to the list of high-paid employees
                highPaidEmployees.add(employee);
            }
        }
        // Return the list of high-paid employees
        return highPaidEmployees;
    }
}


