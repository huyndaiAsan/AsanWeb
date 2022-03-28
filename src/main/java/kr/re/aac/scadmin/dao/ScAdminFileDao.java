package kr.re.aac.scadmin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.re.aac.admin.dto.FileDto;
import kr.re.aac.admin.dto.NewFileDto;

@Repository
public class ScAdminFileDao {
    private final String nameSpace = "kr.re.aac.scadmin.dao.ScAdminFileDao.";

    @Resource(name = "mssqlSession")
    protected SqlSession sqlSession;

    public FileDto selectOne(int fileId) {
        return sqlSession.selectOne(nameSpace + "selectOne", fileId);
    }
    
    public FileDto selectFileOne(int id) {
        return sqlSession.selectOne(nameSpace + "selectFileOne", id);
    }

    public void insert(FileDto fileDto) {
        sqlSession.insert(nameSpace + "insert", fileDto);
    }
    
    // new
    public void newInsert(NewFileDto fileDto) {
        sqlSession.insert(nameSpace + "newInsert", fileDto);
    }

    public void delete(int fileId) {
        sqlSession.delete(nameSpace + "delete", fileId);
    }

    public void newDelete(int fileId) {
        sqlSession.delete(nameSpace + "newDelete", fileId);
    }
    

    public int update(int boardId, int fileId) {
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("boardId", boardId);
        param.put("fileId", fileId);
        return sqlSession.insert(nameSpace + "update", param);
    }

    public List<FileDto> selectList(int boardId) {
        return sqlSession.selectList(nameSpace + "selectList", boardId);
    }
    
    // new
    public NewFileDto selectNewOne(int fileId) {
        return sqlSession.selectOne(nameSpace + "selectNewOne", fileId);
    }
    // new
    public NewFileDto selectNewEduOne(int fileId) {
        return sqlSession.selectOne(nameSpace + "selectNewEduOne", fileId);
    }
    
    // new
    public List<NewFileDto> selectNewList(int bannerId) {
        return sqlSession.selectList(nameSpace + "selectNewList", bannerId);
    }
    // new
    public List<NewFileDto> selectNewEduList(int mgmtId) {
        return sqlSession.selectList(nameSpace + "selectNewEduList", mgmtId);
    }
    
    // new
    public List<NewFileDto> selectNewListByXmrCd(Map<String, Object> paramMap) {
        return sqlSession.selectList(nameSpace + "selectNewListByXmrCd", paramMap);
    }

	public int fileInsert(HashMap param) {
		return sqlSession.insert(nameSpace + "fileInsert", param);
		
	}

	public void fileDelete(String id) {
		sqlSession.delete(nameSpace + "fileDelete", id);
		
	}
}
