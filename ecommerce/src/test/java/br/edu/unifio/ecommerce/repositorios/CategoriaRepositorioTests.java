package br.edu.unifio.ecommerce.repositorios;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

import br.edu.unifio.ecommerce.entidades.Categoria;

@SpringBootTest
public class CategoriaRepositorioTests {

    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Test
    public void deveBuscarUmaCategoriaPorId() {
        Optional<Categoria> opt = categoriaRepositorio.findById((short) 1);

        assertTrue(opt.isPresent());

        Categoria categoria = opt.get();
        assertEquals("Roupas & Moda", categoria.getNome());
        assertEquals("Vestuário urbano, calçados e acessórios", categoria.getDescricao());
    }

    @Test
    public void deveListarTodasAsCategorias() {
        List<Categoria> categorias = categoriaRepositorio.findAll();

        assertNotNull(categorias);
        assertEquals(5, categorias.size());
        assertTrue(categorias.stream().anyMatch(c -> c.getNome().equals("Informática")));
    }
}