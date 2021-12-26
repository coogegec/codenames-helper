package com.project.codenames.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodenamesDAOImpl implements CodenamesDAO {
	
	@Inject
	SqlSession session;

	@Override
	public void insert(CodenamesDTO dto) {
		session.insert("codenames.insert", dto);
	}

	@Override
	public List<CodenamesDTO> setup() {
		return session.selectList("codenames.setup");
	}

}
