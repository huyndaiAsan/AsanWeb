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
public class RecommendExcelDownController extends AbstractExcelView {


	@Override
	protected void buildExcelDocument(Map model, HSSFWorkbook wb,
			HttpServletRequest req, HttpServletResponse resp) throws Exception {
			List<Map> list = (List) model.get("revenueData");
			if(list.size() > 1){
				Map search = (Map) model.get("searchVO");
				HSSFSheet sheet = wb.createSheet("Revenue Report");
				for(int i = 0; i < 22; i++){
					sheet.setColumnWidth(i, 7500);
				}
				
				HSSFRow header = sheet.createRow(0);
				HSSFCell cell = header.createCell(0);
				int n = 0;
				cell.setCellValue("구분");
				header.createCell(n+1).setCellValue("Student Name");
				header.createCell(n+2).setCellValue("Student No");
				header.createCell(n+3).setCellValue("Program");
				header.createCell(n+4).setCellValue("STATUS");
				header.createCell(n+5).setCellValue("NAME");
				header.createCell(n+6).setCellValue("Affiliation");
				header.createCell(n+7).setCellValue("Department");
				header.createCell(n+8).setCellValue("Website URL");
				header.createCell(n+9).setCellValue("Position/Title");
				header.createCell(n+10).setCellValue("E-mail");
				header.createCell(n+11).setCellValue("Postal Address");
				header.createCell(n+12).setCellValue("Telephone");
				header.createCell(n+13).setCellValue("Fax");
				header.createCell(n+14).setCellValue("Admission to KIST School");
				header.createCell(n+15).setCellValue("Signature of Recommender");
				header.createCell(n+16).setCellValue("Date");
				header.createCell(n+17).setCellValue("Q.A");
				header.createCell(n+18).setCellValue("Q.B");
				header.createCell(n+19).setCellValue("Q.C");
				header.createCell(n+20).setCellValue("Q.D");
				header.createCell(n+21).setCellValue("Q.E");
				header.createCell(n+22).setCellValue("Q.F");
				header.createCell(n+23).setCellValue("Q.G");
				header.createCell(n+24).setCellValue("Q.H");
				header.createCell(n+25).setCellValue("Q.I");
				header.createCell(n+26).setCellValue("Q.J");
				header.createCell(n+27).setCellValue("1.");
				header.createCell(n+28).setCellValue("2.");
				header.createCell(n+29).setCellValue("3.");
				header.createCell(n+20).setCellValue("4.");
				header.createCell(n+21).setCellValue("Recommend Level");

				int rowNum = 1;
				Map vo = null;
				int j = 0;		
				for (int i=0; i < list.size(); i++) {
					vo = (Map) list.get(i);
					//create the row data
					HSSFRow row = sheet.createRow(rowNum++);
					row.createCell(j).setCellValue(i+1);
					row.createCell(j+1).setCellValue(returnValue(vo.get("name")));
					row.createCell(j+2).setCellValue(returnValue(vo.get("stu_no")));
					if(vo.get("program").equals("D")){
						row.createCell(j+3).setCellValue("Dual Degree");
					}else{
						row.createCell(j+3).setCellValue("Internship");
					}
					if(vo.get("status").equals("1")){
						row.createCell(j+4).setCellValue("접수중");
					}else if(vo.get("status").equals("2")){
						row.createCell(j+4).setCellValue("합격");
					}else{
						row.createCell(j+4).setCellValue("불합격");
					}
					row.createCell(j+5).setCellValue(returnValue(vo.get("rcm_nm")));
					row.createCell(j+6).setCellValue(returnValue(vo.get("affilication")));
					row.createCell(j+7).setCellValue(returnValue(vo.get("department")));
					row.createCell(j+8).setCellValue(returnValue(vo.get("website")));
					row.createCell(j+9).setCellValue(returnValue(vo.get("title")));
					row.createCell(j+10).setCellValue(returnValue(vo.get("email")));
					row.createCell(j+11).setCellValue(returnValue(vo.get("address")));
					row.createCell(j+12).setCellValue(returnValue(vo.get("tel")));
					row.createCell(j+13).setCellValue(returnValue(vo.get("fax")));
					row.createCell(j+14).setCellValue(returnValue(vo.get("reg_dt")));
					row.createCell(j+15).setCellValue(returnValue(vo.get("qaNm")));
					row.createCell(j+16).setCellValue(returnValue(vo.get("qbNm")));
					row.createCell(j+17).setCellValue(returnValue(vo.get("qcNm")));
					row.createCell(j+18).setCellValue(returnValue(vo.get("qdNm")));
					row.createCell(j+19).setCellValue(returnValue(vo.get("qeNm")));
					row.createCell(j+20).setCellValue(returnValue(vo.get("qfNm")));
					row.createCell(j+21).setCellValue(returnValue(vo.get("qgNm")));
					row.createCell(j+22).setCellValue(returnValue(vo.get("qhNm")));
					row.createCell(j+23).setCellValue(returnValue(vo.get("qiNm")));
					row.createCell(j+24).setCellValue(returnValue(vo.get("qjNm")));
					row.createCell(j+25).setCellValue(returnValue(vo.get("textqa")));
					row.createCell(j+26).setCellValue(returnValue(vo.get("trextqb")));
					row.createCell(j+27).setCellValue(returnValue(vo.get("textqc")));
					row.createCell(j+28).setCellValue(returnValue(vo.get("textqd")));
					row.createCell(j+29).setCellValue(returnValue(vo.get("rcm_levelNm")));
		        }
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
