package com.study.springboot.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MyUserDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<MyUserDTO> listForBeanPropertyRowMapper() {
		String query = "select * from myuser";
		List<MyUserDTO> list = jdbcTemplate.query(query, new BeanPropertyRowMapper<MyUserDTO>(MyUserDTO.class));
		
		//for(UserDTO my : list) {
		//  System.out.println(my);
		//}
		
		return list;
	}

}
