package com.tj330.catalogservice.domain;

import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;

import java.math.BigDecimal;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.jdbc.Sql;

@DataJpaTest(
        properties = {
            "spring.test.database.replace=none",
            "spring.datasource.url=jdbc:tc:postgresql:16-alpine:///db",
        })
// @Import(ContainersConfig.class)
@Sql("/test-data.sql")
class ProductRepositoryTest {

    @Autowired
    private ProductRepository productRepository;

    @Test
    void shouldGetAllProducts() {
        List<ProductEntity> products = productRepository.findAll();
        assertThat(products).hasSize(15);
    }

    @Test
    void shouldGetProductByCode() {
        ProductEntity product = productRepository.findByCode("P001").orElseThrow();
        assertThat(product.getCode()).isEqualTo("P001");
        assertThat(product.getName()).isEqualTo("Clean Code");
        assertThat(product.getDescription())
                .isEqualTo("A Handbook of Agile Software Craftsmanship by Robert C. Martin");
        assertThat(product.getPrice()).isEqualTo(new BigDecimal("45.99"));
    }

    @Test
    void shouldReturnEmptyWhenProductCodeNotExists() {
        assertThat(productRepository.findByCode("invalid_product_code")).isEmpty();
    }
}
