package yamoyeo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class GroupListController {

	@RequestMapping(value = "GroupList.do")
	public void groupList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Parameter
		String user_id = "test";

		// user 확인
		if (user_id.isEmpty()) {
			request.setAttribute("error", "로그인 해주세요.");
			HttpUtil.forward(request, response, "/groupList.jsp");
			return;
		}

		// Service
		Service service = Service.getInstance();
		ArrayList<GroupVO> list = service.searchGroups(user_id);

		// Output View
		if (list == null) {
			request.setAttribute("result", "가입된 모임이 없습니다.");
		}
		request.setAttribute("list", list);
		HttpUtil.forward(request, response, "/groupListOutput.jsp");
	}


}
