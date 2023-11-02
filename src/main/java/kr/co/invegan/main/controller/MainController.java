package kr.co.invegan.main.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value = "/")
	public String main(Model model) {
		logger.info("REQUEST MAIN PAGE :: TEST");
		model.addAttribute("msg","IN VEGAN :: TEST PAGE");
		return "/main";
	}
	
}
