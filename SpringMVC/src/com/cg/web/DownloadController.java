package com.cg.web;

import java.io.BufferedInputStream;
import java.io.FileInputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DownloadController {
	
	@RequestMapping("download.htm")
public void downloadPdf(HttpServletResponse response)throws Exception{
	response.setContentType("application/pdf");
	response.setHeader("Content-Disposition", "attachment");
	FileInputStream fis=new FileInputStream("N:\\Cap Training\\new.pdf");
	BufferedInputStream bis=new BufferedInputStream(fis);
	byte[] arr=new byte[fis.available()];
	bis.read(arr);
	ServletOutputStream out=response.getOutputStream();
	out.write(arr);
	out.close();
	bis.close();
	fis.close();
	
}
}
