package project.service.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.persistence.entities.LogInAttempt;
import project.persistence.entities.User2;
import project.persistence.repositories.LogInRepository;
import project.service.LogInService;

import java.util.Collections;
import java.util.List;

@Service
public class LogInServiceImplementation implements LogInService {

    // Instance Variables
   LogInRepository repository;

    // Dependency Injection
    //@Autowired
    //public UserServiceImplementation(UserRepository repository) {
     //   this.repository = repository;
    //}

    //@Override
    //public User2 save(User2 user) {
    //    return repository.save(user);
  //  }
   @Override
   public Boolean verifyLogIn(LogInAttempt logInAttempt)
   {
      String validPassword = repository.findPassword(logInAttempt.getNameAttempt());
      if (logInAttempt.getPasswordAttempt()==validPassword){ return true;}
      else return false;
   }
//    @Override
    //public void delete(User2 user) {
      //  repository.delete(user);
    //}

    //@Override
    //public List<User2> findAll() {
      //  return repository.findAll();
    //}

    //@Override
    //public List<User2> findAllReverseOrder() {
        // Get all the Postit notes
        //List<User2> users = repository.findAll();

        // Reverse the list
        //Collections.reverse(users);

        //return users;
    //}

    //@Override
    //public User2 findOne(Long id) {
      //  return repository.findOne(id);
    //}

    @Override
    public List<User2> findByName(String name) {
        System.out.println("In FindByName IMPLEMENT");
        return repository.findByName(name);
    }
}