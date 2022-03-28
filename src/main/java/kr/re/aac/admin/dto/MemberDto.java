package kr.re.aac.admin.dto;

import kr.re.aac.common.ShaPasswordUtil;
import kr.re.aac.util.AES;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import java.util.Date;

public class MemberDto {
    private int id;

    @NotNull
    @Size(min=5, max=20, message = "아이디는 {min}~{max}자 입니다.")
    @Pattern(regexp = "\\w{5,20}", message = "아이디는 문자,숫자만 가능합니다.")
    private String userId;

    /*@NotNull 17.01.02 비밀번호 작성 규칙 추가로 인해 주석
    @Size(min=8, max=20, message = "비밀번호는 {min}~{max}자 입니다.")*/
    private String password;

    @NotNull
    @Size(min=2, max=20, message = "이름은 {min}~{max}자 입니다.")
    private String name;

    private String position;
    private String agency;
    private String ceo;

    @NotNull
    @Pattern(regexp = "[\\w\\.]+@[\\w\\.]+\\.\\w+", message = "이메일 형식이 잘못되었습니다.")
    private String email;

    @NotNull
    @NotEmpty(message = "주소를 입력해주세요.")
    private String address1;

    @NotNull
    @NotEmpty(message = "주소를 입력해주세요.")
    private String address2;

    @NotNull
    @NotEmpty(message = "주소를 입력해주세요.")
    private String zipCode;

    private String tel;
    private String hp;
    private String fax;
    private String level;

    private Date regDate;
    private Date lastLoginDate;
    private int loginCount;

    private String businessNumber;
    private String businessName;
    private String businessCeo;
    private String businessAddress;
    private String businessCond;
    private String businessItem;
    private String businessNumberDoc;
    private int orgId;
    private String orgType;
    
    private String orgDeptId;
    private String orgYN;
    
    private String deptNm;
    private String deptLeader;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public String getEncPassword() {
        try {
            return AES.encrypt(password);
        } catch (Exception e) {
            return password;
        }
    }

    public void setDecPassword(String password) {
        try {
            this.password = AES.decrypt(password);
        } catch (Exception e) {
            this.password = password;
        }
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getEncShaPassword(){
    	try{
    		ShaPasswordUtil shaPasswordUtil = new ShaPasswordUtil("AAC");
    		return  shaPasswordUtil.getEncodePwStr(password);
    	}catch(Exception e){
    		return password;
    	}
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getAgency() {
        return agency;
    }

    public void setAgency(String agency) {
        this.agency = agency;
    }

    public String getCeo() {
        return ceo;
    }

    public void setCeo(String ceo) {
        this.ceo = ceo;
    }

    public String getEmail() {
        return email;
    }

    public String getEncEmail() throws Exception {
        return AES.encrypt(email);
    }

    public void setDecEmail(String email) {
        try {
            this.email = AES.decrypt(email);
        } catch (Exception e) {
            this.email = email;
        }
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getTel() {
        return tel;
    }

    public String getEncTel() {
        try {
            return AES.encrypt(tel);
        } catch (Exception e) {
            return tel;
        }
    }

    public void setDecTel(String tel) {
        try {
            this.tel = AES.decrypt(tel);
        } catch (Exception e) {
            this.tel = tel;
        }
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getHp() {
        return hp;
    }

    public String getEncHp() {
        try {
            return AES.encrypt(hp);
        } catch (Exception e) {
            return hp;
        }
    }

    public void setDecHp(String hp) {
        try {
            this.hp = AES.decrypt(hp);
        } catch (Exception e) {
            this.hp = hp;
        }
    }

    public void setHp(String hp) {
        this.hp = hp;
    }

    public String getFax() {
        return fax;
    }

    public String getEncFax() {
        try {
            return AES.encrypt(fax);
        } catch (Exception e) {
            return fax;
        }
    }

    public void setDecFax(String fax) {
        try {
            this.fax = AES.decrypt(fax);
        } catch (Exception e) {
            this.fax = fax;
        }
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
    
    public int getOrgId() {
        return orgId;
    }

    public void setOrgId(int orgId) {
        this.orgId = orgId;
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
    
    public String getbusinessNumberDoc() {
        return businessNumberDoc;
    }

    public void setbusinessNumberDoc(String businessNumberDoc) {
        this.businessNumberDoc = businessNumberDoc;
    }


    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Date getLastLoginDate() {
        return lastLoginDate;
    }

    public void setLastLoginDate(Date lastLoginDate) {
        this.lastLoginDate = lastLoginDate;
    }

    public int getLoginCount() {
        return loginCount;
    }

    public void setLoginCount(int loginCount) {
        this.loginCount = loginCount;
    }

    
    public String getOrgDeptId() {
		return orgDeptId;
	}

	public void setOrgDeptId(String orgDeptId) {
		this.orgDeptId = orgDeptId;
	}

	public String getOrgYN() {
		return orgYN;
	}

	public void setOrgYN(String orgYN) {
		this.orgYN = orgYN;
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

	
	public String getOrgType() {
		return orgType;
	}

	public void setOrgType(String orgType) {
		this.orgType = orgType;
	}

	@Override
    public String toString() {
        return "MemberDto{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", position='" + position + '\'' +
                ", agency='" + agency + '\'' +
                ", ceo='" + ceo + '\'' +
                ", email='" + email + '\'' +
                ", address1='" + address1 + '\'' +
                ", address2='" + address2 + '\'' +
                ", zipCode='" + zipCode + '\'' +
                ", tel='" + tel + '\'' +
                ", hp='" + hp + '\'' +
                ", fax='" + fax + '\'' +
                ", level='" + level + '\'' +
                ", regDate=" + regDate +
                ", lastLoginDate=" + lastLoginDate +
                ", loginCount=" + loginCount +
                ", businessNumber='" + businessNumber + '\'' +
                ", businessName='" + businessName + '\'' +
                ", businessCeo='" + businessCeo + '\'' +
                ", businessAddress='" + businessAddress + '\'' +
                ", businessCond='" + businessCond + '\'' +
                ", businessItem='" + businessItem + '\'' +
                '}';
    }
}
