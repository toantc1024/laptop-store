package laptop.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.TypedQuery;
import laptop.dto.User;
import laptop.listener.EntityManagerFactoryListener;
import laptop.util.EntityManagerUtil;
import laptop.util.PersistenceUtil;

public class UserDAO extends BaseDAO<User> {
    public UserDAO() {
        super(User.class);
    }

    public User findByEmail(String email) {
        EntityManager em = EntityManagerUtil.getEntityManager();
        User user = null;

        try {
            String query = "SELECT u FROM User u WHERE u.email = :email";
            user = em.createQuery(query, User.class)
                    .setParameter("email", email)
                    .getSingleResult();
        } catch (NoResultException e) {
            System.out.println("No user found with email: " + email);
        } finally {
            em.close();
        }

        return user;
    }
}
