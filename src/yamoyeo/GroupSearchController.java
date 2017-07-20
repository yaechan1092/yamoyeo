package yamoyeo;

import java.io.IOException;
import java.util.ArrayList;

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
		String group_id = "test";// request.getParameter("group_id");

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
		HttpUtil.forward(request, response, "/view04_ver1.jsp");
	}

	@RequestMapping(value = "searchGroup.do")
	public String groupSearch(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("searchGroup.do 해서 들어왔나");
		String interest = request.getParameter("interest");
		String address = request.getParameter("address");
		String day = request.getParameter("day");

		System.out.println("받아온 관심사, 지역, 요일 = " + interest + ", " + address + ", " + day);
		Service service = Service.getInstance();
		ArrayList<GroupVO> list = service.groupSearch(interest, address, day);
		for (int i = 0; i < list.size(); i++) {
			request.setAttribute("group" + i, list.get(i));
//			request.setAttribute("interest" + i, list.get(i).getInterest());
//			request.setAttribute("state" + i, list.get(i).getState());
//			request.setAttribute("group_name" + i, list.get(i).getGroup_name());
//			request.setAttribute("image" + i, "d:/logs/" + list.get(i).getImage());
		}

		return "view03_ver1";
	}

}
