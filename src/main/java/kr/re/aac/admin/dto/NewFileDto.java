package kr.re.aac.admin.dto;

public class NewFileDto {
    private String originName;

    private String savePath;

    private int size;

    private int fileId;

    private String regUserId;

    private String fileTypeCd;

    public String getOriginName() {
        return originName;
    }

    public void setOriginName(String originName) {
        this.originName = originName;
    }

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getUUID() {
        return savePath.replaceAll("upload/file/", "");
    }

    public String getRegUserId() {
        return regUserId;
    }

    public void setRegUserId(String regUserId) {
        this.regUserId = regUserId;
    }

    public int getFileId() {
        return fileId;
    }

    public void setFileId(int fileId) {
        this.fileId = fileId;
    }

    public String getFileTypeCd() {
        return fileTypeCd;
    }

    public void setFileTypeCd(String fileTypeCd) {
        this.fileTypeCd = fileTypeCd;
    }

}
