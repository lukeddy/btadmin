package com.btadmin.mapper;

import java.util.List;

import com.btadmin.entity.RoleFormMap;
import com.btadmin.mapper.base.BaseMapper;

public interface RoleMapper extends BaseMapper{
	public List<RoleFormMap> seletUserRole(RoleFormMap map);
	
	public void deleteById(RoleFormMap map);
}
