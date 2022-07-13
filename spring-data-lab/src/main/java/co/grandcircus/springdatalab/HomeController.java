package co.grandcircus.springdatalab;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/ListGrades";
	}
	
	@RequestMapping("/ListGrades")
	public String listGrades(Model model) {
		List<Grade> grades = repo.findAll();	
		
		
		
		return "ListGrades";
	}
	
}
