package com.breeze.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.breeze.po.Admin;
import com.breeze.service.AdminService;

// spring-mvc.xml里扫描到这里是controller
@Controller
@RequestMapping("")
public class AdminController {
	@Autowired
	AdminService adminService;
	
	private Admin a;
	@RequestMapping("login_check")
	@ResponseBody
	public Admin login_check(String name,String pwd){
		a = new Admin();
		a.setName(name);
		a.setPwd(pwd);
		a = adminService.login_check(a);
		return a;
	}
	
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	
	// 按姓名/手机/邮箱查询用户
	@RequestMapping("search")
	public ModelAndView search(String key, Model model){
		ModelAndView mav = new ModelAndView();
		List<Admin> list = adminService.search(key);
		model.addAttribute("admin", list);
		mav.addObject("list", list);
		mav.setViewName("adminList");
		return mav;
	}

	// 按id查询用户
	@RequestMapping("get")
	public String get(Integer id, Model model){
		Admin admin = adminService.get(id);
		model.addAttribute("admin", admin);
		return "admin";
	}
	
	// 添加用户
	@RequestMapping("add")
	public String add(String name, String pwd, String gender, String phone, 
			String email, Model model){
		int admin = adminService.add(name, pwd, gender, phone, 
				 email);
		model.addAttribute("admin", admin);
		return "redirect:adminList";
	}
	
	// 按id修改用户
	@RequestMapping("update")
	public String update(Integer id, String name, String pwd, String gender, String phone, 
			String email, Model model){
		model.addAttribute("admin", adminService.update(id, name,pwd, gender, phone, 
				 email));
		return "redirect:adminList";
	}
	
	// 按id删除用户
	@RequestMapping("delete")
	public String delete(Integer id, Model model){
		model.addAttribute("admin", adminService.delete(id));
		return "redirect:adminList";
	}
	
	// 显示用户列表
	@RequestMapping("adminList")
	public ModelAndView adminList(){
		ModelAndView mav = new ModelAndView();
		List<Admin> list= adminService.list();
		
		// 转发参数
		mav.addObject("list", list);
		
		// 给哪个jsp参数
		mav.setViewName("adminList");
		return mav;
	}

}
