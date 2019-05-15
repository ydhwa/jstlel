package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/01")
public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int iVal = 10;
		long lVal = 10;
		float fVal = 3.14f;
		boolean bVal = true;
		Object obj = null;
		
		request.setAttribute("iVal", iVal);
		request.setAttribute("lVal", lVal);
		request.setAttribute("fVal", fVal);
		request.setAttribute("bVal", bVal);
		request.setAttribute("obj", obj);
		
		// Vo를 만들자니 여기서만 사용하고, 그렇다고 그냥 쓰자니 너무 따로 선언해야 하는 경우 map을 사용한다.
		Map<String, Object> map = new HashMap<>();
		map.put("iVal", iVal);
		map.put("lVal", lVal);
		map.put("fVal", fVal);
		map.put("bVal", bVal);
		request.setAttribute("map", map);
		
		// el scope test
		
		UserVo vo1 = new UserVo();
		vo1.setNo(10);
		vo1.setName("둘리");
		// request scope
		request.setAttribute("vo", vo1);
		
		UserVo vo2 = new UserVo();
		vo2.setNo(20);
		vo2.setName("마이콜");
		// session scope
		HttpSession session = request.getSession(true);
		session.setAttribute("vo", vo2);
		
		request.getRequestDispatcher("/WEB-INF/views/01.jsp").forward(request, response);;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
