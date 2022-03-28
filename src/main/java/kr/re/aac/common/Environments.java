package kr.re.aac.common;

/**
 * Created by Fritz on 13. 9. 9.
 */
public class Environments {
    public static final String DEFAULT_URL = "http://n.kist.re.kr:8088/ext/mobile/main.jsp";
    //public static final String USER_INFO_URL = "http://www.zeus.or.kr:9000/equip/reserve/add"; //?equipId=Z-KIST AAC-00034
    public static final String USER_INFO_URL = "http://161.122.17.101:8088/ext/mobile/receive_test.jsp"; //?equipId=Z-KIST AAC-00034
    public static final String USER_SAVE_INFO_URL = "http://n.kist.re.kr:8088/ext/mobile/getUserSaveInfo.jsp";
    public static final String PARAMETER_USER_ID = "userId";
    public static final String PARAMETER_PASSWORD = "pw";
    public static final String FIELD_USER_ID = "userId";
    public static final String FIELD_PASSWORD = "pw";

    public static final int MIN_USER_INFO_LENGTH = 5;
    public static final int MIN_PASSWORD_LENGTH = 5;

    public static final String DEFAULT_ENCODING = "UTF-8";
}
