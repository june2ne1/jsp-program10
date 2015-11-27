package admin;

import java.util.List;

import member.MemberService;
import member.MemberServiceImpl;

public class AdminServiceImpl implements AdminService{
	private static AdminService instance = new AdminServiceImpl();
	MemberService memberService = MemberServiceImpl.getInstance();
	private AdminServiceImpl() {}
	public static AdminService getInstance(){
		return instance;
	}
	AdminDAO dao = AdminDAOImpl.getInstance();
	@Override
	public List getMemberList() {
		return memberService.getList();
	}
}
