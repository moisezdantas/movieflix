package br.com.devesuperior.movieflix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.devesuperior.movieflix.dto.ReviewDTO;
import br.com.devesuperior.movieflix.entities.Review;
import br.com.devesuperior.movieflix.repositories.MovieRepository;
import br.com.devesuperior.movieflix.repositories.ReviewRepository;
import br.com.devesuperior.movieflix.repositories.UserRepository;

@Service
public class ReviewService {

	@Autowired
	private ReviewRepository reviewRepository;

	@Autowired
	private MovieRepository movieRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private AuthService authService;

	@Transactional
	public ReviewDTO insert(ReviewDTO dto) {
		Review entity = new Review();
		entity.setText(dto.getText());
		entity.setMovie(movieRepository.getOne(dto.getMovieId()));
		entity.setUser(userRepository.getOne(authService.autheticated().getId()));
		entity = reviewRepository.save(entity);
		return new ReviewDTO(entity);
	}
}
