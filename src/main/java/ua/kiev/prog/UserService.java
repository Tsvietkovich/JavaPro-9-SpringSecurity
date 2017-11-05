package ua.kiev.prog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Transactional(readOnly = true)
    public CustomUser findByLogin(String login) {
        return userRepository.findByLogin(login);
    }

    @Transactional
    public boolean addUser(String login, String passHash, UserRole role, String email,
                           String phone) {
        if (userRepository.existsByLogin(login))
            return false;

        CustomUser user = new CustomUser(login, passHash, role, email, phone);
        userRepository.save(user);

        return true;
    }

    @Transactional
    public void updateUser(String login, String email, String phone) {
        CustomUser user = userRepository.findByLogin(login);

        user.setEmail(email);
        user.setPhone(phone);

        userRepository.save(user);
    }
    @Transactional
    public void updatePassword(long id,String passHash) {
        CustomUser user = userRepository.findOne(id);
        user.setPassword(passHash);
        userRepository.save(user);
    }

    @Transactional
    public List<CustomUser> findAll(){
        return userRepository.findAll();
    }

    @Transactional
    public void deleteUsers(long [] ids){
        for(long id:ids){
            userRepository.delete(id);
        }
    }
}
