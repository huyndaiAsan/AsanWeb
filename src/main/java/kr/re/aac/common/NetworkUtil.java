package kr.re.aac.common;


import kr.re.aac.common.Environments;

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

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

/**
 * Created by Fritz on 13. 9. 19.
 */
@SuppressWarnings("deprecation")
public class NetworkUtil {
    public static String urlEncode(String txt) {
        String buf = "";
        buf = txt.replaceAll("%", "!perc;");
        buf = buf.replaceAll("&", "!amp;");
        //buf = buf.replaceAll("\\", "!rslash;");
        return buf;
    }

    public static String urlDecode(String txt) {
        String buf = "";
        buf = txt.replaceAll("!perc;", "%");
        buf = buf.replaceAll("!amp;", "&");
        //buf = buf.replaceAll("!rslash;", "\\");
        return buf;
    }


    public static String post(String url, ArrayList<NameValuePair> nameValuePairs) {
        HttpClient httpClient = new DefaultHttpClient();
        StringBuilder sbResult = new StringBuilder();
        try {
            HttpParams params = httpClient.getParams();
            HttpConnectionParams.setConnectionTimeout(params, 5000);
            HttpConnectionParams.setSoTimeout(params, 5000);

            HttpPost httpPost = new HttpPost(url);
            UrlEncodedFormEntity entityRequest = new UrlEncodedFormEntity(nameValuePairs, Environments.DEFAULT_ENCODING);

            httpPost.setEntity(entityRequest);

            HttpResponse httpResponse = httpClient.execute(httpPost);
            HttpEntity httpEntity = httpResponse.getEntity();

            InputStream is = httpEntity.getContent();

            
            System.out.println("\n\n\nsbResult.append(before): \n\n\n");


            BufferedReader reader = new BufferedReader(new InputStreamReader(is, Environments.DEFAULT_ENCODING), 8);
            String line = null;
            while ((line = reader.readLine()) != null) {
                sbResult.append(line + "\n");
                System.out.println("sbResult.append(line): " + line);
            }
            is.close();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            System.out.println("Buffer Error, Error converting result " + e.toString());
        }

        return sbResult.toString();
    }
}
