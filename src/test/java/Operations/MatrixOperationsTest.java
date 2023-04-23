package Operations;


import matrix.Matrix;


import java.util.List;

import static org.junit.Assert.assertEquals;

public class MatrixOperationsTest {


    public Matrix createRandomMatrix(int row, int col) {
        Matrix matrix1 = Matrix.random(row, col);
        return matrix1;
    }

    public Matrix createIdentityMatrix(int size) {
        Matrix matrix1 = Matrix.identity(size);
        return matrix1;
    }
    public Matrix createMatrix(double[][] array){
        Matrix matrix1 = new Matrix(array);
        return matrix1;
    }

    public Matrix addTwoMatrices(Matrix matrix1, Matrix matrix2) {

        Matrix matrix3 = matrix1.plus(matrix2);
        return matrix3;
    }

    public void verifyMatricesAreAdded(Matrix matrix1, Matrix matrix2, Matrix matrix3) {
        for (int i = 0; i < matrix3.getRows(); i++) {
            for (int j = 0; j < matrix3.getColumns(); j++) {
                assertEquals(matrix3.getData()[i][j], matrix1.getData()[i][j] + matrix2.getData()[i][j], 0.0001);
            }
        }
    }

    public double[][] create2DMatrix(List<List<String>> data) {
        double[][] dataArray = new double[data.size()][];
        for (int i = 0; i < data.size(); i++) {
            List<String> row = data.get(i);
            dataArray[i] = new double[row.size()];
            for (int j = 0; j < row.size(); j++) {
                dataArray[i][j] = Double.parseDouble(row.get(j));
            }
        }
        return dataArray;
    }
}



