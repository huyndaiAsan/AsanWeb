package kr.re.aac.util.tag;

import kr.re.aac.util.Pager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class FrontPagingTag extends SimpleTagSupport {
    private Pager pager;
    private String type = "admin";
    private String newYn = "n";

    public void setPager(Pager pager) {
        this.pager = pager;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    public void setNewYn(String newYn) {
		this.newYn = newYn;
	}

    @Override
    public void doTag() throws JspException, IOException {
        StringBuilder sb = new StringBuilder();
        String temp = "<a href=\"#\" class=\"button-prev\" data-pageNo=\":v1\">이전 페이지</a>";
        if(pager.isHasPrev()) {
            //temp = temp.replaceAll("class=\"disabled\"", "").replaceAll(":v1", "" + (pager.getFirstPageNo() -1));
            temp = temp.replaceAll(":v1", "" + (pager.getFirstPageNo() -1));
        }else{
        	temp = "";
        }
        sb.append(temp);

        temp = "<a href=\"#\" data-pageNo=\":v1\">:v1</a>";
        for(int i = pager.getFirstPageNo(); i <= pager.getLastPageNo(); i++) {
            if(pager.getPageNo() == i) {
                sb.append("<a href=\"#\" class=\"current\" data-pageNo=\""+ i +"\">"+ i +"</a>");
                continue;
            }
            sb.append(temp.replaceAll(":v1", "" + i));
        }

        temp = "<a href=\"#\" class=\"u-button-next\" data-pageNo=\":v1\">다음 페이지</a>";
        if(pager.isHasNext()) {
            temp = temp.replaceAll(":v1", "" + (pager.getLastPageNo() +1));
        }else{
        	temp = "";
        }
        sb.append(temp);

        JspWriter out = getJspContext().getOut();
        out.println( sb.toString());

    }
}
