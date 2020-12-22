package br.com.devesuperior.movieflix.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import br.com.devesuperior.movieflix.entities.Genre;
import br.com.devesuperior.movieflix.entities.Movie;

public class GenreDTO implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	private String name;
	private Set<MovieDTO> movies = new HashSet<>();
	
	
	public GenreDTO() {}


	public GenreDTO(Long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public GenreDTO(Genre entity) {
		id = entity.getId();
		name = entity.getName();	
	}
	
	public GenreDTO(Genre entity, Set<Movie> setMovies) {
		id = entity.getId();
		name = entity.getName();
		setMovies.forEach(m -> this.movies.add(new MovieDTO(m)));
	}

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Set<MovieDTO> getMovies() {
		return movies;
	}
	
	
}
