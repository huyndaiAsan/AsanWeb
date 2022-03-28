package kr.re.aac.main.dao;

import kr.re.aac.admin.dto.BoardDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class BoardDao {
    @Resource(name = "mssqlSession")
    protected SqlSession sqlSession;

    public int selectTotalCount(Map<String, Object> param) {
    	return sqlSession.selectOne(getNameSpace() + "selectTotalCount", param);
    }

    public List<Map> selectList(Map<String, Object> param) {
        return sqlSession.selectList(getNameSpace() + "selectList", param);
    }
    
    public List<Map> selectTopMarkList(Map<String, Object> param) {
        return sqlSession.selectList(getNameSpace() + "selectTopMarkList", param);
    }
    
    public List<BoardDto> selectNewList(Map<String, Object> paramMap) {
        return sqlSession.selectList(getNameSpace() + "selectNewList", paramMap);
    }

    public BoardDto selectOne(int id) {
        return sqlSession.selectOne(getNameSpace() + "selectOne", id);
    }

    public BoardDto selectPreOne(BoardDto paramMap) {

        return sqlSession.selectOne(getNameSpace() + "selectPreOne", paramMap);
    }

    public BoardDto selectNextOne(BoardDto paramMap) {

        return sqlSession.selectOne(getNameSpace() + "selectNextOne", paramMap);
    }

    public void updateIncreaseRead(int id) {
        sqlSession.update(getNameSpace() + "updateIncreaseRead", id);
    }

    public Map selectMainList() {
    	Map resultList = new HashMap();
    	Map<String, Object> param = new HashMap<String, Object>();
        param.put("startRow", 0);
        param.put("endRow", 3);
        param.put("category", "news");
		resultList.put("newsList", sqlSession.selectList(getNameSpace() + "selectList", param));
		param.put("category", "notice");
		resultList.put("noticeList", sqlSession.selectList(getNameSpace() + "selectList", param));
		param.put("category", "gallery");
		resultList.put("galleryList", sqlSession.selectList(getNameSpace() + "selectList", param));
		
		return resultList;
	}
    
    protected String getNameSpace() {
        return "BoardDao.";
    }

	

}
