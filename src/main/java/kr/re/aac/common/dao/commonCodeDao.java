package kr.re.aac.common.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

import java.util.List;
import java.util.Map;

@Repository
public class commonCodeDao{
    private final String nameSpace = "commonCodeDao.";

    @Resource(name = "mssqlSession")
    protected SqlSession sqlSession;

    public int selectOne(Map searchMap){
    	return sqlSession.selectOne(nameSpace + "selectOne", searchMap);
    }
    
    public List<Map<String,String>> selectList(Map searchMap){
    	return sqlSession.selectList(nameSpace + "selectList", searchMap);
    }
    
}
