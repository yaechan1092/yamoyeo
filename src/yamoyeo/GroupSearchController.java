package yamoyeo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class GroupSearchController {

	@RequestMapping(value = "groupSearch.do")
	public void searchGroup(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Parameter
		
		 String group_id = request.getParameter("group_id");

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
		HttpUtil.forward(request, response, "/view04_ver2.jsp");
	}
	
	@RequestMapping(value = "searchGroup.do")
	public String groupSearch(HttpServletRequest request, HttpServletResponse response){
		
		String interest = request.getParameter("interest");
		String address = request.getParameter("address");
		String day = request.getParameter("day");
		
		
		Service service  = Service.getInstance();
		ArrayList<GroupVO>list = service.groupSearch(interest, address, day);
		for(int i=0 ; i<6 ; i++){
			request.setAttribute("group_id"+i,list.get(i).getInterest());
			request.setAttribute("interest"+i,list.get(i).getInterest());
			request.setAttribute("state"+i,list.get(i).getState());
			request.setAttribute("group_name"+i,list.get(i).getGroup_name());
			request.setAttribute("image"+i,	"d:/logs/"+list.get(i).getImage());
		}
		
		
		
		return "view03_ver1";
	}
	
	@RequestMapping(value = "searchMygroup.do")
	public String searchMygroup(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		ArrayList<GroupVO> list = null;
		Service service = Service.getInstance();
		list = service.searchMygroup(user_id);
		
		for(int i = 0; i<list.size(); i++){
			
			request.setAttribute("group"+i, list.get(i));
		}
		
		
		return "view08_ver1";
	}

}
