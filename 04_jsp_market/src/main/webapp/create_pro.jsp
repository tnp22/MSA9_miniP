<%@page import="dao.BoardDAO"%>
<%@page import="dto.Files"%>
<%@page import="service.BoardServiceImpl"%>
<%@page import="service.BoardService"%>
<%@page import="service.FilesServiceImpl"%>
<%@page import="service.FilesService"%>
<%@page import="dto.User"%>
<%@page import="dto.Board"%>
<%@page import="java.io.File"%>

<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
DiskFileUpload upload = new DiskFileUpload();

String path = "C:\\UPLOAD";

upload.setSizeMax(10 * 1000 * 1000); // 10MB - 파일 최대 크기
upload.setSizeThreshold(4 * 1024); // 4MB	- 메모리상의 최대 크기
upload.setRepositoryPath(path); // 임시 저장 경로

List<FileItem> items = upload.parseRequest(request);
Iterator params = items.iterator();
BoardService bd = new BoardServiceImpl();
FilesService fs = new FilesServiceImpl();

String paramName = " ";
String paramTitle = " ";
String paramContent = " ";
String paramCategory = " ";
int paramStatus = 0;
int paramPrice = 0;

String userid = (String) session.getAttribute("loginId");
User user = (User) session.getAttribute("loginUser");

Board board = new Board();
Files fff = new Files();

fff.setCode(10);
fff.setTable_name("board");

while (params.hasNext()) {

	FileItem item = (FileItem) params.next();

	// 일반 데이터
	if (item.isFormField()) {
		String name = item.getFieldName();
		String value = item.getString("utf-8");
		out.println(name + " : " + value + "<br>");
		if (name.equals("name")) {
	paramName = value;
		} else if (name.equals("title")) {
	paramTitle = value;
		} else if (name.equals("content")) {
	paramContent = value;
		}

		else if (name.equals("category")) {
	paramCategory = value;
		} else if (name.equals("status")) {
	paramStatus = Integer.parseInt(value);
		} else if (name.equals("price")) {
	paramPrice = Integer.parseInt(value);
		}

		board.setTitle(paramTitle);
		board.setContent(paramContent);
		board.setPrice(paramPrice);
		board.setStatus(paramStatus);
		board.setCategory(paramCategory);
		board.setUuid(user.getUuid());

	}
	// 파일 데이터
	else {
		String fileFieldName = item.getFieldName();
		String fileName = item.getName();
		String contentType = item.getContentType();
		fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);

		long fileSize = item.getSize();

		fff.setFile_path("C:\\UPLOAD" + "/" + fileName);
	}

}

int boardId = bd.insert(board);
//board.setNo(boardId);

fff.setTable_no(boardId);

fs.insert(fff);

response.sendRedirect("main.jsp");
%>


