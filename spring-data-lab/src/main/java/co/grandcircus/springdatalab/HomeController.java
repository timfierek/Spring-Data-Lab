package co.grandcircus.springdatalab;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		model.addAttribute("grades", grades);
		
		return "ListGrades";
	}
	
	@RequestMapping("/AddGrade")
	public String addGrade(Model model) {
		Grade grade = new Grade();
		model.addAttribute("grade", grade);
		
		return "AddGrade";
	}
	
	@PostMapping("/AddGradeConfirmation")
	public String addGradeConfirmation(Model model, @RequestParam String id, @RequestParam String name, @RequestParam String type, @RequestParam double score, @RequestParam double total) {
		model.addAttribute("id", id);
		model.addAttribute("name", name); 
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		
		Grade grade = new Grade(id, name, type, score, total);
		repo.insert(grade);

		return("AddGradeConfirmation");
	}
	
	@RequestMapping("/delete-grade")
	public String deleteGrade(@RequestParam String id) {
		repo.deleteById(id);
		return "redirect:/";
	}
}
