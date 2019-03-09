package com.bjsxt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjsxt.mapper.FlowerMapper;
import com.bjsxt.pojo.Flower;
import com.bjsxt.service.FlowerService;

@Service
public class FlowerServiceImpl implements FlowerService {
	@Autowired
	private FlowerMapper flowerMapper;

	@Override
	public List<Flower> selectAll(String name, Integer lowprice, Integer highprice, String cname) {
		List<Flower> list = null;
		list = flowerMapper.selectAll(name, lowprice, highprice, cname);
		return list;
	}

	@Override
	public int insertOne(String name, Integer price, Integer cid) {
		Flower flower = new Flower();
		flower.setName(name);
		flower.setPrice(price);
		flower.setCid(cid);
		int i = flowerMapper.insertOne(flower);
		return i;
	}

}
