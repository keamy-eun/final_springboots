package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;

import eunjunglee.final_springboots.dao.SharedDaos;
import eunjunglee.final_springboots.utils.CommonUtils;

import java.util.Map;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberWithAuthorityService {

    @Autowired
    SharedDaos sharedDao;

    @Autowired
    CommonUtils commonUtils;

    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    public Object insert(Object dataMap) {

        String sqlMapId = "Memberwithauthority.insertWithUID";
        ((Map) dataMap).put("CERTIFICATION_KEY", commonUtils.getUniqueSequence());

        // normal to crypto password
        // String password = (String) ((Map) dataMap).get("password");
        // ((Map) dataMap).put("password", bcryptPasswordEncoder.encode(password));

        Object result = sharedDao.insert(sqlMapId, dataMap);
        return result;
    }
}