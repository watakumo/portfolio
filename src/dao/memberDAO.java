package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.Member;

public class memberDAO {
	private SqlSessionFactory factory=MybatisConfig.getSqlSessionFactory();

	public memberDAO(){
		
	}
	
	public void insertMember(Member member){
		System.out.println("memberDAO.insertMember");
		SqlSession ss=factory.openSession();
		try {
			ss.insert("member.insertMember",member);
			ss.commit();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}		finally {
			if (ss != null) ss.close();
		}
	}
	
	public Member selectMember(String id) {
		System.out.println("memberDAO.selectMember");
		SqlSession ss = null;
		Member mem = null;
		try {
			ss = factory.openSession();
			mem = ss.selectOne("memer.selectCustomer", id);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			if (ss != null) ss.close();
		}		
		return mem;
	}
}
