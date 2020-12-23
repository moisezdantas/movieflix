package br.com.devesuperior.movieflix.dto;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

import br.com.devesuperior.movieflix.entities.Movie;
import br.com.devesuperior.movieflix.entities.Review;
import br.com.devesuperior.movieflix.entities.User;

public class ReviewDTO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Long id;
	@NotBlank(message = "Required is field")
	private String text;
    private Long movieId;
    private UserDTO user;
	
	public ReviewDTO() {}

	public ReviewDTO(Long id, User user, String text) {
		super();
		this.id = id;	
		this.text = text;
		this.user = new UserDTO(user);	
	}	
	
	public ReviewDTO(Long id, String text, User user, Movie movie) {
		this.id = id;
		this.text = text;
		this.user = new UserDTO(user);
		this.movieId = movie.getId();
	}

	public ReviewDTO(Review entity) {
		id = entity.getId();
		text = entity.getText();
		user = new UserDTO(entity.getUser());
		movieId = entity.getMovie().getId();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public Long getMovieId() {
		return movieId;
	}

	public void setMovieId(Long movieId) {
		this.movieId = movieId;
	}

}

