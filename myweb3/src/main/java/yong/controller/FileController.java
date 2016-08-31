package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import yong.file.model.FileDTO;

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
	@RequestMapping("/fileUpload2.do")
	public String fileUpload2(MultipartHttpServletRequest req){
		String writer=req.getParameter("writer");
		MultipartFile upload=req.getFile("upload");
		copyInto(writer, upload);
		return "file/fileOk";
	}
	@RequestMapping("/fileUpload3.do")
	public String fileUpload3(FileDTO dto){
		
		copyInto(dto.getWriter(),dto.getUpload());
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
	/**파일다운로드*/
	@RequestMapping("/fileList.do")
	public ModelAndView fileList(){
		File f=new File("D:/temp_upload/");
		File files[]=f.listFiles();
		ModelAndView mav=new ModelAndView();
		mav.addObject("files", files);
		mav.setViewName("file/fileList");
		return mav;
	}
	@RequestMapping("/down.do")
	public ModelAndView fileDownload(@RequestParam("filename")String filename){
		String path="D:/temp_upload/"+filename;
		File f=new File(path);
		ModelAndView mav=new ModelAndView("yongDownload", "downloadFile", f);
		
		return mav;
	}
	
}
