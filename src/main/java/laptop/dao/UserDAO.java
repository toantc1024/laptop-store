package laptop.dao;

import jakarta.persistence.NoResultException;
import laptop.model.User;
import laptop.util.TransactionUtil;

import java.util.Optional;
import java.util.UUID;

public class UserDAO {

    // Phương thức để lưu (save) một đối tượng User vào cơ sở dữ liệu
    public User save(User user) {
        return TransactionUtil.execute(
                em -> {
                    em.persist(user); // Thêm đối tượng User vào cơ sở dữ liệu
                    return user;
                },
                true, // Cần transaction cho thao tác ghi (write)
                "Lỗi khi lưu user"
        );
    }

    // Phương thức để cập nhật (update) một đối tượng User
    public User update(User user) {
        return TransactionUtil.execute(
                em -> em.merge(user), // Cập nhật đối tượng User trong cơ sở dữ liệu
                true, // Cần transaction cho thao tác ghi (write)
                "Lỗi khi cập nhật user"
        );
    }

    // Phương thức để xóa (delete) một đối tượng User theo ID
    public boolean deleteById(UUID userId) {
        return TransactionUtil.execute(
                em -> {
                    User user = em.find(User.class, userId); // Tìm đối tượng User theo ID
                    if (user != null) {
                        em.remove(user); // Xóa đối tượng nếu tìm thấy
                        return true;
                    }
                    return false;
                },
                true, // Cần transaction cho thao tác ghi (write)
                "Lỗi khi xóa user"
        );
    }

    // Phương thức để tìm kiếm (find) một đối tượng User theo ID
    public Optional<User> findById(UUID userId) {
        return TransactionUtil.execute(
                em -> {
                    User user = em.find(User.class, userId); // Tìm đối tượng User theo ID
                    return Optional.ofNullable(user);
                },
                false, // Không cần transaction cho thao tác đọc (read)
                "Lỗi khi tìm user theo ID"
        );
    }

    // Phương thức để tìm kiếm (find) một đối tượng User theo email
    public Optional<User> findByEmail(String email) {
        return TransactionUtil.execute(
                em -> {
                    try {
                        User user = em.createQuery("SELECT u FROM User u WHERE u.email = :email", User.class)
                                .setParameter("email", email)
                                .getSingleResult(); // Thực hiện truy vấn để tìm User theo email
                        return Optional.ofNullable(user);
                    } catch (NoResultException e) {
                        return Optional.empty();
                    }
                },
                false, // Không cần transaction cho thao tác đọc (read)
                "Lỗi khi tìm user theo email"
        );
    }
}
