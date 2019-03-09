package com.bjsxt.controller;


import javax.servlet.http.HttpServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjsxt.service.FlowerService;
@Controller
public class RegisterController extends HttpServlet {
	
	@Autowired
	private FlowerService flowerService;
	

	@RequestMapping("/register")
	public String register(String name,Integer price,Integer cid) {
		flowerService.insertOne(name, price, cid);
		return "redirect:/index.jsp";
	}
}
