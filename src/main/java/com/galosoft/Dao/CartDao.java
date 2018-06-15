package com.galosoft.Dao;

import java.io.IOException;

import com.galosoft.model.Cart;

public interface CartDao {

	Cart getCartById(int cartId);
	void update(Cart cart);
	Cart validate(int cartId) throws IOException;
}
