package br.com.devesuperior.movieflix.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.devesuperior.movieflix.dto.GenreDTO;
import br.com.devesuperior.movieflix.entities.Genre;
import br.com.devesuperior.movieflix.repositories.GenreRepository;

@Service
public class GenreService {

	@Autowired
	private GenreRepository genreRepository;
	
	public List<GenreDTO> findAll(){
		List<Genre> genres = genreRepository.findAll();
		return genres.stream().map(x -> new GenreDTO(x)).collect(Collectors.toList());
	}
	
}
