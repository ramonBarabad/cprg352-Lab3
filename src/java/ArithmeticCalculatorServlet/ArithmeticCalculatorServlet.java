package ArithmeticCalculatorServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ArithmeticCalculatorServlet", urlPatterns = {"/arithmetic"})
public class ArithmeticCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("notification", "Result: ---");
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String operation = request.getParameter("btn_operation");
        String firstNumber = request.getParameter("first_number");
        String secondNumber = request.getParameter("second_number");
        String notification = "";

        try {
            int val1 = Integer.parseInt(firstNumber);
            int val2 = Integer.parseInt(secondNumber);
            int result = 0;

            switch (operation) {
                case "+":
                    result = val1 + val2;
                    break;
                case "-":
                    result = val1 - val2;
                    break;
                case "*":
                    result = val1 * val2;
                    break;
                case "%":
                    result = val1 % val2;
                    break;
            }
            
            notification = String.format("Result: %d", result);

        } catch (Exception e) {
            notification = "Result: Invalid";
        }

        request.setAttribute("firstNumber", firstNumber);
        request.setAttribute("secondNumber", secondNumber);
        request.setAttribute("notification", notification);
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);

    }

}
