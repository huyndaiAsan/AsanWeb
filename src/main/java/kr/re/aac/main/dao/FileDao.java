package kr.re.aac.main.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.re.aac.admin.dto.FileDto;
import kr.re.aac.admin.dto.NewFileDto;

@Repository
public class FileDao {
    private final String nameSpace = "FileDao.";

    @Resource(name = "mssqlSession")
    protected SqlSession sqlSession;

    public List<FileDto> selectList(int boardId) {
        return sqlSession.selectList(nameSpace + "selectList", boardId);
    }
    
}
