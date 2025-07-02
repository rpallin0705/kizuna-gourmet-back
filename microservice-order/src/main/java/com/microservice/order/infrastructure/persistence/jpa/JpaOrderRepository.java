package com.microservice.order.infrastructure.persistence.jpa;

import com.microservice.order.application.mapper.OrderMapper;
import com.microservice.order.domain.model.Order;
import com.microservice.order.domain.repository.OrderRepository;
import com.microservice.order.infrastructure.persistence.springdata.SpringDataOrderRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Repository
public class JpaOrderRepository implements OrderRepository {

    private final SpringDataOrderRepository springRepo;

    public JpaOrderRepository(SpringDataOrderRepository springRepo) {
        this.springRepo = springRepo;
    }

    @Override
    public List<Order> findAll() {
        return springRepo.findAll().stream()
                .map(OrderMapper::toDomain)
                .collect(Collectors.toList());
    }

    @Override
    public Optional<Order> findById(Long id) {
        return springRepo.findById(id).map(OrderMapper::toDomain);
    }

    @Override
    public Order save(Order order) {
        return OrderMapper.toDomain(
                springRepo.save(OrderMapper.toEntity(order))
        );
    }

    @Override
    public void deleteById(Long id) {
        springRepo.deleteById(id);
    }

    @Override
    public Page<Order> findAll(Pageable pageable) {
        return springRepo.findAll(pageable)
                .map(OrderMapper::toDomain);
    }
}