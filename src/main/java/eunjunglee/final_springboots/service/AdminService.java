package eunjunglee.final_springboots.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import eunjunglee.final_springboots.dao.SharedDaos;
import eunjunglee.final_springboots.utils.Paginations;

@Service
public class AdminService {
    
    @Autowired
    SharedDaos sharedDaos;

    public Object getList(Object dataMap){
        String sqlMapId = "Admin.selectList";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
    public Object getOne(Object dataMap){
        String statement = "Admin.selectListByID";
        Object result = sharedDaos.getOne(statement, dataMap);
        return result;
    }
    public Object delete(Object dataMap){
        String sqlId = "Admin.deleteByID";
        Object result = sharedDaos.delete(sqlId, dataMap);
        return result;
    }
    public Object deleteAndList(Object dataMap){
        Object result = this.delete(dataMap);
        result = this.getList(dataMap);
        return result;
    }
    public Object update(Object dataMap){
        String sqlId = "Admin.updateByID";
        Object result = sharedDaos.updateOne(sqlId, dataMap);
        return result;
    }
    public Object updateAndList(Object dataMap){
        Object result = this.update(dataMap);
        result = this.getList(dataMap);
        return result;
    }
    public Object getTotal(Object dataMap){
        String sqlMapId = "Poll.selectTotal";
        Object result = sharedDaos.getOne(sqlMapId, dataMap);
        return result;
    }
    public Object listAndPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.getList(dataMap));
        return result;
    }
}
