package action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.memberDAO;
import vo.Member;

public class memberAction extends ActionSupport implements SessionAware{
	Member member;
	String id;
	String password;
	boolean duplicated;
	
	memberDAO dao=new memberDAO();
	Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session=session;
	}
	
	public String isnertMember(){
		dao.insertMember(member);
		return SUCCESS;
	}
	
	public String idCheck(){
		member=dao.selectMember(id);
		duplicated=member !=null;
		return SUCCESS;
	}
	
	public String login(){
		member=dao.selectMember(id);
		if(member==null){
			return INPUT;
		}
		if(!password.equals(member.getPassword())){
			return INPUT;	
		}
		session.put("loginId", id);
		return SUCCESS;
	}
	
	public String logout(){
		session.clear();
		return SUCCESS;
	}
}
