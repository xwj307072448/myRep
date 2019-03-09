package com.bjsxt.mapper;

import java.util.List;

import com.bjsxt.pojo.Flower;

public interface FlowerMapper {

	List<Flower> selectAll(String name,Integer lowprice,Integer highprice,String cname);

	int insertOne(Flower flower);

}
