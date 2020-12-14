package br.com.devesuperior.movieflix.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.devesuperior.movieflix.entities.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{

}
