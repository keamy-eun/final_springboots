package eunjunglee.final_springboots.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class CommunityService {
    @Autowired
    SharedDaos sharedDaos;

    // 학생게시판 리스트
    public Object getList(Object dataMap){
        String sqlMapId = "Community.selectListStudent";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    // 게시판 리스트  / 게시글과 멤버 모두 불러옴
    public Object getPostList(Object dataMap){
        String sqlMapId = "Community.selectPostList";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
    // 게시판 리스트 중 파라미터와 일치하는 하나의 컬럼만
    public Object getPost(Object dataMap){
        String sqlMapId = "Community.selectPost";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
  // 게시판 리스트 중 파라미터와 일치하는 하나의 컬럼만
  public Object getComment(Object dataMap){
    String sqlMapId = "Community.selectComment";
    Object result = sharedDaos.getList(sqlMapId, dataMap);
    return result;
}

    
        // 인서트
    public Object insertPost(Object dataMap){
        String sqlMapId = "Community.insertPost";
        Object result = sharedDaos.insert(sqlMapId, dataMap);
        return result;
    }
    public Object insertComment(Object dataMap){
        String sqlMapId = "Community.insertComment";
        Object result = sharedDaos.insert(sqlMapId, dataMap);
        System.out.println(dataMap);
        return result;
    }


    // 강사 리스트
    public Object getListLecturer(Object dataMap){
        String sqlMapId = "Community.selectListLecturer";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
    // 공지사항
    public Object getListNotice(Object dataMap){
        String sqlMapId = "Community.selectListNotice";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    // 강좌게시판
    public Object getLectureList(Object dataMap){
        String sqlMapId = "Community.selectLectureList";
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

    public Object insertCommentAndGetComment(Object dataMap){
        Object result = this.insertComment(dataMap);
        result = this.getComment(dataMap);
        return result; 
    }

    public Object insertComment2(Object dataMap){
        System.out.println(dataMap);
        Object result = this.insertComment(dataMap);
      
        return result;
    }
}