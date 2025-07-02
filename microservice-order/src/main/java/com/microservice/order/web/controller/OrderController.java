package com.microservice.order.web.controller;

import com.microservice.order.application.service.OrderService;
import com.microservice.order.domain.model.Order;
import com.microservice.order.web.dto.*;
import com.microservice.order.web.mapper.OrderDtoMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/orders")
public class OrderController {

    private final OrderService service;

    public OrderController(OrderService service) {
        this.service = service;
    }

    @GetMapping("/admin")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<Page<OrderDTO>> getAllPaged(Pageable pageable){
        return ResponseEntity.ok(service.getAllPaged(pageable));
    }

    @GetMapping
    @PreAuthorize("hasAnyRole('USER', 'COOK')")
    public ResponseEntity<List<OrderDTO>> getAll() {
        return ResponseEntity.ok(service.getAllFullOrders());
    }

    @GetMapping("/{id}")
    public ResponseEntity<OrderDTO> getById(@PathVariable Long id) {
        return ResponseEntity.ok(service.getFullOrder(id));
    }

    @PostMapping
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<OrderDTO> create(@RequestBody OrderCreateDTO dto) {
        Order created = service.create(OrderDtoMapper.toDomain(dto));
        return ResponseEntity.ok(service.getFullOrder(created.getId()));
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        service.delete(id);
        return ResponseEntity.noContent().build();
    }
}
