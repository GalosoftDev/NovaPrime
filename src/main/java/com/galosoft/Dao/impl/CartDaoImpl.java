package com.galosoft.Dao.impl;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.galosoft.Dao.CartDao;
import com.galosoft.model.Cart;
import com.galosoft.service.CustomerOrderService;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{
	
	@Autowired
	private CustomerOrderService customerOrderService;
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Cart getCartById(int cartId) {
		Session session = sessionFactory.getCurrentSession();
		return (Cart) session.get(Cart.class, cartId);
	}

	@Override
	public void update(Cart cart) {
		int cartId = cart.getCartId();
		double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
		cart.setGrandTotal(grandTotal);
		
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);
		
	}
	
	@Override
	public Cart validate(int cartId) throws IOException {
		Cart cart = getCartById(cartId);
		if(cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId+"");
		}
		update(cart);
		return cart;
}
	
	
}

