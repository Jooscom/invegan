package kr.co.invegan.member.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.invegan.member.dao.MemberDAO;
import kr.co.invegan.member.dto.MemberDTO;

@Service
public class MemberService {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    MemberDAO dao;

    public MemberDTO login(HashMap<String, String> params) {
        MemberDTO dto = dao.login(params);
        return dto;
    }

    // 여기 이메일 인증으로 바꾸기!!!!!!!!!
    public Object findId(HttpServletResponse response, String email) throws Exception {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        String id = dao.findId(email);

        if (id == null) {
            out.println("<script>");
            out.println("alert('가입된 아이디가 없습니다.');");
            out.println("history.go(-1);");
            out.println("</script>");
            out.close();
            return null;
        } else {
            return id;
        }
    }

    public String signup(HashMap<String, String> params) {
        String msg = "회원 가입이 실패하였습니다";
        logger.info("service 접근");
        int row = dao.signup(params);
        if (row > 0) {
            msg = "회원 가입이 성공하였습니다";
        }
        logger.info("row : "+row);
        
        return msg;
    }

    /*
	public String signup(Map<String, String> params) {
		String msg = "회원 가입이 실패하였습니다";

        int row = dao.signup(params);
        if (row > 0) {
            msg = "회원 가입이 성공하였습니다";
        }

        return msg;
	}*/
/*
	public String signup(String interest) {
		String msg = "회원 가입이 실패하였습니다";

        int row = dao.signup(interest);
        if (row > 0) {
            msg = "회원 가입이 성공하였습니다";
        }

        return msg;
	}
*/
/*
	public void signup(Map<String, String> params, String combinedInterests, String birthdateString) {
        MemberDTO member = new MemberDTO();
        // DAO 메서드를 호출하여 데이터를 전달
        dao.signup(member);
    }
    */

}