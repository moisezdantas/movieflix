package br.com.devesuperior.movieflix.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.devesuperior.movieflix.entities.Genre;
import br.com.devesuperior.movieflix.entities.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long>{

	@Query("SELECT obj FROM Movie obj WHERE :genre IS NULL OR obj.genre = :genre")
	Page<Movie> findAllPaged(Genre genre, Pageable pageable);
}
