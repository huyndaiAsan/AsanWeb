package kr.re.aac.scadmin.dao;

import kr.re.aac.admin.dto.BoardDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ScAdminManagerDao {
    @Resource(name = "mssqlSession")
    protected SqlSession sqlSession;

    
    public void update(HashMap admin) {
        sqlSession.update(getNameSpace() + "update", admin);
    }

    protected String getNameSpace() {
        return "kr.re.aac.scadmin.dao.ScAdminManagerDao.";
    }

}
