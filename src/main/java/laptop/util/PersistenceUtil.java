package laptop.util;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class PersistenceUtil {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("AppPU");
    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}