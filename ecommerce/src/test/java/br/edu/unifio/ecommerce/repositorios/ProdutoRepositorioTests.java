package br.edu.unifio.ecommerce.repositorios;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

import br.edu.unifio.ecommerce.entidades.Produto;

@SpringBootTest
public class ProdutoRepositorioTests {

    @Autowired
    private ProdutoRepositorio produtoRepositorio;

    @Test
    public void deveBuscarUmProdutoPorId() {
        Optional<Produto> opt = produtoRepositorio.findById(1);

        assertTrue(opt.isPresent());

        Produto produto = opt.get();
        assertEquals("Calça Baggy Streetwear", produto.getNome());
        assertEquals(0, produto.getPreco().compareTo(new BigDecimal("189.90")));
        assertEquals((short) 35, produto.getEstoque());
    }

    @Test
    public void deveListarTodosOsProdutos() {
        List<Produto> produtos = produtoRepositorio.findAll();

        assertNotNull(produtos);
        assertEquals(5, produtos.size());
        assertTrue(produtos.stream().anyMatch(p -> p.getNome().equals("Fone Over-Ear Bluetooth")));
    }

    @Test
    public void produtoDeveEstarRelacionadoComSuaCategoria() {
        Optional<Produto> opt = produtoRepositorio.findById(1);

        assertTrue(opt.isPresent());
        Produto produto = opt.get();

        assertNotNull(produto.getCategoria());
        assertEquals("Roupas & Moda", produto.getCategoria().getNome());
        assertEquals("Vestuário urbano, calçados e acessórios", produto.getCategoria().getDescricao());
    }
}