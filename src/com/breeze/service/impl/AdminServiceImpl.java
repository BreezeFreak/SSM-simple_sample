package com.breeze.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.breeze.dao.AdminMapper;
import com.breeze.po.Admin;
import com.breeze.service.AdminService;

@Service
public class AdminServiceImpl  implements AdminService{
	@Autowired
	AdminMapper adminMapper;
	
	
	public List<Admin> list(){
		return adminMapper.list();
	}

	public Admin get(Integer id) {
		// TODO Auto-generated method stub
		return this.adminMapper.get(id);
	};

	public int add(String name,String pwd, String gender, String phone, 
			String email) {
		// TODO Auto-generated method stub
		return this.adminMapper.add(name,pwd, gender, phone, 
				 email);
	}
	
	public int update(Integer id, String name,String pwd, String gender, String phone, 
			String email) {
		// TODO Auto-generated method stub
		return this.adminMapper.update(id, name, pwd, gender, phone, 
				 email);
	};
	
	public boolean delete(Integer id) {
		return this.adminMapper.delete(id);
	}

	public List<Admin> search(String key) {
		// TODO Auto-generated method stub
		return adminMapper.search(key);
	}

	public Admin login_check(Admin admin) {
		// TODO Auto-generated method stub
		return adminMapper.login_check(admin);
	}


}
