package system.DAO;

import org.springframework.data.repository.CrudRepository;
import system.model.User;


public interface UserRepository extends CrudRepository<User, Integer> {

    User findByUsername(String username);

    User findById(Long userID);

    User findByActivationCode(String code);

    User findByEmail(String email);
}
