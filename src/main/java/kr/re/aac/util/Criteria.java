package kr.re.aac.util;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

public class Criteria {

    public static String makeSearchString(List<String> checkSearchList, String searchWord) {
        if(CollectionUtils.isEmpty(checkSearchList)) {
            return null;
        }

        if(StringUtils.isEmpty(searchWord)) {
            return null;
        }

        String prefix = "AND ( ";
        String subffix = " )";
        String result = "";
        for(String checkSearch : checkSearchList) {
            if(!result.equals("")) {
                result += " OR ";
            }

            //result = result + " " + checkSearch + " like '%" + searchWord + "%'";
            result = result + " " + "LOWER(" + checkSearch + ") like LOWER('%" + searchWord + "%')";
        }

        if(result.equals("")) {
            return null;
        }

        return prefix + result + subffix;
    }
}
