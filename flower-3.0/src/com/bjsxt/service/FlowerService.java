package com.bjsxt.service;

import java.util.List;

import com.bjsxt.pojo.Flower;

public interface FlowerService {

	List<Flower> selectAll(String name, Integer lowprice, Integer highprice, String cname);

	int insertOne(String name, Integer price, Integer cid);

}
