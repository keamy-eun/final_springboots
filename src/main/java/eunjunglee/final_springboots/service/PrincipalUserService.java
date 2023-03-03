package eunjunglee.final_springboots.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import org.springframework.stereotype.Service;

import eunjunglee.final_springboots.configurations.PrincipalUser;
import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class PrincipalUserService implements UserDetailsService {

    @Autowired
    SharedDaos sharedDao;

    @Override
    // url /login 일때 spring security가 호출
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // query select with ID
        String sqlMapId = "Memberwithauthority.selectByUID";
        Object usernameObj = username;
        Map<String, String> resultMap = (Map<String, String>) sharedDao.getOne(sqlMapId, usernameObj);

        // session 등록
        PrincipalUser principalUser = new PrincipalUser(resultMap);

        return principalUser;
    }

}