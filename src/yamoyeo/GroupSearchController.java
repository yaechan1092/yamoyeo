package yamoyeo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class GroupSearchController {

	@RequestMapping(value = "groupSearch.do")
	public void searchGroup(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Parameter
		String group_id = "test";
		// request.getParameter("group_id");

		// 유효성 체크
		// if (group_id.isEmpty()) {
		// request.setAttribute("error", "잘못누르셨습니다.");
		// HttpUtil.forward(request, response, "/groupSearch.jsp");
		// return;
		// }

		// Service
		Service service = Service.getInstance();
		GroupVO group = service.searchGroup(group_id);

		// Output View
		request.setAttribute("group", group);
		HttpUtil.forward(request, response, "/groupSearchOutput.jsp");
	}

}
