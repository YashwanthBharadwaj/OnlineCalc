package Model;

public class CalculationModel {
    private String firstNumber;
    private String secondNumber;
    private String action;
    private String result;

    public CalculationModel (){
        firstNumber = "";
        secondNumber = "";
        action = "";
    }

    public CalculationModel (String firstNumber, String secondNumber, String action){
        this.firstNumber = firstNumber;
        this.secondNumber = secondNumber;
        this.action = action;
        getResultNUmber();
    }

    public String getResultNUmber (){
        result = "No matches";
        try {
            switch (action) {
                case "sum":
                    result = String.valueOf(Integer.parseInt(firstNumber) + Integer.parseInt(secondNumber));
                    return result;

                case "multiply":
                    result = String.valueOf(Integer.parseInt(firstNumber) * Integer.parseInt(secondNumber));
                    return result;

                case "dev":
                    result = String.valueOf(Integer.parseInt(firstNumber) / Integer.parseInt(secondNumber));
                    return result;

                case "subtract":
                    result = String.valueOf(Integer.parseInt(firstNumber) - Integer.parseInt(secondNumber));
                    return result;
            }
        }
        catch (ArithmeticException e){
            e.printStackTrace();
        }
        return result;
    }

    public String getFirstNumber() {
        return firstNumber;
    }

    public String getSecondNumber() {
        return secondNumber;
    }

    public String getAction() {
        return action;
    }

    public void setFirstNumber(String firstNumber) {
        this.firstNumber = firstNumber;
    }

    public void setSecondNumber(String secondNumber) {
        this.secondNumber = secondNumber;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getResult() {
        return result;
    }
}
