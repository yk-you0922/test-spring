package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Test1Application {
	
	@GetMapping("/Message")
	public String getMessage() {
		return "Welcom !";
	}

	public static void main(String[] args) {
		SpringApplication.run(Test1Application.class, args);
	}

}
