package br.com.devesuperior.movieflix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.devesuperior.movieflix.entities.User;
import br.com.devesuperior.movieflix.repositories.UserRepository;
import br.com.devesuperior.movieflix.service.exceptions.ForbiddenException;
import br.com.devesuperior.movieflix.service.exceptions.UnauthorizedException;


@Service
public class AuthService {

	@Autowired
	private UserRepository userRepository;

	@Transactional(readOnly = true)
	public User autheticated() {
		try {
			String username = SecurityContextHolder.getContext().getAuthentication().getName();
			return userRepository.findByEmail(username);
		} catch (Exception e) {
			throw new UnauthorizedException("Invalid user");
		}

	}

	public void validadeSelfOrAdmin(Long userId) {
		User user = autheticated();
		if (!user.getId().equals(userId) && !user.hasHole("ROLE_MEMBER")) {
			throw new ForbiddenException("Access denid");
		}
	}

}
