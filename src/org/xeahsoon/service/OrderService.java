package org.xeahsoon.service;

import java.util.List;

import org.xeahsoon.pojo.Order;
import org.xeahsoon.pojo.OrderDetail;
import org.xeahsoon.pojo.Staff;

public interface OrderService {
	
	Order findOrderById(int id);
	
	List<Order> listAllOrders();
	
	List<OrderDetail> listOrderDetails(int order_id);
	
	List<Staff> listOrderStaffs(int order_id);
	
	int addOrderRemark(String remark, int order_id);
}