package yamoyeo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class GroupDropController {

	@RequestMapping(value = "GroupDrop.do")
	public void dropGroup(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Parameter
		HttpSession session = request.getSession();
		String group_id = request.getParameter("group_id");
		String user_id = (String) session.getAttribute("user_id");

		Service service = Service.getInstance();
		service.deleteJoin(user_id, group_id);
		request.setAttribute("error", "탈퇴했습니다.");

		// Output View
		HttpUtil.forward(request, response, "groupdrop.jsp");

	}

}
