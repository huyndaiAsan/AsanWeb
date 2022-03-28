package kr.re.aac.admin.dto;

public class UploadFileSearchVO extends CmmnSearchVO {

	/** 파일_시컨스 */
	private Integer fileSn;

	public void setFileSn(Integer fileSn) {
		this.fileSn = fileSn;
	}
	
	public Integer getFileSn() {
		return fileSn;
	}


}