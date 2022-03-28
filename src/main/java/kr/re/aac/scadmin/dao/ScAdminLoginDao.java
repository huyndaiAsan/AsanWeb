package kr.re.aac.scadmin.dao;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ScAdminLoginDao {
    @Resource(name = "mssqlSession")
    protected SqlSession sqlSession;

    private String nameSpace = "scAdminLogin.";
   
   	public int selectCkId(Map param) {
   		return sqlSession.selectOne(nameSpace + "selectCkId", param);
	}

	public int selectCheckPwd(Map param) {
		return sqlSession.selectOne(nameSpace + "selectCheckPwd", param);
	}

	public HashMap selectOne(Map param) {
		return sqlSession.selectOne(nameSpace + "selectOne", param);
	}

}
