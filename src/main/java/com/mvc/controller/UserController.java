package com.mvc.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.entity.User;
import com.mvc.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/home")
	public String home(Model model) {

		List<User> list = userService.getAllUser();
		model.addAttribute("userList", list);
		return "home";
	}

	@RequestMapping("/adduser")
	public String adduser() {

		return "adduser";
	}

	@RequestMapping(path = "/createUser", method = RequestMethod.POST)
	public String createUser(@ModelAttribute User user) {
		userService.createUser(user);

		return "redirect:/home";
	}

	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable int id) {
		userService.deleteUser(id);
		return "redirect:/home";
	}

	@RequestMapping("/editUser/{id}")
	public String editUser(@PathVariable int id, Model model) {

		User user = userService.getUserById(id);

		List<String> cities = Arrays.asList("los_angeles", "chicago", "houston", "miami");
		model.addAttribute("user", user);

		model.addAttribute("cities", cities);

		List<String> professionalSkills = Arrays.asList("programming", "design", "communication", "leadership");
		model.addAttribute("professionalSkills", professionalSkills);
		
		return "edit";

	}
	
	@RequestMapping(path = "/updateUser",method = RequestMethod.POST)
	public String updateUser(@ModelAttribute User user) {
		
		userService.update(user);
		return  "redirect:/home";
	}
	@RequestMapping(value = "/searchUser", method = RequestMethod.GET)
    public String searchUser(@RequestParam("searchTerm") String searchTerm, Model model) {
        List<User> userList = userService.searchUsers(searchTerm);
        model.addAttribute("userList", userList);
        return "home"; // Return the name of your home view.
    }

	

}
