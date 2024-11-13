package laptop.util;

import laptop.dto.User;
import org.mindrot.jbcrypt.BCrypt;

public class PasswordUtil {
    /**
     * Hashes a plain-text password using BCrypt.
     *
     * @param plainPassword The plain-text password.
     * @return The hashed password.
     */
    public static String hashPassword(String plainPassword) {
        return BCrypt.hashpw(plainPassword, BCrypt.gensalt());
    }

    /**
     * Verifies a plain-text password against a hashed password.
     *
     * @param plainPassword The plain-text password.
     * @param hashedPassword The hashed password.
     * @return True if the passwords match, else false.
     */
    public static boolean checkPassword(String plainPassword, String hashedPassword) {
        return BCrypt.checkpw(plainPassword, hashedPassword);
    }
}
