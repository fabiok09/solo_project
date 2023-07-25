package com.fabio.greatidea2.repositories;

import com.fabio.greatidea2.models.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User,Long> {
    User findByEmail(String email);
    List<User> findByLikedIdeas_Id(Long ideaId);
}
