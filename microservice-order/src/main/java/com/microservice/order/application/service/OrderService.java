package com.microservice.order.application.service;

import com.microservice.order.domain.model.Order;
import com.microservice.order.domain.model.OrderStatus;
import com.microservice.order.domain.model.OrderStatusHistory;
import com.microservice.order.web.dto.KitchenOrderDTO;
import com.microservice.order.web.dto.OrderDTO;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface OrderService {
    List<Order> getAll();
    List<OrderDTO> getAllFullOrders();
    Page<OrderDTO> getAllPaged(Pageable pageable);
    OrderDTO getFullOrder(Long id);
    Order create(Order order);
    void delete(Long id);

    ///
    /// SERVICIO KITCHEN
    ///

    List<KitchenOrderDTO> getOrdersForKitchen();
    void updateStatus(Long orderId, OrderStatus newStatus);
    List<OrderStatusHistory> getStatusHistory(Long orderId);

}