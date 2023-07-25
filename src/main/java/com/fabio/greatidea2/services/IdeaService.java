package com.fabio.greatidea2.services;

import com.fabio.greatidea2.models.Idea;
import com.fabio.greatidea2.repositories.IdeaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class IdeaService {
    @Autowired
    private final IdeaRepository ideaRepository;

    public IdeaService(IdeaRepository ideaRepository) {
        this.ideaRepository = ideaRepository;
    }

    public Idea createIdea(Idea idea) {
        return ideaRepository.save(idea);
    }

    public List<Idea> findAllIdeas() {
        return ideaRepository.findAll();
    }

    public Idea findIdeaById(Long id) {
        Optional<Idea> u = ideaRepository.findById(id);

        if (u.isPresent()) {
            return u.get();
        } else {
            return null;
        }
    }
    public Idea getIdeaById(Long ideaId) {
        return ideaRepository.getIdeaById(ideaId);
    }
}
