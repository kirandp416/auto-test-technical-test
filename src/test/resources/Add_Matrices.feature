Feature: Add two matrices

  Scenario: Add two matrices of same size from given array

    Given an array of values
      | 1 | 2 | 3 |
      | 4 | 5 | 6 |
      | 7 | 8 | 9 |
    And another array of values
      | 2 | 2  | 3 |
      | 4 | 56 | 6 |
      | 7 | 8  | 8 |
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns


  Scenario: Add two matrices of same size from given array, Transpose them

    Given an array of values
      | 1 | 2 | 3 |
      | 4 | 5 | 6 |
      | 7 | 8 | 9 |
    And another array of values
      | 2 | 2  | 3 |
      | 4 | 56 | 6 |
      | 7 | 8  | 8 |
    And we transpose the generated matrices
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns

  Scenario: Add two random matrices of same size

    Given create a random matrix of size 2 2
    And create another random matrix of size 2 2
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns

  Scenario: Create two random matrices, transpose them and add
    Given create a random matrix of size 2 3
    And create another random matrix of size 2 3
    And we transpose the generated matrices
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns

  Scenario: Add two identity matrices of same size

    Given a matrix of size 2
    And another matrix of size 2
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns

  Scenario: Add two identity matrices of same size, Transpose them

    Given a matrix of size 2
    And another matrix of size 2
    And we transpose the generated matrices
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns


  Scenario: Add two random matrices of different size

    Given create a random matrix of size 4 3
    And create another random matrix of size 4 2
    When we add these matrices
    Then we should see an IllegalArgumentExceptionError "java.lang.IllegalArgumentException: The dimensions of the matrices much match"

  Scenario: Create two random matrices of different size, transpose them and add
    Given create a random matrix of size 2 8
    And create another random matrix of size 2 3
    And we transpose the generated matrices
    When we add these matrices
    Then we should see an IllegalArgumentExceptionError "java.lang.IllegalArgumentException: The dimensions of the matrices much match"

  Scenario: Add two identity matrices of different size

    Given a matrix of size 2
    And another matrix of size 3
    When we add these matrices
    Then we should see an IllegalArgumentExceptionError "java.lang.IllegalArgumentException: The dimensions of the matrices much match"

  Scenario: Add two identity matrices of different size, transpose them

    Given a matrix of size 2
    And another matrix of size 3
    And we transpose the generated matrices
    When we add these matrices
    Then we should see an IllegalArgumentExceptionError "java.lang.IllegalArgumentException: The dimensions of the matrices much match"


  Scenario: Add two matrices of different size from given array

    Given an array of values
      | 1 | 2 | 3 |
      | 4 | 5 | 6 |
      | 7 | 8 | 9 |
    And another array of values
      | 2 | 2  | 3 |
      | 4 | 56 | 6 |
    When we add these matrices
    Then we should see an IllegalArgumentExceptionError "java.lang.IllegalArgumentException: The dimensions of the matrices much match"

  Scenario: Add two matrices of different size from given array, transpose them

    Given an array of values
      | 1 | 2 | 3 |
      | 4 | 5 | 6 |
      | 7 | 8 | 9 |
    And another array of values
      | 2 | 2  | 3 |
      | 4 | 56 | 6 |
    And we transpose the generated matrices
    When we add these matrices
    Then we should see an IllegalArgumentExceptionError "java.lang.IllegalArgumentException: The dimensions of the matrices much match"

  Scenario: Add two matrices of same size from given larger array

    Given an array of values
      | 1111111111111111111111111111111111111111111111111111111111111111 | -55555555555555555555555555555555555555552 | 3 |
      | 4                                                                | 5                                          | 6 |
      | 7                                                                | 8                                          | 9 |
    And another array of values
      | 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999992 | 2                                                                                                                | 3                                                                                                                                                               |
      | 4                                                                                                                                                              | 5688888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888 | 6                                                                                                                                                               |
      | 7                                                                                                                                                              | 8                                                                                                                | -97777777777777777777777777777651536156555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555558 |
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns




