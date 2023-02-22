package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class CommunityService {
    @Autowired
    SharedDaos sharedDaos;

    public Object getList(Object dataMap){
        String sqlMapId = "Community.selectListByUID";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }


}
