package laptop.controller.authentication;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import laptop.dto.User;
import laptop.enums.Role;
import laptop.exception.user.UserAlreadyExistException;
import laptop.service.CustomerProfileService;

import java.io.IOException;

@WebServlet(name = "Register", urlPatterns = "/register")
public class CustomerRegisterController extends HttpServlet {
    private CustomerProfileService customerProfileService;

    @Override
    public void init() throws ServletException {
        super.init();
        customerProfileService = new CustomerProfileService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("views/auth/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
        try {
            User user = new User(
                    "Admin",
                    "User",
                    "tctoan1024@gmail.com",
                    "000-000-0000",
                    "ToanTran2k4@!",
                    true,
                    Role.CUSTOMER
            );
            customerProfileService.registerCustomer(user);
        } catch (UserAlreadyExistException e) {
            // Appear error in client
        } catch (Exception e) {
            // Appear unexpected error
            e.printStackTrace();
        }
    }
}
