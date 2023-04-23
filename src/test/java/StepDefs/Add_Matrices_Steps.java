package StepDefs;

import Operations.MatrixOperationsTest;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import matrix.Matrix;

import java.util.List;

import static org.junit.Assert.assertThrows;


public class Add_Matrices_Steps {

    MatrixOperationsTest matrixOperationsTest;
    Matrix matrix1;
    Matrix matrix2;
    Matrix resultMatrix;
    Exception exception;
    double[][] array;

    public Add_Matrices_Steps(MatrixOperationsTest matrixOperationsTest) {

        this.matrixOperationsTest = matrixOperationsTest;
    }
    @Given("create a random matrix of size {int} {int}")
    public void createARandomMatrixOfSize(int row, int col) {
        matrix1= matrixOperationsTest.createRandomMatrix(row, col);
        this.matrix1=matrix1;
    }

    @And("create another random matrix of size {int} {int}")
    public void createAnotherRandomMatrixOfSize(int row, int col) {
        matrix2= matrixOperationsTest.createRandomMatrix(row, col);
        this.matrix2=matrix2;
    }
    @When("we add these matrices")
    public void weAddTheseMatrices() {
        try {
            resultMatrix = matrixOperationsTest.addTwoMatrices(matrix1, matrix2);
            this.resultMatrix = resultMatrix;
        }catch (Exception exception){
            this.exception=exception;
        }


    }

    @Then("we should get a matrix with values added from respective rows and columns")
    public void weShouldGetAMatrixWithValuesAddedFromRespectiveRowsAndColumns() {
        matrixOperationsTest.verifyMatricesAreAdded(matrix1,matrix2,resultMatrix);
    }


    @Given("a matrix of size {int}")
    public void aMatrixOfSize(int size) {
        matrix1 = matrixOperationsTest.createIdentityMatrix(size);
        this.matrix1=matrix1;
    }

    @And("another matrix of size {int}")
    public void anotherMatrixOfSize(int size) {
        matrix2 = matrixOperationsTest.createIdentityMatrix(size);
        this.matrix2=matrix2;
    }

    @Then("we should see an IllegalArgumentExceptionError {string}")
    public void weShouldSeeAnIllegalArgumentExceptionError(String error) {
        assertThrows(IllegalArgumentException.class,()-> {
            throw exception;
        });
    }

    @Given("an array of {string}")
    public void anArrayOf(String arg0) {

    }



    @Given("an array of values")
    public void anArrayOfValues(DataTable dataTable) {
        List<List<String>> data = dataTable.asLists(String.class);
        array= matrixOperationsTest.create2DMatrix(data);
        matrix1=matrixOperationsTest.createMatrix(array);
        this.matrix1=matrix1;
    }

    @And("another array of values")
    public void anotherArrayOfValues(DataTable dataTable) {
        List<List<String>> data = dataTable.asLists(String.class);
        array= matrixOperationsTest.create2DMatrix(data);
        matrix2=matrixOperationsTest.createMatrix(array);
        this.matrix2=matrix2;
    }
}
