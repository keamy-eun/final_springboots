package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class MypageService {
    
    @Autowired
    SharedDaos sharedDaos;

    public Object 메소드명(Object dataMap){
        String sqlMapId = "매퍼{namespace}.{ID}";
        // Object result = mypageDao.메소드명(sqlMapId, dataMap);
        Object result = null;
        return result;
    }
}
