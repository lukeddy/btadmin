package com.btadmin.mapper;

import java.util.List;

import com.btadmin.entity.UserFormMap;
import com.btadmin.mapper.base.BaseMapper;


public interface UserMapper extends BaseMapper{

	public List<UserFormMap> findUserPage(UserFormMap userFormMap);
	
}
