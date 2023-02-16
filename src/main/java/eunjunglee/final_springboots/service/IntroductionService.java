package eunjunglee.final_springboots.service;

import org.springframework.stereotype.Service;

@Service
public class IntroductionService {
    
    // @Autowired
    // Dao;

    public Object 메소드명(Object dataMap){
        String sqlMapId = "매퍼{namespace}.{ID}";
        Object result = 다오.메소드명(sqlMapId, dataMap);
        return result;
    }
}
