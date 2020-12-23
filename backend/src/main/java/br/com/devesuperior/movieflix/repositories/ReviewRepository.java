package br.com.devesuperior.movieflix.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.devesuperior.movieflix.entities.Review;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long>{

}
