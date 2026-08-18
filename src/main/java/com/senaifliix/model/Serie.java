package com.senaifliix.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Table(name = "series")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Serie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false, length = 150)
    private String titulo;

    @Column(nullable = false, length = 100)
    private String criador;

    @Column(name = "ano_lancamento", nullable = false)
    private Integer anoLancamento;

    @Column(nullable = false, length = 50)
    private String genero;

    @Column(nullable = false)
    private Integer temporadas;

    @Column(nullable = false)
    private Integer episodios;

    @Column(name = "nota_avaliacao", precision = 3, scale = 1)
    private BigDecimal notaAvaliacao;

    @Column(nullable = false, length = 50)
    private String plataforma;
}
