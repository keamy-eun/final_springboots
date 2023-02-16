package eunjunglee.final_springboots.service;

import org.springframework.stereotype.Service;

@Service
public class CommunityService {
    // @Autowired
    // Dao;
    public Object 메소드명(Object dataMap){
        String sqlMapId = "매퍼";
        Object result = 다오(sqlMapId, dataMap);
        return result;
    }


}
