package com.senaifliix.repository;

import com.senaifliix.model.Filme;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FilmeRepository extends JpaRepository<Filme, Integer> {

    Page<Filme> findByGeneroContainingIgnoreCase(String genero, Pageable pageable);



}
