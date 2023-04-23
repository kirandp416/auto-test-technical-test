Feature: Add two matrices

  Scenario: Add two random matrices of same size

    Given create a random matrix of size 2 2
    And create another random matrix of size 2 2
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns

  Scenario: Add two identity matrices of same size

    Given a matrix of size 2
    And another matrix of size 2
    When we add these matrices
    Then we should get a matrix with values added from respective rows and columns

    Scenario: Add two random matrices of different size

      Given create a random matrix of size 2 3
      And create a random matrix of size 3 2
      When we add these matrices
      Then we should see an IllegalArgumentExceptionError "The dimensions of the matrices much match"

