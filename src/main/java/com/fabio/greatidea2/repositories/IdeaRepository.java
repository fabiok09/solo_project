package com.fabio.greatidea2.repositories;

import com.fabio.greatidea2.models.Idea;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IdeaRepository extends CrudRepository<Idea,Long> {
    List<Idea> findAll();
    Idea getIdeaById(Long id);

}
