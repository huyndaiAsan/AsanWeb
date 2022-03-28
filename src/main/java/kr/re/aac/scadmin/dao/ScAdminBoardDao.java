package kr.re.aac.scadmin.dao;

import kr.re.aac.admin.dto.BoardDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ScAdminBoardDao {
    @Resource(name = "mssqlSession")
    protected SqlSession sqlSession;

    public int selectTotalCount(String cateroty, String search) {
        return selectTotalCount(cateroty, search, null);
    }

    public Integer selectTotalCount(String cateroty, String search, String userId) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("cateroty", cateroty);
        param.put("search", search);
        param.put("regUserId", userId);

        return sqlSession.selectOne(getNameSpace() + "selectTotalCount", param);
    }

    public List<BoardDto> selectList(int startRow, int endRow, String category, String search) {
        return selectList(startRow, endRow, category, search, null);
    }
    
    public List<BoardDto> selectList(int startRow, int endRow, String category, String search, String regUserId) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("startRow", startRow);
        param.put("endRow", endRow);
        param.put("category", category);
        param.put("search", search);
        param.put("regUserId", regUserId);

        return sqlSession.selectList(getNameSpace() + "selectList", param);
    }
    
    public int selectTotalCount(Map param) {
		return sqlSession.selectOne(getNameSpace() + "selectTotalCount", param);
	}
    
    public List<BoardDto> selectList(Map param) {
    	return sqlSession.selectList(getNameSpace() + "selectList", param);
	}
    
    public List<BoardDto> selectNewList(Map<String, Object> paramMap) {
        return sqlSession.selectList(getNameSpace() + "selectNewList", paramMap);
    }

    public BoardDto selectOne(int id) {
        return sqlSession.selectOne(getNameSpace() + "selectOne", id);
    }

    public BoardDto selectPreOne(int id, String category, String search, String regUserId) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("boardId", id);
        param.put("category", category);
        param.put("search", search);
        param.put("regUserId", regUserId);

        return sqlSession.selectOne(getNameSpace() + "selectPreOne", param);
    }

    public BoardDto selectNextOne(int id, String category, String search, String regUserId) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("boardId", id);
        param.put("category", category);
        param.put("search", search);
        param.put("regUserId", regUserId);

        return sqlSession.selectOne(getNameSpace() + "selectNextOne", param);
    }

    public void insert(BoardDto dto) {
        sqlSession.insert(getNameSpace() + "insert", dto);
    }

    public void delete(int id) {
        sqlSession.update(getNameSpace() + "delete", id);
    }

    public void update(BoardDto dto) {
        sqlSession.update(getNameSpace() + "update", dto);
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
        return "kr.re.aac.scadmin.dao.ScAdminBoardDao.";
    }

}
