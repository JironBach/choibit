package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Shimoda3Application {

	public static void main(String[] args) {
		SpringApplication.run(Shimoda3Application.class, args);
	}

  @GetMapping("/hello/{name}")
  public String hello_path(@PathVariable("name") String name) {// String name) {
  	return String.format("Hello %s!", name);
  }

  @GetMapping("/hello")
  public String hello_req(@RequestParam(value = "name", defaultValue = "World") String name) {
  return String.format("Hello %s!", name);
  }

}