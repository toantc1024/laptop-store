package laptop.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import java.util.function.Function;

public class TransactionUtil {

    // Phương thức chung cho tất cả các thao tác CRUD với thông báo lỗi tùy chỉnh
    public static <R> R execute(Function<EntityManager, R> action, boolean isTransactional, String errorMessage) {
        EntityManager em = null;
        EntityTransaction transaction = null;

        try {
            em = DBConnectionUtil.getEmFactory().createEntityManager();

            // Bắt đầu một transaction nếu thao tác yêu cầu
            if (isTransactional) {
                transaction = em.getTransaction();
                transaction.begin();
            }

            // Thực hiện hành động và lấy kết quả
            R result = action.apply(em);

            // Commit transaction nếu cần thiết
            if (isTransactional) {
                transaction.commit();
            }

            return result; // Trả về kết quả của thao tác

        } catch (Exception e) {
            // Rollback transaction nếu có lỗi xảy ra và nếu thao tác là transactional
            if (isTransactional && transaction != null && transaction.isActive()) {
                transaction.rollback();
            }
            logError(e, errorMessage); // Sử dụng phương thức chuyên dụng để ghi log
            throw new RuntimeException(
                    errorMessage != null && !errorMessage.isEmpty() ? errorMessage : "Transaction error",
                    e
            );
        } finally {
            if (em != null) {
                em.close(); // Đảm bảo EntityManager được đóng để tránh rò rỉ tài nguyên
            }
        }
    }

    // Phương thức chuẩn hóa để ghi log lỗi
    private static void logError(Exception e, String message) {
        // Thay thế bằng một framework ghi log phù hợp nếu cần
        System.err.println(message);
        e.printStackTrace();
    }
}
