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
        String ceromi123 = bcryptPasswordEncoder.encode("ceromi123");
        String nas8808 = bcryptPasswordEncoder.encode("nas8808");
        String circle01 = bcryptPasswordEncoder.encode("circle01");
        String admin = bcryptPasswordEncoder.encode("admin");
        String nice443 = bcryptPasswordEncoder.encode("nice443");
        String neo108 = bcryptPasswordEncoder.encode("neo108");
        String bkf99 = bcryptPasswordEncoder.encode("bkf99");
        String basie73 = bcryptPasswordEncoder.encode("basie73");
        String woodiga1 = bcryptPasswordEncoder.encode("woodiga1");
        String jointo01 = bcryptPasswordEncoder.encode("jointo01");
        ((Map) dataMap).put("PW", bcryptPasswordEncoder.encode(password));
        ((Map) dataMap).put("POSITION", "ROLE_USER");

        Object result = sharedDaos.insert(sqlMapId, dataMap);
        return result;
    }
}
