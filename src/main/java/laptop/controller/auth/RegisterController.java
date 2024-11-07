package laptop.controller.auth;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import laptop.model.Customer;
import laptop.model.User;
import laptop.model.enums.CustomerType;
import laptop.service.CustomerService;
import laptop.service.UserService;
import laptop.util.MessageConstants;

import java.io.IOException;
import java.util.Optional;
import java.util.UUID;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private CustomerService customerService;

    @Override
    public void init() throws ServletException {
        this.customerService = new CustomerService(); // Khởi tạo UserService
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy thông tin từ yêu cầu
            String email = request.getParameter("email");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String password = request.getParameter("password");

            // Tạo một đối tượng User mới
            Customer customer = new Customer(email, firstName, lastName, true, password, CustomerType.NORMAL);
            // Đăng ký người dùng
            Optional<Customer> registeredCustomer = customerService.registerCustomer(customer);

            // Đặt thuộc tính request để chuyển đến JSP
            registeredCustomer.ifPresentOrElse(
                    c -> {
                        request.setAttribute("firstName", c.getFirstName());
                        request.setAttribute("lastName", c.getLastName());
                        request.setAttribute("email", c.getEmail());
                    },
                    () -> {

                    }
            );

            // Chuyển hướng đến trang registerSuccess.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/user/registerSuccess.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            // Hiển thị thông báo lỗi
            request.setAttribute("errorMessage", MessageConstants.ERROR_SAVING_USER);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/user/registerError.jsp"); // Trang JSP hiển thị lỗi
            dispatcher.forward(request, response);
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Chuyển hướng đến trang đăng ký (nếu cần)
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/user/registerForm.jsp");
        dispatcher.forward(request, response);
    }
}
