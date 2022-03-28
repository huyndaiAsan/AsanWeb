package kr.re.aac.util.tag;

import kr.re.aac.util.Pager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TermTag extends SimpleTagSupport {
    private Date compareDate;
    private String type = "front";
    private String newYn = "n";

    public void setCompareDate(Date compareDate) {
        this.compareDate = compareDate;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public void setNewYn(String newYn) {
		this.newYn = newYn;
	}

    @Override
    public void doTag() throws JspException, IOException {
    	if(type.equals("admin")) {
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
            Date date = new Date();
            String today = sdf.format(date);

            sdf = new SimpleDateFormat("yyyyMMdd");
            String compareday = sdf.format(compareDate);

            JspWriter out = getJspContext().getOut();
            if(Integer.parseInt(today) > Integer.parseInt(compareday)) {
                out.println("<span class=\"label label-default\">종료</span>");
            } else {
                out.println("<span class=\"label label-success\">진행중</span>");
            }
    	} else {
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
            Date date = new Date();
            String today = sdf.format(date);

            sdf = new SimpleDateFormat("yyyyMMdd");
            String compareday = sdf.format(compareDate);

            JspWriter out = getJspContext().getOut();
            if(Integer.parseInt(today) > Integer.parseInt(compareday)) {
                out.println("<span class=\"type-v1 type-v1_prev type-v1__end\">종료</span>");
            } else {
                out.println("<span class=\"type-v1 type-v1_prev type-v1__ing\">진행중</span>");
            }
    	}
    }
}
