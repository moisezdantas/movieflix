package br.com.devesuperior.movieflix.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.devesuperior.movieflix.dto.MovieDTO;
import br.com.devesuperior.movieflix.entities.Genre;
import br.com.devesuperior.movieflix.entities.Movie;
import br.com.devesuperior.movieflix.repositories.GenreRepository;
import br.com.devesuperior.movieflix.repositories.MovieRepository;
import br.com.devesuperior.movieflix.service.exceptions.ResourceNotFoundException;

@Service
public class MovieService {

	@Autowired
	private MovieRepository movieRepository;
	
	@Autowired
	private GenreRepository genreRepository;
	
	
	@Transactional(readOnly = true)
	public Page<MovieDTO> findAllPaged(PageRequest page){
		Page<Movie> list = movieRepository.findAll(page);
		return list.map(x -> new MovieDTO(x));
	}
	
	@Transactional(readOnly = true)
	public MovieDTO findById(Long id){
		Optional<Movie> obj = movieRepository.findById(id);
		Movie entity = obj.orElseThrow(() -> new ResourceNotFoundException("Entity not found"));
		return new MovieDTO(entity);
	
	}
	
	@Transactional(readOnly = true)
	public Page<MovieDTO> findAllPaged(Long genreId, PageRequest pageRequest) {
		Genre genre = genreId == 0 ? null : genreRepository.getOne(genreId);
		Page<Movie> list = movieRepository.findAllPaged(genre, pageRequest);
		return list.map(x -> new MovieDTO(x));
	}
	
	

}
