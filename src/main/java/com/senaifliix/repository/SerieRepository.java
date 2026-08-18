package com.senaifliix.repository;

import com.senaifliix.model.Serie;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SerieRepository extends JpaRepository<Serie, Integer> {

    Page<Serie> findByPlataformaIgnoreCase(String plataforma, Pageable pageable);

}
