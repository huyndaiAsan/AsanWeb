package kr.re.aac.admin.dto;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

public class CmmnSearchVO implements Serializable {

	/** serialVersionUID */
	private static final long serialVersionUID = 7951010248699621964L;

	private Integer rnum;
	/** 메뉴 코드 */
	private String menuCd = "";
	
	/** 검색 카테고리 */
	private String searchCateCd = "";
	
	/** 검색 조건 */
	private String searchCondition = "";

	/** 검색 조건2 */
	private String searchCondition2 = "";
	
	/** 검색 Keyword */
	private String searchKeyword = "";

	/** 검색 Keyword */
	private String searchKeywordTemp = "";
	
	/** 검색 사용여부 */
	private String searchUseYn = "";
	
	/** 검색 시작일 */
	private String searchStDt = "";
	
	/** 검색 종료일 */
	private String searchEdDt = "";
	
	/** 검색 : 정렬 컬럼 */
	private String sortColumn = "";
	
	/** 검색 : 정렬 차순 */
	private String sortDesc = "";
	
	/** 회원 일련번호 */
	private Integer userSeq;	

	/** 현재페이지 */
	private int pageIndex = 1;
	
	/** 현재페이지Sub */
	private int pageIndexSub = 1;
	
	/** 페이지갯수 */
	private int pageUnit = 10;

	/** 페이지갯수 */
	private int pageUnitRecent = 10;
	
	/** 페이지갯수 */
	private int pageUnitPhoto = 6;
	
	/** 페이지사이즈 */
	private int pageSize = 10;

	/** firstIndex */
	private int firstIndex = 1;

	/** lastIndex */
	private int lastIndex = 1;

	/** recordCountPerPage */
	private int recordCountPerPage = 10;
	
	/** 한 페이지에서 보여줄게시글의 시작번호  */
	private int startCount = 0;

	/** seq */
	private Integer seq;

	private String type = ""; 
	
	private int totalcnt = 0;
	
	private int fileSeq = 0;
	
	private String lang = "kor";
	
	private String flag = "";
	
	private String subFlag = "0";
	
	private int pageControl = 0;
	
	private String searchArea = "";
	
	private String searchGubun = "";
	
	/** front referer 1depth 체크 */
	private String chkRef = "";
	
	/** commonService 사용 */
	private String userId= "";
	
	private String sendType= "";
	
	private String searchRegDateY= "";
	
	private String useYn = "";
	
	private String delYn = "";
	
	private String regId = "";
	
	private String regDt = "";
	
	private String modId = "";
	
	private String modDt = "";
	
	private String attach = "";
	
	private String attachNm = "";
	
	private String attachFile = "";
	
	private String attachFileNm = "";
	
	
	
	
	public String getAttachFile() {
		return attachFile;
	}

	public void setAttachFile(String attachFile) {
		this.attachFile = attachFile;
	}

	public String getAttachFileNm() {
		return attachFileNm;
	}

	public void setAttachFileNm(String attachFileNm) {
		this.attachFileNm = attachFileNm;
	}

	public String getAttach() {
		return attach;
	}

	public void setAttach(String attach) {
		this.attach = attach;
	}

	public String getAttachNm() {
		return attachNm;
	}

	public void setAttachNm(String attachNm) {
		this.attachNm = attachNm;
	}

	public String getUseYn() {
		return useYn;
	}

	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getRegDt() {
		return regDt;
	}

	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}

	public String getModId() {
		return modId;
	}

	public void setModId(String modId) {
		this.modId = modId;
	}

	public String getModDt() {
		return modDt;
	}

	public void setModDt(String modDt) {
		this.modDt = modDt;
	}

	public int getPageControl() {
		return pageControl;
	}

	public void setPageControl(int pageControl) {
		this.pageControl = pageControl;
	}

	public String getSubFlag() {
		return subFlag;
	}

	public void setSubFlag(String subFlag) {
		this.subFlag = subFlag;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public Integer getRnum() {
		return rnum;
	}

	public void setRnum(Integer rnum) {
		this.rnum = rnum;
	}

	public String getMenuCd() {
		return menuCd;
	}

	public void setMenuCd(String menuCd) {
		this.menuCd = menuCd;
	}

	public String getSearchCateCd() {
		return searchCateCd;
	}

	public void setSearchCateCd(String searchCateCd) {
		this.searchCateCd = searchCateCd;
	}

	public int getTotalcnt() {
		return totalcnt;
	}

	public void setTotalcnt(int totalcnt) {
		this.totalcnt = totalcnt;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getSearchKeywordTemp() {
		return searchKeywordTemp;
	}

	public void setSearchKeywordTemp(String searchKeywordTemp) {
		this.searchKeywordTemp = searchKeywordTemp;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getFirstIndex() {
		return firstIndex;
	}

	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	public int getLastIndex() {
		return lastIndex;
	}

	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}

	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	
	public String getSearchCondition2() {
		return searchCondition2;
	}

	public void setSearchCondition2(String searchCondition2) {
		this.searchCondition2 = searchCondition2;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getSearchUseYn() {
		return searchUseYn;
	}

	public void setSearchUseYn(String searchUseYn) {
		this.searchUseYn = searchUseYn;
	}

	public String getSearchStDt() {
		return searchStDt;
	}

	public void setSearchStDt(String searchStDt) {
		this.searchStDt = searchStDt;
	}

	public String getSearchEdDt() {
		return searchEdDt;
	}

	public void setSearchEdDt(String searchEdDt) {
		this.searchEdDt = searchEdDt;
	}

	public String getSortColumn() {
		return sortColumn;
	}

	public void setSortColumn(String sortColumn) {
		this.sortColumn = sortColumn;
	}

	public String getSortDesc() {
		return sortDesc;
	}

	public void setSortDesc(String sortDesc) {
		this.sortDesc = sortDesc;
	}

	public Integer getUserSeq() {
		return userSeq;
	}

	public void setUserSeq(Integer userSeq) {
		this.userSeq = userSeq;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageIndexSub() {
		return pageIndexSub;
	}

	public void setPageIndexSub(int pageIndexSub) {
		this.pageIndexSub = pageIndexSub;
	}

	public int getPageUnit() {
		return pageUnit;
	}

	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}
	
	public int getPageUnitRecent() {
		return pageUnitRecent;
	}

	public void setPageUnitRecent(int pageUnitRecent) {
		this.pageUnitRecent = pageUnitRecent;
	}

	public int getPageUnitPhoto() {
		return pageUnitPhoto;
	}

	public void setPageUnitPhoto(int pageUnitPhoto) {
		this.pageUnitPhoto = pageUnitPhoto;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public String getChkRef() {
		return chkRef;
	}

	public void setChkRef(String chkRef) {
		this.chkRef = chkRef;
	}

	public int getFileSeq() {
		return fileSeq;
	}

	public void setFileSeq(int fileSeq) {
		this.fileSeq = fileSeq;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSendType() {
		return sendType;
	}

	public void setSendType(String sendType) {
		this.sendType = sendType;
	}

	public String getSearchRegDateY() {
		return searchRegDateY;
	}

	public void setSearchRegDateY(String searchRegDateY) {
		this.searchRegDateY = searchRegDateY;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public int getStartCount() {
		return startCount;
	}

	public void setStartCount(int startCount) {
		this.startCount = startCount;
	}

	public String getSearchArea() {
		return searchArea;
	}

	public void setSearchArea(String searchArea) {
		this.searchArea = searchArea;
	}

	public String getSearchGubun() {
		return searchGubun;
	}

	public void setSearchGubun(String searchGubun) {
		this.searchGubun = searchGubun;
	}

	

}