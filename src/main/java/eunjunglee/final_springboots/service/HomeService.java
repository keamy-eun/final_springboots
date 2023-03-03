package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Map;

import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class HomeService {

    @Autowired
    SharedDaos sharedDaos;

    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    public Object insertOne(Object dataMap) {
        String sqlMapId = "Home.insertWithID";

        String password = (String) ((Map) dataMap).get("PW");
        ((Map) dataMap).put("PW", bcryptPasswordEncoder.encode(password));
        ((Map) dataMap).put("POSITION", "ROLE_USER");

        Object result = sharedDaos.insert(sqlMapId, dataMap);
        return result;
    }
}
