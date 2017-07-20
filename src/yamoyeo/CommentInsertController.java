package yamoyeo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class CommentInsertController  {

	@RequestMapping(value = "commentInsert.do")
	public void insertComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Parameter
		String comment_text = request.getParameter("comment_text");
		HttpSession session = request.getSession();
		ArrayList<CommentVO> list= null;
		
		// 유효성 검사
		if (comment_text.isEmpty()) {
			request.setAttribute("error", "댓글을 입력해주세요");
			HttpUtil.forward(request, response, "/view04_ver2.jsp");
			return;
		}

		 CommentVO comment = new CommentVO(0 , comment_text, (String)session.getAttribute("user_id"), request.getParameter("group_id"));
		
		 Service service = Service.getInstance();
		
		 service.insertComment(comment);
//		 request.setAttribute("comment", comment);
		 list = service.getComment(request.getParameter("group_id"));
		 for(int i =0; i<list.size(); i++){
			 request.setAttribute("comment"+i, list.get(i));
		 }
		 System.out.println("log");
		// Output 
		request.setAttribute("group_id", request.getParameter("group_id"));
		HttpUtil.forward(request, response, "/view04_ver2.jsp");

	}

}
