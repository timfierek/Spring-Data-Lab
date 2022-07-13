package co.grandcircus.springdatalab;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("grades")
public class Grade {
	@Id
	private String id;
	private String name;
	private String type;
	private double score;
	private double total;
	
	public Grade() {}

	public Grade(String id, String name, String type, double score, double total) {
		this.id = id;
		this.name = name;
		this.type = type;
		this.score = score;
		this.total = total;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}
	
	
}
