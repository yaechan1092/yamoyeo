package yamoyeo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
public class UserLoginController {

	@RequestMapping(value = "userLogin.do")
	public void userLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Parameter
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		HttpSession session = request.getSession();

		// 유효성 검사
		if (user_id.isEmpty() || user_pwd.isEmpty()) {
			request.setAttribute("error", "모든 정보를 입력해주세요");
			HttpUtil.forward(request, response, "/view01.jsp");
			return;
		}

		// Service
		Service service = Service.getInstance();
		String result = service.searchID(user_id, user_pwd);

		// Output View
		if (result.equals("로그인성공")) {
			session.setAttribute("user_id", user_id);
			request.setAttribute("error", "로그인 됐습니다.");

			// ======================================그룹 추천
			UserVO user = new UserDAO().searchUser(user_id);

			// Service
			ArrayList<GroupVO> list = service.recGroup(user.getInterest(), user.getAddress());

			// Output View
			if (list == null) {
				request.setAttribute("result", "가입된 모임이 없습니다.");
			}

			for(int i=0;i<list.size();i++){
				try {
					session.setAttribute(("group"+i), list.get(i).getGroup_name());
					System.out.println("추천 그룹 = " + list);
					System.out.println("group" + i + " = " + list.get(i).getGroup_name());
				} catch (Exception e) {
					System.out.println("그룹부족");
					session.setAttribute(("group"+i), null);
					
				}
			}
			
			// ========================================최근 모임, weekly 모임
			ArrayList<GroupVO> list2 = service.weeklyGroup();
			ArrayList<GroupVO> list3 = service.recentGroup();
			System.out.println("컨트롤러 내부");
			session.setAttribute("weeklyGroup1", list2.get(0).getGroup_name());
			session.setAttribute("weeklyGroup2", list2.get(1).getGroup_name());
			session.setAttribute("weeklyGroup3", list2.get(2).getGroup_name());
			session.setAttribute("recentGroup", list3);
			System.out.println(list2);
			System.out.println(list3);

			// =========================================페이지 이동
			HttpUtil.forward(request, response, "/view02.jsp");
			return;
		} else if (result.equals("비밀번호틀림")) {
			request.setAttribute("error", "비밀번호가 틀립니다");
			HttpUtil.forward(request, response, "/userLogin.jsp");
			return;
		} else {
			request.setAttribute("error", "아이디가 없습니다");
			HttpUtil.forward(request, response, "/userLogin.jsp");
			return;
		}

	}
}
