package yamoyeo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class GroupJoinController {

	@RequestMapping(value = "GroupJoin.do")
	public void joinGroup(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Parameter
		HttpSession session = request.getSession();
//		String user_id = (String)session.getAttribute("user_id");
		String user_id = "test";
		String group_id = request.getParameter("group_id");
		System.out.println(group_id);

		Service service = Service.getInstance();
		service.addJoin(user_id, group_id);

		request.setAttribute("error", "가입되었습니다.");
		HttpUtil.forward(request, response, "/view04_ver1.jsp");

	}

}
