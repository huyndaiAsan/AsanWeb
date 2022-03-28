package kr.re.aac.util.tag;

import kr.re.aac.util.Pager;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class PagingTag extends SimpleTagSupport {
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
        if(type.equals("admin")) {
            StringBuilder sb = new StringBuilder();
            String temp = "<li class=\"disabled\"><a href=\"#\" data-pageNo=\":v1\">«</a></li>";
            if(pager.isHasPrev()) {
                temp = temp.replaceAll("class=\"disabled\"", "").replaceAll(":v1", "" + (pager.getFirstPageNo() -1));
            }
            sb.append(temp);

            temp = "<li><a href=\"#\" data-pageNo=\":v1\">:v1</a></li>";
            for(int i = pager.getFirstPageNo(); i <= pager.getLastPageNo(); i++) {
                if(pager.getPageNo() == i) {
                    sb.append("<li class=\"active\"><a href=\"#\" data-pageNo=\""+ i +"\">"+ i +" <span class=\"sr-only\">(current)</span></a></li>");
                    continue;
                }

                sb.append(temp.replaceAll(":v1", "" + i));
            }

            temp = "<li class=\"disabled\"><a href=\"#\" data-pageNo=\":v1\">»</a></li>";
            if(pager.isHasNext()) {
                temp = temp.replaceAll("class=\"disabled\"", "").replaceAll(":v1", "" + (pager.getLastPageNo() +1));
            }
            sb.append(temp);

            JspWriter out = getJspContext().getOut();
            out.println( "<ul class=\"pagination\">" + sb.toString() + "</ul>");
        } else {
        	
        	if("n".equals(newYn)) {
        		StringBuilder sb = new StringBuilder();
                String temp = "<li><a class=\"border\" href=\"#\" data-pageNo=:v1><span class=\"icon icon-prev\"></span>이전</a></li>";
                if(pager.isHasPrev()) {
                    temp = temp.replaceAll(":v1", "" + (pager.getFirstPageNo() - 1));
                    sb.append(temp);
                }

                temp = "<li><a :v1 href=\"#\" data-pageNo=:v2>:v2</a></li>";
                for(int i = pager.getFirstPageNo(); i <= pager.getLastPageNo(); i++) {
                    if(pager.getPageNo() == i) {
                        sb.append(temp.replaceAll(":v1", "class=\"active\"").replaceAll(":v2", "" + i));
                        continue;
                    }

                    sb.append(temp.replaceAll(":v1", "").replaceAll(":v2", "" + i));
                }

                temp = "<li><a class=\"border\" href=\"#\" data-pageNo=:v1>다음<span class=\"icon icon-next\"></span></a></li>";
                if(pager.isHasNext()) {
                    temp = temp.replaceAll(":v1", "" + (pager.getLastPageNo() +1));
                    sb.append(temp);
                }

                JspWriter out = getJspContext().getOut();
                out.println(sb.toString());
        	} else {
        		
        		// 2018.01.15 추가
        		StringBuilder sb = new StringBuilder();
                
                String temp = "<div class=\"pagination-v1__info\">";
                temp += "<span class=\"pagination-v1__location\">:v1</span>/:v2";
                temp += "</div>";
                temp = temp.replaceAll(":v1", "" + pager.getPageNo()).replaceAll(":v2", "" + pager.getTotalCount());
                sb.append(temp);
                
                temp = "<span class=\"pagination-v1__group pagination-v1__group_prev\">";
                temp += "<a href=\"#\" data-pageNo=:v1 class=\"pagination-v1__item pagination-v1__item_before\">이전</a>";
                temp += "</span>";
                if(pager.isHasPrev()) {
                    temp = temp.replaceAll(":v1", "" + (pager.getFirstPageNo() - 1));
                    sb.append(temp);
                }

                sb.append("<span class=\"pagination-v1__group\">");
                temp = "<a href=\"#\" data-pageNo=:v2 class=\"pagination-v1__item :v1\">:v2</a>";
                for(int i = pager.getFirstPageNo(); i <= pager.getLastPageNo(); i++) {
                    if(pager.getPageNo() == i) {
                        sb.append(temp.replaceAll(":v1", "on").replaceAll(":v2", "" + i));
                        continue;
                    }

                    sb.append(temp.replaceAll(":v1", "").replaceAll(":v2", "" + i));
                }
                sb.append("</span>");

                temp = "<span class=\"pagination-v1__group pagination-v1__group_next\">";
                temp += "<a href=\"#\" data-pageNo=:v1 class=\"pagination-v1__item pagination-v1__item_after\">다음</a>";
                temp += "</span>";
                if(pager.isHasNext()) {
                    temp = temp.replaceAll(":v1", "" + (pager.getLastPageNo() +1));
                    sb.append(temp);
                }

                JspWriter out = getJspContext().getOut();
                out.println("<div class=\"pagination-v1\">" + sb.toString() + "</div>");
        	}
        }

    }
}
