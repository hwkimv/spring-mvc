package hello.servlet.web.frontcontroller.v2.controller;

import hello.servlet.domain.member.Member;
import hello.servlet.domain.member.MemberRepository;
import hello.servlet.web.frontcontroller.MyView;
import hello.servlet.web.frontcontroller.v2.ControllerV2;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class MemberSaveControllerV2 implements ControllerV2 {
    private MemberRepository memberRepository = MemberRepository.getInstance();

    @Override
    public MyView process(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. 폼에서 입력받은 회원 정보를 저장한다.
        String username = request.getParameter("username");
        int age = Integer.parseInt(request.getParameter("age"));

        // 2. 저장한 회원 정보를 모델에 담는다.
        Member member = new Member(username, age);
        memberRepository.save(member);

        request.setAttribute("member", member);

        // 3. 회원 목록 화면으로 이동한다.
        return new MyView("/WEB-INF/views/save-result.jsp");
    }
}
