package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import java.io.*;

@Controller
public class FileController {

	@RequestMapping("/fileUploadForm.do")
	public String fileUploadForm(){
		return "file/fileUploadForm";
	}
	@RequestMapping("/fileUpload1.do")
	public String fileUpload1(@RequestParam("writer") String writer,@RequestParam("upload")MultipartFile upload)
	{
		copyInto(writer, upload);
		return "file/fileOk";
	}
	
	/**복사메소드*/
	private void copyInto(String writer, MultipartFile upload){
		System.out.println("파일작성자:"+writer);
		System.out.println("올린파일명:"+upload.getOriginalFilename());
		try {
			byte bytes[]=upload.getBytes();
			File outFile=new File("D:/temp_upload/"+upload.getOriginalFilename());
			FileOutputStream fos= new FileOutputStream(outFile);
			fos.write(bytes);
			fos.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
