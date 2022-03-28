package kr.re.aac.admin.dto;

import org.apache.commons.lang3.StringUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class BoardDto {
	private int RNUM;
	private int rn;
    private int id;
    private String title;
    private String content;
    private Date regDate;
    private String reg_Date;
    private Date updateDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;
    private String exposure;
    private int readCount;
    private String category;
    private String regUserId;
    private String regUserLevel;
    private int fileCount;
    private String defaultImage;
    private int replyCount;
    private String imgFile;
    private String searchKeyword;
    private String searchOption;
    private String stdt;
    private String endt;
    private String ordering;
    private String summary;
    private String gubun;
    private String defaultsavepath;
    private String complite;
    private String fixynChk;
    private String top_mark;
    
    
    
    public String getTop_mark() {
		return top_mark;
	}

	public void setTop_mark(String top_mark) {
		this.top_mark = top_mark;
	}

	public String getFixynChk() {
		return fixynChk;
	}

	public void setFixynChk(String fixynChk) {
		this.fixynChk = fixynChk;
	}

	public String getReg_Date() {
		return reg_Date;
	}

	public void setReg_Date(String reg_Date) {
		this.reg_Date = reg_Date;
	}

	public String getComplite() {
		return complite;
	}

	public void setComplite(String complite) {
		this.complite = complite;
	}

	public String getDefaultsavepath() {
		return defaultsavepath;
	}

	public void setDefaultsavepath(String defaultsavepath) {
		this.defaultsavepath = defaultsavepath;
	}

	public String getOrdering() {
		return ordering;
	}

	public void setOrdering(String ordering) {
		this.ordering = ordering;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getGubun() {
		return gubun;
	}

	public void setGubun(String gubun) {
		this.gubun = gubun;
	}

	public String getStdt() {
		return stdt;
	}

	public void setStdt(String stdt) {
		this.stdt = stdt;
	}

	public String getEndt() {
		return endt;
	}

	public void setEndt(String endt) {
		this.endt = endt;
	}

	public int getRNUM() {
		return RNUM;
	}

	public void setRNUM(int rNUM) {
		RNUM = rNUM;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}

	public String getImgFile() {
		return imgFile;
	}

	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}

	public int getRn() {
        return rn;
    }

    public void setRn(int rn) {
        this.rn = rn;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getExposure() {
        return exposure;
    }

    public void setExposure(String exposure) {
        this.exposure = exposure;
    }

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getRegUserId() {
        if(StringUtils.isBlank(regUserId)) {
            return "관리자";
        }
        return regUserId;
    }

    public void setRegUserId(String regUserId) {
        this.regUserId = regUserId;
    }

    public int getFileCount() {
        return fileCount;
    }

    public void setFileCount(int fileCount) {
        this.fileCount = fileCount;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getDefaultImage() {
        return defaultImage;
    }

    public void setDefaultImage(String defaultImage) {
        this.defaultImage = defaultImage;
    }

    public int getReplyCount() {
        return replyCount;
    }

    public void setReplyCount(int replyCount) {
        this.replyCount = replyCount;
    }

    public String getRegUserLevel() {
		return regUserLevel;
	}

	public void setRegUserLevel(String regUserLevel) {
		this.regUserLevel = regUserLevel;
	}

	@Override
    public String toString() {
        return "BoardDto{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", regDate=" + regDate +
                ", updateDate=" + updateDate +
                ", endDate=" + endDate +
                ", exposure='" + exposure + '\'' +
                ", readCount=" + readCount +
                ", category='" + category + '\'' +
                ", regUserId='" + regUserId + '\'' +
                ", fileCount=" + fileCount +
                ", defaultImage=" + defaultImage +
                ", replyCount=" + replyCount +
                '}';
    }
}
