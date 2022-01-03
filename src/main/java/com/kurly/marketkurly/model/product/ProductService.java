package com.kurly.marketkurly.model.product;

import java.util.List;

import com.kurly.marketkurly.domain.Product;
import com.kurly.marketkurly.domain.Product_detail;
import com.kurly.marketkurly.domain.Product_hashtag;

public interface ProductService {
	public List selectAll();
	public Product select(int product_id);
	public void insert(Product product);
	public void update(Product product);
	public void delete(int product_id);
	
}
