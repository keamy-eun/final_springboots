package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class HomeService {
    

    @Autowired
    SharedDaos sharedDaos;

    public Object insertOne(Object dataMap){
        String sqlMapId = "Home.insertWithID";
        Object result = sharedDaos.insert(sqlMapId, dataMap);
        return result;
    }
}
