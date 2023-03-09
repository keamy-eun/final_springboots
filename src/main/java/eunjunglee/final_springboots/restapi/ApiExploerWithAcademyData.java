package eunjunglee.final_springboots.restapi;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

public class ApiExploerWithAcademyData {
    public ApiExploerWithAcademyData() throws UnsupportedEncodingException {
        // https://openapi.gg.go.kr/Tbinstutm
        // ?KEY=
        // efa77b969086498482fd83128f5fc8eb
        // &Type=
        // json

        StringBuilder urlBuilder = new StringBuilder(
                "https://openapi.gg.go.kr/Tbinstutm"); /* URL */
        // 2. 오픈 API의요청 규격에 맞는 파라미터 생성, 발급받은 인증키.
        urlBuilder.append("?" + URLEncoder.encode("KEY", "UTF-8") + "=")
                .append("efa77b969086498482fd83128f5fc8eb"); /*
                                                              * Service
                                                              * Key
                                                              */
        urlBuilder.append("&" + URLEncoder.encode("Type", "UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*
                                                                                                                 * 페이지
                                                                                                                 * 번호
                                                                                                                 */

        URL url;
        HttpURLConnection conn = null;
        try {
            url = new URL(urlBuilder.toString());
            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            // conn.setRequestProperty(null, null);
            System.out.println("Response code : " + conn.getResponseCode());

            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer();
            String line;
            while ((line = reader.readLine()) != null) {
                stringBuffer.append(line);
            }
            int i = 1;
            reader.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            conn.disconnect();
        }
    }
}