package eunjunglee.final_springboots.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LectureDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

}
