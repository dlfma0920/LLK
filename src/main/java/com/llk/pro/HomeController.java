package com.llk.pro;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.llk.pro.dao.EmployerDAO;
import com.llk.pro.dao.JobInfoDAO;
import com.llk.pro.vo.EmployerVO;
import com.llk.pro.vo.JobinfoVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {

		return "login";
	}

	@RequestMapping(value = "/employerSignInForm.do") // 회원가입 창으로 이동
	public String employerSignInForm(@ModelAttribute("employerVO") EmployerVO employerVO, Model model)
			throws Exception {
		return "signIn";
	}
	
	@RequestMapping(value = "/myPage.do") // 마이페이지 창으로 이동
	public String myPage()
			throws Exception {
		return "myPage";
	}
	
	@RequestMapping(value = "/jobinfoList.do") // 기업정보 창으로 이동
	public String jobInfoList(Model model)
			throws Exception {
		ArrayList<JobinfoVO> list = new ArrayList<JobinfoVO>();
		list = JobInfoDAO.JobInfoList();
		model.addAttribute("list",list);
		return "main";
	}

	@RequestMapping(value = "/signInTry.do", method = RequestMethod.POST)
	public String SignInTry(@ModelAttribute("employerVO") EmployerVO employerVO, Model model) throws SQLException {

		EmployerVO vo = new EmployerVO();
		vo = employerVO;

		int result = EmployerDAO.employerUpdate(vo);
		model.addAttribute("msg","회원 가입이 완료 되었습니다.");

		return "login";

	}

	@RequestMapping(value = "/loginTry.do", method = RequestMethod.POST)
	public String loginTry(@RequestParam("id") String id, @RequestParam("pwd") String pwd, Model model,HttpSession session) {
		// 로그인 처리
		EmployerVO vo = new EmployerVO();
		ArrayList<JobinfoVO> list = new ArrayList<JobinfoVO>();
		String str = "";
		vo.setId(id);
		vo.setPwd(pwd);

		int result = EmployerDAO.loginCheck(vo); // 로그인 체크
		if (result == 1) { // 로그인 성공했을 시
			list = JobInfoDAO.JobInfoList();
			model.addAttribute("list",list);
			session.setAttribute("session",id);
			
			return "main";
		} else if (result == 0) { // 아이디는 일치하고 비밀번호는 일치하지 않을 때
			str = "비밀번호가 틀렸습니다.";
			model.addAttribute("msg", str);
			return "login";
		} else if (result == -1) { // 일치하는 아이디가 존재하지 않을 때
			str = "아이디가 틀렸습니다.";
			model.addAttribute("msg", str);
			return "login";
		}

		return "";
	}

}
