package Model;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class CalculationModelTest {

    CalculationModel model;
    @Before
    public void setUp() throws Exception {
        model = new CalculationModel("10","5","sum");
    }

    @Test
    public void getResult() {
        String result = model.getResult();
        assertEquals("15",result);
    }
}