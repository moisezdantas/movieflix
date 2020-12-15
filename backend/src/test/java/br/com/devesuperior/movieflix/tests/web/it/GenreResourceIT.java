package br.com.devesuperior.movieflix.tests.web.it;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.databind.ObjectMapper;

import br.com.devesuperior.movieflix.dto.GenreDTO;
import br.com.devesuperior.movieflix.repositories.GenreRepository;
import br.com.devesuperior.movieflix.tests.utils.AuthenticationUtil;

@SpringBootTest
@AutoConfigureMockMvc
@Transactional
public class GenreResourceIT {

	@Autowired
	private MockMvc mockMvc;

	@Autowired
	private GenreRepository genreRepository;
	
	@Autowired
	private ObjectMapper objectMapper;
	
	@Autowired
	private AuthenticationUtil authenticationUtil;

	private String visitorUsername;
	private String visitorPassword;
	private String memberUsername;
	private String memberPassword;
	
	@BeforeEach
	void setUp() throws Exception {
		
		visitorUsername = "bob@gmail.com";
		visitorPassword = "123456";
		memberUsername = "ana@gmail.com";
		memberPassword = "123456";
	}

	@Test
	public void findAllShouldReturnUnauthorizedWhenNotValidToken() throws Exception {

		ResultActions result =
				mockMvc.perform(get("/genres")
					.contentType(MediaType.APPLICATION_JSON));

		result.andExpect(status().isUnauthorized());
	}
	
	@Test
	public void findAllShouldReturnAllGenresWhenVisitorAuthenticated() throws Exception {

		String accessToken = authenticationUtil.obtainAccessToken(visitorUsername, visitorPassword);
		
		long countGenres = genreRepository.count();		

		ResultActions result =
				mockMvc.perform(get("/genres")
					.header("Authorization", "Bearer " + accessToken)
					.contentType(MediaType.APPLICATION_JSON));

		result.andExpect(status().isOk());
		Assertions.assertEquals(countGenres, getGenres(result).length);
	}


	private GenreDTO[] getGenres(ResultActions result) throws Exception {
		String json = result.andReturn().getResponse().getContentAsString();
		return objectMapper.readValue(json, GenreDTO[].class);
	}
}