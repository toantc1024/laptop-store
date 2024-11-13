package laptop.listener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import laptop.service.AdminService;
import laptop.util.EntityManagerUtil;

@WebListener
public class EntityManagerFactoryListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Dùng để khởi tạo database khi mới chạy chương trình
        EntityManagerUtil.getEntityManagerFactory();

        // Thiết lập tài khoản Admin mặc định cho hệ thống
        try {
            System.out.println("Thiết lập tài khoản mặc định...");
            AdminService adminService = new AdminService();
            adminService.initializeAdminAccount();

            System.out.println("Tạo tài khoản Admin thành công");
        } catch (Exception e) {
            System.out.println("Tài khoản Admin đã tồn tại");
            e.printStackTrace();
        }

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Close EntityManagerFactory on application shutdown
        EntityManagerUtil.closeEntityManagerFactory();
    }
}
