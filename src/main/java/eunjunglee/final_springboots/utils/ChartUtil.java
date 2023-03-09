package eunjunglee.final_springboots.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Map.Entry;

import com.google.gson.Gson;

public class ChartUtil {
    

    public ArrayList<Object> chartMaker (Object resultMap){
    ArrayList<Object> resultList = (ArrayList)resultMap;
        ArrayList datas1 = new ArrayList();
        ArrayList datas2 = new ArrayList();
        ArrayList datas3 = new ArrayList();
        ArrayList datas4 = new ArrayList();
        ArrayList datas5 = new ArrayList();

        int PA01_1=0;
        int PA01_2=0;
        int PA01_3=0;
        int PA01_4=0;
        int PA01_5=0;
        int PA02_1=0;
        int PA02_2=0;
        int PA02_3=0;
        int PA02_4=0;
        int PA03_1=0;
        int PA03_2=0;
        int PA03_3=0;
        int PA03_4=0; 
        ArrayList<String> PA01_1_1 = new ArrayList<>();
        ArrayList<String> PA04 = new ArrayList<>();

        for(int i=0; i<resultList.size(); i++){
            for (Entry<String, Object> entry : ((Map<String, Object>) resultList.get(i)).entrySet()) {
                if("PQ01".equals((String)entry.getKey())){
                    switch((String)entry.getValue()){
                        case "지인의 추천으로":  PA01_1++;
                                    break;
                        case "인터넷 광고를 보고": PA01_2++;
                                    break;
                        case "SMS 광고를 보고": PA01_3++;
                                    break;
                        case "수업이 마음에 들어서 재신청": PA01_4++;
                                    break;
                        case "기타": PA01_5++;
                                    break;
                    }
                } else if("PQ02".equals((String)entry.getKey())){
                    switch((String)entry.getValue()){
                        case "30분 이하":  PA02_1++;
                                    break;
                        case "1시간 내외":  PA02_2++;
                                    break;
                        case "2시간 내외":  PA02_3++;
                                    break;
                        case "3시간 이상":  PA02_4++;
                                    break;
                    }
                } else if("PQ03".equals((String)entry.getKey())){
                    switch((String)entry.getValue()){
                        case "스마트폰":  PA03_1++;
                                    break;
                        case "컴퓨터":    PA03_2++;
                                    break;
                        case "테블릿":    PA03_3++;
                                    break;
                        case "기타":      PA03_4++;
                                    break;
                    }
                } else if("PQ04".equals((String)entry.getKey())){
                    if(!"".equals((String)entry.getValue()))
                    PA01_1_1.add((String)entry.getValue());
                } else if("PQ01_1".equals((String)entry.getKey())){
                    if(!"".equals((String)entry.getValue()))
                    PA04.add((String)entry.getValue());
                }
            }
        }
        
        datas1.add(Arrays.asList("질문1", "선택수"));
        datas2.add(Arrays.asList("질문2", "선택수"));
        datas3.add(Arrays.asList("질문3", "선택수"));

        datas1.add(Arrays.asList("1-1", PA01_1));
        datas1.add(Arrays.asList("1-2", PA01_2));
        datas1.add(Arrays.asList("1-3", PA01_3));
        datas1.add(Arrays.asList("1-4", PA01_4));
        datas1.add(Arrays.asList("1-5", PA01_5));
        datas2.add(Arrays.asList("2-1", PA01_1));
        datas2.add(Arrays.asList("2-2", PA01_2));
        datas2.add(Arrays.asList("2-3", PA01_3));
        datas2.add(Arrays.asList("2-4", PA01_4));
        datas3.add(Arrays.asList("3-1", PA01_1));
        datas3.add(Arrays.asList("3-2", PA01_2));
        datas3.add(Arrays.asList("3-3", PA01_3));
        datas3.add(Arrays.asList("3-4", PA01_4));

        Gson gson = new Gson();
        ArrayList<Object> gsonList = new ArrayList<>();
        gsonList.add(gson.toJson(datas1));
        gsonList.add(gson.toJson(datas2));
        gsonList.add(gson.toJson(datas3));
        gsonList.add(gson.toJson(PA01_1_1));
        gsonList.add(gson.toJson(PA04));
        gsonList.add(PA01_1_1.size());
        gsonList.add(PA04.size());

        return gsonList;
    }
}
