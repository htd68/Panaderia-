package duy.dev.data.dao;

import java.util.List;

import duy.dev.data.model.User;

public interface UserDao {

    public void insert(User user);

    public void update(User user);

    public void delete(int id);

    public User find(int id);

    public List<User> findAll();

    public User login(String email, String password);

    public User register(String email, String password);
}
