package com.trainingbasket.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trainingbasket.model.Todo;
import com.trainingbasket.services.TodoService;

@Controller
public class TodoController {

	@Autowired
	TodoService service;

	@RequestMapping(value = "/list-todos", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		List<Todo>  todos = service.retrieveTodos("Dheeraj");
		model.addAttribute("todos",todos );
		return "todo";
	}

	@RequestMapping(value = "/addtodo", method = RequestMethod.POST)
	public String addTodos(ModelMap model, @RequestParam String user, @RequestParam String desc,
			@RequestParam String targetDate, @RequestParam boolean isDone) {
		String[] arrDate = targetDate.split("-");
		service.addTodo(user, desc,
				LocalDate.of(Integer.parseInt(arrDate[2]), Integer.parseInt(arrDate[1]), Integer.parseInt(arrDate[0])),
				isDone);
		model.addAttribute("todos", service.retrieveAllTodos());
		return "todo";
	}

}
