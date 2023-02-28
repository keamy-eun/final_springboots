package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class CommunityService {
    @Autowired
    SharedDaos sharedDaos;

    public Object getList(Object dataMap){
        String sqlMapId = "Community.selectListByID";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    public Object insertPost(Object dataMap){
        String sqlMapId = "Community.insertPost";
        Object result = sharedDaos.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertPostAndGetList(Object dataMap){
        Object result = this.insertPost(dataMap);
        result = this.getList(dataMap);
        return result; 
    }
}