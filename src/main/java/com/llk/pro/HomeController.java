package com.llk.pro;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.llk.pro.dao.BoardDAO;
import com.llk.pro.dao.EmployerDAO;
import com.llk.pro.dao.JobInfoDAO;
import com.llk.pro.vo.BoardVO;
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
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) {
		if(session != null) {
			session.invalidate();
		}

		return "login";
	}
		
	@RequestMapping(value = "/insertresume.do")
	public String insertResume() {

		return "insertResumePage";
	}
		

	@RequestMapping(value = "/employerSignInForm.do") // 회원가입 창으로 이동
	public String employerSignInForm(@ModelAttribute("employerVO") EmployerVO employerVO, Model model)
			throws Exception {
		
		return "signIn";
	}
	
	@RequestMapping(value = "/myPage.do") // 마이페이지 창으로 이동
	public String myPage(HttpServletRequest request,Model model)
			throws Exception {
		
		String a = request.getParameter("id");
		
		EmployerVO vo = EmployerDAO.UserData(a);
		model.addAttribute("vo",vo);
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
	
	@RequestMapping(value = "/board.do") // 자유게시판으로 이동
	public String board(Model model)
			throws Exception {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		list = BoardDAO.BoardList();
		model.addAttribute("list",list);
		return "boardPage";
	}
	
	@RequestMapping(value = "/detailBoard.do") // 게시글 상세보기 페이지로 이동
	public String detailBoard(Model model,HttpServletRequest request)
			throws Exception {
		String a = request.getParameter("bcode");
		BoardVO detail = new BoardVO();
		detail = BoardDAO.BoardDetailList(a);
		model.addAttribute("detail",detail);
		return "boardDetailPage";
	}
	
	@RequestMapping(value = "/boardModify.do") // 게시글 상세보기 페이지로 이동
	public String boardModify(Model model,HttpServletRequest request)
			throws Exception {
		String a = request.getParameter("bcode");
		BoardVO detail = new BoardVO();
		detail = BoardDAO.BoardDetailList(a);
		model.addAttribute("detail",detail);
		return "boardModifyPage";
	}
	
	
	
	
	
	@RequestMapping(value = "/modifyUserPage.do") // 회원 정보 수정 창으로 이동
	public String modifyUserPage(HttpServletRequest request,Model model)
			throws Exception {
		String a = request.getParameter("id");
		
		EmployerVO vo = EmployerDAO.UserData(a);
		model.addAttribute("id",vo.getId());
		model.addAttribute("pwd",vo.getPwd());
		model.addAttribute("name",vo.getName());
		model.addAttribute("birth",vo.getBirth());
		model.addAttribute("sex",vo.getSex());
		model.addAttribute("email",vo.getEmail());
		model.addAttribute("country",vo.getCountry());
		model.addAttribute("flag",vo.getFlag());
		model.addAttribute("phone",vo.getPhone());
		return "userModify";
	}
	
	@RequestMapping(value = "/deleteUserPage.do") // 회원탈퇴 창으로 이동
	public String deleteUserPage(HttpServletRequest request,Model model)
			throws Exception {
		
		
		return "userDelete";
	}
	
	

	@RequestMapping(value = "/signInTry.do", method = RequestMethod.POST) // 회원가입 처리
	public String SignInTry(@ModelAttribute("employerVO") EmployerVO employerVO, Model model) throws SQLException {

		EmployerVO vo = new EmployerVO();
		vo = employerVO;

		int result = EmployerDAO.employerUpdate(vo);
		model.addAttribute("msg","회원 가입이 완료 되었습니다.");

		return "login";

	}

	@RequestMapping(value = "/loginTry.do", method = RequestMethod.POST) // 로그인 처리
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
			EmployerVO myData = EmployerDAO.UserData(id);
			session.setAttribute("session",myData);
			
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
	
	@RequestMapping(value = "/userModifyTry.do", method = RequestMethod.POST) // 회원가입 처리
	public String userModifyTry(@ModelAttribute("employerVO") EmployerVO employerVO, Model model) throws SQLException {

		EmployerVO vo = new EmployerVO();
		vo = employerVO;
		System.out.println(vo.getName());
		EmployerDAO.employerModify(vo);
		model.addAttribute("msg","정보 수정이 완료 되었습니다.");
		
		return  "redirect:/myPage.do?id="+vo.getId();

	}
	
	@RequestMapping(value = "/deleteUserTry.do") // 회원가입 처리
	public String userDeleteTry(HttpServletRequest request,Model model) throws SQLException {

		String a = request.getParameter("id");
		
		EmployerDAO.employerDelete(a);
		model.addAttribute("msg","정보 삭제가 완료 되었습니다.");
		
		return "login";

	}
	@RequestMapping(value = "/boardModifyTry.do", method = RequestMethod.POST) // 회원가입 처리
	public String boardModifyTry(@ModelAttribute("boardVO") BoardVO boardVO, Model model) throws SQLException {

		BoardVO vo = new BoardVO();
		vo = boardVO;
		System.out.println(vo.getBcode());
		BoardDAO.boardModify(vo);
		model.addAttribute("msg","정보 수정이 완료 되었습니다.");
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		list = BoardDAO.BoardList();
		model.addAttribute("list",list);
		return "boardPage";

	}

}
