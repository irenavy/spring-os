package com.example.springos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.springos.config.GreetingConfig;

@RestController
public class GreetingTwoController {
	
	@Autowired
	private GreetingConfig greetingConfig;
	
	@GetMapping("/greeting")
	public String greeting(@RequestParam(value = "name", defaultValue = "Hello World") String name) {
		System.out.println("Greet with message from ConfigurationProperties");
    return greetingConfig.getMessage();
	}

}
