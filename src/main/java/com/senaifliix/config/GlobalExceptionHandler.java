package com.senaifliix.config;

import org.springframework.data.core.PropertyReferenceException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.Map;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(PropertyReferenceException.class)
    public ResponseEntity<Map<String, Object>> handlePropertyReferenceException(PropertyReferenceException ex) {
        Map<String, Object> body = Map.of(
                "erro", "campo de ordenação invalido",
                "mensagem", "Verifique o nome do campo usado no parametro 'sort'. " +
                        "Filmes: id, titulo, anoLancamento, genero, duracaoMinutos. " +
                        "Series: id, titulo, criador, anoLancamento, genero, temporadas, episodios, notaAvaliacao, plataforma."
        );
        return ResponseEntity.badRequest().body(body);
    }

}
