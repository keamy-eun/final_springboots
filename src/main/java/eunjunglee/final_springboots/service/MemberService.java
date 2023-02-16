package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import eunjunglee.final_springboots.dao.MemberDao;

@Service
public class MemberService {
    

    @Autowired
    MemberDao memberDao;

    public Object 메소드명(Object dataMap){
        String sqlMapId = "매퍼{namespace}.{ID}";
        // Object result = memberDao.메소드명(sqlMapId, dataMap);
        Object result = null;
        return result;
    }
}
