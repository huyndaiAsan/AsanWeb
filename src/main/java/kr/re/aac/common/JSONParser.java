package kr.re.aac.common;

/*
 * 서버에서 보내는 JSONArray 데이터 파싱
 */

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

//import net.sf.json.JSONException;
//import net.sf.json.JSONObject;
import org.json.*;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

@SuppressWarnings("deprecation")
public class JSONParser {

    static InputStream is = null;
    static JSONObject jObj = null;
    static String json = "";

    // constructor
    public JSONParser() {
    }

    public JSONObject getJSONFromUrl(String url, ArrayList<NameValuePair> nameValuePairs) {
        JSONObject jsonObject = null;
    	//JSONObject jsonObject = new JSONObject();

    	System.out.println("NetworkUtil.post(url, nameValuePairs): " + NetworkUtil.post(url, nameValuePairs));
       /* try {
            jsonObject = new JSONObject(NetworkUtil.post(url, nameValuePairs));
        } catch (JSONException e) {
            System.out.println("JSON Parser Error parsing data " + e.toString());
        }*/
        return jsonObject;
    }

//    public JSONObject getJSONFromUrl(String url, ArrayList<NameValuePair> nameValuePairs) {
//
//        // Making HTTP request
//        HttpClient httpClient = new DefaultHttpClient();
//        try {
//            HttpParams params = httpClient.getParams();
//            HttpConnectionParams.setConnectionTimeout(params, 5000);
//            HttpConnectionParams.setSoTimeout(params, 5000);
//
//            // defaultHttpClient
//            //DefaultHttpClient httpClient = new DefaultHttpClient();
//            HttpPost httpPost = new HttpPost(url);
//            UrlEncodedFormEntity entityRequest =
//                    new UrlEncodedFormEntity(nameValuePairs, "utf-8");
//
//            httpPost.setEntity(entityRequest);
//
//            HttpResponse httpResponse = httpClient.execute(httpPost);
//            HttpEntity httpEntity = httpResponse.getEntity();
//
//            is = httpEntity.getContent();
//
//        } catch (UnsupportedEncodingException e) {
//            e.printStackTrace();
//        } catch (ClientProtocolException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        try {
//            BufferedReader reader = new BufferedReader(new InputStreamReader(
//                    is, "utf-8"), 8);
//            StringBuilder sb = new StringBuilder();
//            String line = null;
//            while ((line = reader.readLine()) != null) {
//                sb.append(line + "\n");
//            }
//            is.close();
//            json = sb.toString();
//        } catch (Exception e) {
//            Log.e("Buffer Error", "Error converting result " + e.toString());
//        }
//
//        // try parse the string to a JSON object
//        try {
//            jObj = new JSONObject(json);
//        } catch (JSONException e) {
//            Log.e("JSON Parser", "Error parsing data " + e.toString());
//        }
//
//        return jObj;
//
//    }
}
