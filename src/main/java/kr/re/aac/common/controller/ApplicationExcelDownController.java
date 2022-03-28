package kr.re.aac.common.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

/**  
 * 입학신청 Excel 
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2018. 8. 27.   min           최초생성
 * 
 * @version 1.0
 * @see
 * 
 */
public class ApplicationExcelDownController extends AbstractExcelView {


	@Override
	protected void buildExcelDocument(Map model, HSSFWorkbook wb,
			HttpServletRequest req, HttpServletResponse resp) throws Exception {
			List<Map> list = (List) model.get("revenueData");
			if(list.size() > 1){
				Map search = (Map) model.get("searchVO");
				//if(tokenSearch.getStatus() == null || tokenSearch.getStatus().equals("")){
					HSSFSheet sheet = wb.createSheet("Revenue Report");
					for(int i = 0; i < 68; i++){
						sheet.setColumnWidth(i, 7500);
					}
					
					HSSFRow header = sheet.createRow(0);
					HSSFCell cell = header.createCell(0);
					
					cell.setCellValue("구분");
					header.createCell(1).setCellValue("Name");
					header.createCell(2).setCellValue("student No");
					header.createCell(3).setCellValue("Date of Birth");
					header.createCell(4).setCellValue("Country of Residence");
					header.createCell(5).setCellValue("Nationality");
					header.createCell(6).setCellValue("Passport No");
					header.createCell(7).setCellValue("Foreign Registration No");
					header.createCell(8).setCellValue("Gender");
					header.createCell(9).setCellValue("Marital Status");
					header.createCell(10).setCellValue("E-mail Address");
					header.createCell(11).setCellValue("Mailing Address");
					header.createCell(12).setCellValue("Program");
					header.createCell(13).setCellValue("Final Academic Background");
					header.createCell(14).setCellValue("Dual Degree Major");
					header.createCell(15).setCellValue("Dual Degree Concentration");
					header.createCell(16).setCellValue("Internship Research Division");
					header.createCell(17).setCellValue("Internship Center");
					header.createCell(18).setCellValue("English Score");
					header.createCell(19).setCellValue("Score");
					header.createCell(20).setCellValue("Date of test");
					int n = 21;
					for(int i = 0 ; i < 4 ; i++){
						header.createCell(n).setCellValue("School Gubun");
						header.createCell(n+1).setCellValue("Name");
						header.createCell(n+2).setCellValue("Location");
						header.createCell(n+3).setCellValue("Major");
						header.createCell(n+4).setCellValue("Period");
						header.createCell(n+5).setCellValue("Degree");
						header.createCell(n+6).setCellValue("Status");
						header.createCell(n+7).setCellValue("GPA");
						n = n+8;
					}
					for(int i = 0 ; i < 3 ; i++){
						header.createCell(n).setCellValue("Work Experience Gubun");
						header.createCell(n+1).setCellValue("Period");
						header.createCell(n+2).setCellValue("Department");
						header.createCell(n+3).setCellValue("Position");
						header.createCell(n+4).setCellValue("Others");
						n = n+5;
					}
					header.createCell(n).setCellValue("institution");
					header.createCell(n+1).setCellValue("examples");
					header.createCell(n+2).setCellValue("field");
					header.createCell(n+3).setCellValue("detail");
					int rowNum = 1;
					Map vo = null;
							
					for (int i=0; i < list.size(); i++) {
						vo = (Map) list.get(i);
						List<Map> acdmList = (List) vo.get("acdmList");
						List<Map> weprcList = (List) vo.get("weprcList");
						//create the row data
						HSSFRow row = sheet.createRow(rowNum++);
						row.createCell(0).setCellValue(i+1);
						row.createCell(1).setCellValue(returnValue(vo.get("nm")));
						row.createCell(2).setCellValue(returnValue(vo.get("stu_no")));
						row.createCell(3).setCellValue(returnValue(vo.get("birth")));
						row.createCell(4).setCellValue(returnValue(vo.get("contryNm")));
						row.createCell(5).setCellValue(returnValue(vo.get("nationNm")));
						row.createCell(6).setCellValue(returnValue(vo.get("passport")));
						row.createCell(7).setCellValue(returnValue(vo.get("foreign_no")));
						row.createCell(8).setCellValue(returnValue(vo.get("gender")));
						row.createCell(9).setCellValue(returnValue(vo.get("marital")));
						row.createCell(10).setCellValue(returnValue(vo.get("email")));
						row.createCell(11).setCellValue(returnValue(vo.get("mailing")));
						if(vo.get("program").equals("D")){
							row.createCell(12).setCellValue("Dual Degree");
						}else{
							row.createCell(12).setCellValue("Internship");
						}
						if(vo.get("final_academic").equals("B")){
							row.createCell(13).setCellValue("Bachelor");
						}else if(vo.get("final_academic").equals("B")){
							row.createCell(13).setCellValue("M.S.");
						}else{
							row.createCell(13).setCellValue("Ph.D");
						}
						row.createCell(14).setCellValue(returnValue(vo.get("dual_mahorNm")));
						row.createCell(15).setCellValue(returnValue(vo.get("dual_concentrationNm")));
						row.createCell(16).setCellValue(returnValue(vo.get("inter_researchNm")));
						row.createCell(17).setCellValue(returnValue(vo.get("inter_centerNm")));
						row.createCell(18).setCellValue(returnValue(vo.get("e_score")));
						if(vo.get("e_score").equals("i")){
							row.createCell(18).setCellValue("iBT");
						}else if(vo.get("e_score").equals("C")){
							row.createCell(18).setCellValue("CBT");
						}else if(vo.get("e_score").equals("P")){
							row.createCell(18).setCellValue("PBT");
						}else if(vo.get("e_score").equals("T")){
							row.createCell(18).setCellValue("TOEIC");
						}else if(vo.get("e_score").equals("L")){
							row.createCell(18).setCellValue("TEPS");
						}else{
							row.createCell(18).setCellValue("IELTS");
						}
						row.createCell(19).setCellValue(returnValue(vo.get("score")));
						row.createCell(20).setCellValue(returnValue(vo.get("tdateyy").toString()+vo.get("tdatemm").toString()));
						int num = 21;
						for (int j = 0; j < 4; j++) {
							try {
								if(acdmList.get(j).get("gubun").equals("G")){
									row.createCell(num).setCellValue("Graduate School");
								}else{
									row.createCell(num).setCellValue("Under-graduate School");
								}
								row.createCell(num+1).setCellValue(returnValue(acdmList.get(j).get("sc_nmNm")));
								row.createCell(num+2).setCellValue(returnValue(acdmList.get(j).get("locationNm")));
								row.createCell(num+3).setCellValue(returnValue(acdmList.get(j).get("major")));
								row.createCell(num+4).setCellValue(returnValue(acdmList.get(j).get("stdtyy").toString()+acdmList.get(j).get("stdtmm").toString()+"~"+acdmList.get(j).get("endtyy").toString()+acdmList.get(j).get("endtmm").toString()));
								if(acdmList.get(j).get("degree").equals("M")){
									row.createCell(num+5).setCellValue("M.S.");
								}else{
									row.createCell(num+5).setCellValue("Ph.D");
								}
								row.createCell(num+6).setCellValue(returnValue(acdmList.get(j).get("statNm")));
								row.createCell(num+7).setCellValue(returnValue(acdmList.get(j).get("gpa")));
								num = num+8;
							} catch (Exception e) {
								row.createCell(num).setCellValue("-");
								row.createCell(num+1).setCellValue("-");
								row.createCell(num+2).setCellValue("-");
								row.createCell(num+3).setCellValue("-");
								row.createCell(num+4).setCellValue("-");
								row.createCell(num+5).setCellValue("-");
								row.createCell(num+6).setCellValue("-");
								row.createCell(num+7).setCellValue("-");
								num = num+8;
							}
						}
						
						for(int j = 0 ; j < 3 ; j++){
							try {
								row.createCell(num).setCellValue(j+1);
								row.createCell(num+1).setCellValue(returnValue(weprcList.get(j).get("wstdtyy").toString()+weprcList.get(j).get("wstdtmm").toString()+"~"+weprcList.get(j).get("estdtyy").toString()+weprcList.get(j).get("estdtmm").toString()));
								row.createCell(num+2).setCellValue(returnValue(weprcList.get(j).get("depart")));
								row.createCell(num+3).setCellValue(returnValue(weprcList.get(j).get("position")));
								row.createCell(num+4).setCellValue(returnValue(weprcList.get(j).get("others")));
								num = num+5;
							} catch (Exception e) {
								row.createCell(num).setCellValue("-");
								row.createCell(num+1).setCellValue("-");
								row.createCell(num+2).setCellValue("-");
								row.createCell(num+3).setCellValue("-");
								row.createCell(num+4).setCellValue("-");
								num = num+5;
							}
						}
						row.createCell(num).setCellValue(returnValue(vo.get("institution")));
						row.createCell(num+1).setCellValue(returnValue(vo.get("examples")));
						row.createCell(num+2).setCellValue(returnValue(vo.get("field")));
						row.createCell(num+3).setCellValue(returnValue(vo.get("detail")));
			        }
				//}
			}
	}

	private String returnValue(Object object) {
		if (object == null) {
			return "";
		} else if (object instanceof String) {
			return object.toString() + "";
		}else if (object instanceof Date) {
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String str = df.format(object);
			return str;
		}
		return object.toString();

	}

	private String returnValue(Date d) {
		if (d == null) {
			return "";
		}
		DateFormat df = new SimpleDateFormat("yyyy.MM.dd");
		String str = df.format(d);

		return str;
	}
}
