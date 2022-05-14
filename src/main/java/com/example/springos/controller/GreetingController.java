package com.example.springos.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {
	
	@Value("${greeting.message}")
	private String message;

	@GetMapping("/greeting")
	public String greeting(@RequestParam(value = "name", defaultValue = "Hello World") String name) {
		System.out.println("Greet with message from @Value");
		return message;
	}

}
