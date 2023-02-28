package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class CommunityService {
    @Autowired
    SharedDaos sharedDaos;


    public Object getList(Object dataMap){
        String sqlMapId = "Community.selectListStudent";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
    public Object getPostList(Object dataMap){
        String sqlMapId = "Community.selectPostList";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
    public Object getPost(Object dataMap){
        String sqlMapId = "Community.selectPost";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    public Object insertPost(Object dataMap){
        String sqlMapId = "Community.insertPost";
        Object result = sharedDaos.insert(sqlMapId, dataMap);
        return result;
    }

    public Object getListLecturer(Object dataMap){
        String sqlMapId = "Community.selectListLecturer";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getListNotice(Object dataMap){
        String sqlMapId = "Community.selectListNotice";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
    // -------------------------


    public Object insertPostAndGetList(Object dataMap){
        Object result = this.insertPost(dataMap);
        result = this.getList(dataMap);
        return result; 
    }

    public Object insertPostAndGetLecturerList(Object dataMap){
        Object result = this.insertPost(dataMap);
        result = this.getListLecturer(dataMap);
        return result; 
    }
    public Object insertPostAndGetNoticeList(Object dataMap){
        Object result = this.insertPost(dataMap);
        result = this.getListNotice(dataMap);
        return result; 
    }

    public Object updatePostView(Object dataMap){
        String sqlMapId = "Community.updatePostView";
        Object result = sharedDaos.updateOne(sqlMapId, dataMap);
        return result;
    }
}