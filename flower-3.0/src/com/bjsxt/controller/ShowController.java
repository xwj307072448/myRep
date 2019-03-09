package com.bjsxt.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bjsxt.pojo.Flower;
import com.bjsxt.service.FlowerService;
import com.google.gson.Gson;

@Controller
public class ShowController {
	@Autowired
	private FlowerService flowerService;


	@RequestMapping("/showController")
	public void mainServlet(HttpServletResponse resp, String name, Integer lowprice, Integer highprice, String cname) {
		try {
			List<Flower> list = flowerService.selectAll(name, lowprice, highprice, cname);
			resp.getWriter().write(new Gson().toJson(list));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
