package com.breeze.service;

import java.util.List;

import com.breeze.po.Admin;

public interface AdminService {

	List<Admin> list();

	Admin get(Integer id);

	int add(String name,String pwd, String gender, String phone, 
			String email);
	
	int update(Integer id, String name,String pwd, String gender, String phone, 
			String email);

	boolean delete(Integer id);

	List<Admin> search(String key);

	Admin login_check(Admin admin);
	
	
}
