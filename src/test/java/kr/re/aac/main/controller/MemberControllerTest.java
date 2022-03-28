package kr.re.aac.main.controller;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static org.junit.Assert.*;

public class MemberControllerTest {
    private Logger logger = LoggerFactory.getLogger(getClass());
    @Test
    public void testRegx() {
        Pattern p = Pattern.compile("[\\w\\.]+@[\\w\\.]+\\.\\w+");
        Matcher m = p.matcher("for.ta@for.ta.com");
        boolean b = m.matches();

        logger.debug("" + b);
    }
}