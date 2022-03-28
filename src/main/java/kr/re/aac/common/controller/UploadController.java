package kr.re.aac.common.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.re.aac.admin.dto.FileDto;
import kr.re.aac.admin.dto.MemberDto;
import kr.re.aac.admin.dto.NewFileDto;
import kr.re.aac.common.annotation.UserId;

@Controller
public class UploadController {
    private static final int IMAGE_MAX_WIDTH = 700;
    
    @Autowired
    private ServletContext servletContext;

    private Logger logger = LoggerFactory.getLogger(getClass());
    private String imagePath = "/img";
    private String filePath = "/upload/file/";
    
    //private String uFilePath = "D:/01_dev/45_kist_school/01_workspace/kisch/web/";

    @RequestMapping("/editImage")
    public @ResponseBody Map<String, Object> imageUpload(@RequestParam("file") MultipartFile file, @UserId String userId, @RequestParam(defaultValue = "false")boolean isAddMeta) throws IOException {
        String originName = file.getOriginalFilename();
        String ext = originName.substring(originName.lastIndexOf("."));

        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        //File seveFile = new File(imagePath, uuid + ext);
        File seveFile = new File("/homepage_files/main_homepage" + imagePath + "/" + uuid + ext);
     
//        File seveFile = new File(uFilePath + imagePath, uuid + ext);
        System.out.println("real path >>" + servletContext.getRealPath("/") + imagePath);
        System.out.println("test path >>" + imagePath);
        System.out.println(uuid + ext);
        file.transferTo(seveFile);

        Map<String, Object> result = new HashMap<String, Object>();
        if(isAddMeta) {
            FileDto fileDto = new FileDto();
            fileDto.setOriginName(originName);
            fileDto.setSize((int) file.getSize());
            fileDto.setSavePath("/upload"+imagePath + "/" + uuid + ext);
            fileDto.setRegUserId(userId);
            fileDto.setBoardId("0");
        }

        BufferedImage uploadImage = ImageIO.read(seveFile);
        int width = uploadImage.getWidth();

        result.put("result", "success"); 
        result.put("imageUrl", "/upload"+imagePath + "/" + uuid + ext);
        result.put("name", file.getOriginalFilename());
        result.put("size", "" + file.getSize());
        result.put("maxWidth", width > IMAGE_MAX_WIDTH ? "y" : "n");

        return result;
    }
    
    @RequestMapping("/upload/imageDaum")
    public Map<String, Object> imageUploadDaum(@RequestParam("file") MultipartFile file, @UserId String userId, @RequestParam(defaultValue = "false")boolean isAddMeta) throws IOException {
    	String originName = file.getOriginalFilename();
    	String ext = originName.substring(originName.lastIndexOf("."));
    	
    	String uuid = UUID.randomUUID().toString().replaceAll("-", "");
    	File seveFile = new File(servletContext.getRealPath("/") + imagePath, uuid + ext);
//        File seveFile = new File(uFilePath + imagePath, uuid + ext);
    	System.out.println(servletContext.getRealPath("/") + imagePath);
    	System.out.println(uuid + ext);
    	file.transferTo(seveFile);
    	
    	Map<String, Object> result = new HashMap<String, Object>();
    	if(isAddMeta) {
    		FileDto fileDto = new FileDto();
    		fileDto.setOriginName(originName);
    		fileDto.setSize((int) file.getSize());
    		fileDto.setSavePath(imagePath + uuid + ext);
    		fileDto.setRegUserId(userId);
    		fileDto.setBoardId("0");
    	}
    	
    	BufferedImage uploadImage = ImageIO.read(seveFile);
    	int width = uploadImage.getWidth();
    	
    	result.put("result", "success");
    	result.put("imageUrl", imagePath + uuid + ext);
    	result.put("name", file.getOriginalFilename());
    	result.put("size", "" + file.getSize());
    	result.put("maxWidth", width > IMAGE_MAX_WIDTH ? "y" : "n");
    	
    	return result;
    }

