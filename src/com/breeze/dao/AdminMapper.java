package com.breeze.dao;
 
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.breeze.po.Admin;
 
public interface AdminMapper {
    
    public List<Admin> list();
    
    public Admin get(int id);  

    public List<Admin> search(String key);
    
    public int add(@Param("name")String name,  @Param("pwd")String pwd,
			@Param("gender")String gender, @Param("phone")String phone, 
			@Param("email")String email);
      
    // 进行添加、修改等操作的时候只能返回数字，而不能返回java类或其他
    public int update(@Param("id")Integer id, @Param("name")String name, @Param("pwd")String pwd,
    					@Param("gender")String gender, @Param("phone")String phone, 
    					@Param("email")String email);   
      
    public int count();    

    public boolean delete(int id);

	public Admin login_check(Admin admin);
}