package kr.re.aac.common.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

import java.util.List;
import java.util.Map;

@Repository
public class commonPrivacyDao{
    private final String nameSpace = "kr.re.aac.admin.dao.AdminMemberDao.";

    @Resource(name = "mssqlSession")
    protected SqlSession sqlSession;

    public void sysLoginsert(Map<String, String> userMap) {
        sqlSession.insert(nameSpace + "sysLoginsert", userMap);
    }

    public void authChangeLoginsert(Map<String, String> authMap) {
        sqlSession.insert(nameSpace + "authChangeLoginsert", authMap);
    }
    
    public void failCountUpdate(Map<String, Object> cMap){
    	sqlSession.update(nameSpace + "failCountUpdate", cMap);
    }
    
    public int getFailLoginCount(String userId){
    	return sqlSession.selectOne(nameSpace + "getFailLoginCount", userId);
    }
    
    public void updateUserLevel(Map<String, Object> cMap){
    	sqlSession.update(nameSpace + "updateUserLevel", cMap);
    }
    
    public List<Map<String,String>> getAESPassword(){
    	return sqlSession.selectList(nameSpace + "getAESPassword");
    }
    
    public void doUpdatePasswordEnc(Map<String, Object> shaPassMap){
    	sqlSession.update(nameSpace + "updatePasswordEnc", shaPassMap);
    }
    
    public void doUpdateImsiPassword(Map<String, String> imsiPwdMap){
    	sqlSession.update(nameSpace + "updateImsiPassword", imsiPwdMap);
    }
}
