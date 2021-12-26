package com.project.codenames.model;

import java.util.List;

public interface CodenamesDAO {
	public void insert(CodenamesDTO dto);
	
	public List<CodenamesDTO> setup();
	
	
}
