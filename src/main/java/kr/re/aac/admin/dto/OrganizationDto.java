package kr.re.aac.admin.dto;

import javax.validation.constraints.NotNull;

public class OrganizationDto {
    private String orgId;

    @NotNull
    private String orgType;

    private String deptNm;
    private String deptLeader;
    private String businessNumber;
    private String businessName;
    private String businessCeo;
    private String businessAddress;
    private String businessCond;
    private String businessItem;
    private String businessNumberDoc;
    
    private String orgDeptId;
    
    
	public String getOrgDeptId() {
		return orgDeptId;
	}
	public void setOrgDeptId(String orgDeptId) {
		this.orgDeptId = orgDeptId;
	}
	public String getOrgId() {
		return orgId;
	}
	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}
	public String getOrgType() {
		return orgType;
	}
	public void setOrgType(String orgType) {
		this.orgType = orgType;
	}
	public String getBusinessNumber() {
		return businessNumber;
	}
	public void setBusinessNumber(String businessNumber) {
		this.businessNumber = businessNumber;
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public String getBusinessCeo() {
		return businessCeo;
	}
	public void setBusinessCeo(String businessCeo) {
		this.businessCeo = businessCeo;
	}
	public String getBusinessAddress() {
		return businessAddress;
	}
	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}
	public String getBusinessCond() {
		return businessCond;
	}
	public void setBusinessCond(String businessCond) {
		this.businessCond = businessCond;
	}
	public String getBusinessItem() {
		return businessItem;
	}
	public void setBusinessItem(String businessItem) {
		this.businessItem = businessItem;
	}
	
	public String getBusinessNumberDoc() {
		return businessNumberDoc;
	}
	public void setBusinessNumberDoc(String businessNumberDoc) {
		this.businessNumberDoc = businessNumberDoc;
	}
	public String getDeptNm() {
		return deptNm;
	}
	public void setDeptNm(String deptNm) {
		this.deptNm = deptNm;
	}
	public String getDeptLeader() {
		return deptLeader;
	}
	public void setDeptLeader(String deptLeader) {
		this.deptLeader = deptLeader;
	}
	
	@Override
	public String toString() {
		return "OrganizationDto [orgId=" + orgId + ", orgType=" + orgType
				+ ", deptNm=" + deptNm + ", deptLeader=" + deptLeader
				+ ", businessNumber=" + businessNumber + ", businessName="
				+ businessName + ", businessCeo=" + businessCeo
				+ ", businessAddress=" + businessAddress + ", businessCond="
				+ businessCond + ", businessItem=" + businessItem
				+ ", businessNumberDoc=" + businessNumberDoc + ", getOrgId()="
				+ getOrgId() + ", getOrgType()=" + getOrgType()
				+ ", getBusinessNumber()=" + getBusinessNumber()
				+ ", getBusinessName()=" + getBusinessName()
				+ ", getBusinessCeo()=" + getBusinessCeo()
				+ ", getBusinessAddress()=" + getBusinessAddress()
				+ ", getBusinessCond()=" + getBusinessCond()
				+ ", getBusinessItem()=" + getBusinessItem()
				+ ", getBusinessNumberDoc()=" + getBusinessNumberDoc()
				+ ", getDeptNm()=" + getDeptNm() + ", getDeptLeader()="
				+ getDeptLeader() + "]";
	}
	
}