    @RequestMapping("/upload/newImage")
    public @ResponseBody Map<String, Object> newImageUpload(@RequestParam("file") MultipartFile file, @UserId String userId, @RequestParam(defaultValue = "false")boolean isAddMeta, String fileTypeCd, HttpServletRequest request) throws IOException {
        MemberDto memberDto = (MemberDto) request.getSession().getAttribute("loginInfo");
        String originName = file.getOriginalFilename();
        String ext = originName.substring(originName.lastIndexOf("."));

        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        File seveFile = new File(servletContext.getRealPath("/") + imagePath, uuid + ext);
//        File seveFile = new File(uFilePath + imagePath, uuid + ext);
        file.transferTo(seveFile);

        Map<String, Object> result = new HashMap<String, Object>();
        if(isAddMeta) {
            NewFileDto fileDto = new NewFileDto();
            fileDto.setOriginName(originName);
            fileDto.setSize((int) file.getSize());
            fileDto.setSavePath(imagePath + uuid + ext);
            fileDto.setRegUserId(String.valueOf(memberDto.getId()));
            fileDto.setFileTypeCd("F-I");
        }

        BufferedImage uploadImage = ImageIO.read(seveFile);
        int width = uploadImage.getWidth();

        result.put("result", "success");
        result.put("imageUrl", imagePath + uuid + ext);
        result.put("name", file.getOriginalFilename());
        result.put("size", "" + file.getSize());
        result.put("maxWidth", width > IMAGE_MAX_WIDTH ? "y" : "n");

        return result;
    }

    @RequestMapping("/upload/myFile")
    public @ResponseBody Map<String, Object> fileUpload(@RequestParam("files[]") MultipartFile file, @UserId String userId) throws IOException {
        String originName = file.getOriginalFilename();
        String ext = originName.substring(originName.lastIndexOf("."));

        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        File seveFile = new File(servletContext.getRealPath("/") + filePath, uuid + ext);
        file.transferTo(seveFile);

        FileDto fileDto = new FileDto();
        fileDto.setOriginName(originName);
        fileDto.setSize((int) file.getSize());
        fileDto.setSavePath(filePath + uuid + ext);
        fileDto.setRegUserId(userId);
        fileDto.setBoardId("0");

        Map<String, Object> result = new HashMap<String, Object>();
        result.put("code", "success");
        result.put("fileId", fileDto.getId());
        result.put("fileName", originName);

        return result;
    }

    @RequestMapping("/upload/newMyFile")
    public @ResponseBody Map<String, Object> newFileUpload(@RequestParam("files[]") MultipartFile file, @UserId String userId, String fileTypeCd, HttpServletRequest request) throws IOException {
        MemberDto memberDto = (MemberDto) request.getSession().getAttribute("loginInfo");
        String originName = file.getOriginalFilename();
        String ext = originName.substring(originName.lastIndexOf("."));

        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        File seveFile = new File(servletContext.getRealPath("/") + filePath, uuid + ext);
        file.transferTo(seveFile);

        NewFileDto fileDto = new NewFileDto();
        fileDto.setOriginName(originName);
        fileDto.setSize((int) file.getSize());
        fileDto.setSavePath(filePath + uuid + ext);
        fileDto.setRegUserId(String.valueOf(memberDto.getId()));
        fileDto.setFileTypeCd(fileTypeCd);

        Map<String, Object> result = new HashMap<String, Object>();
        result.put("code", "success");
        result.put("fileId", fileDto.getFileId());
        result.put("filePath", fileDto.getSavePath());
        result.put("fileUrl", request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/" + fileDto.getSavePath());
        result.put("fileName", originName);

        return result;
    }

    @RequestMapping("/upload/ora/myFile")
    public @ResponseBody Map<String, Object> fileUploadOra(@RequestParam("files[]") MultipartFile file, @UserId String userId) throws IOException {
        String originName = file.getOriginalFilename();
        String ext = originName.substring(originName.lastIndexOf("."));

        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        File seveFile = new File(servletContext.getRealPath("/") + filePath, uuid + ext);
        file.transferTo(seveFile);

        FileDto fileDto = new FileDto();
        fileDto.setOriginName(originName);
        fileDto.setSize((int) file.getSize());
        fileDto.setSavePath(filePath + uuid + ext);
        fileDto.setRegUserId(userId);

        Map<String, Object> result = new HashMap<String, Object>();
        result.put("code", "success");
        result.put("fileId", fileDto.getId());
        result.put("fileName", originName);

        return result;
    }

}
