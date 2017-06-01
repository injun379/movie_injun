package ksmart.dao;

import java.io.IOException;
import java.sql.*;
import ksmart.driverdb.DriverDB;
import ksmart.dto.Member;

public class MemberDao {
	
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	// 회원 정보 입력
	
	public void insertMember(Member m) {
		DriverDB driverdb = new DriverDB();
		
		try {
			conn = driverdb.getConnection();
			stmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?,?,?,?,?)");
		
			stmt.setString(1, m.getM_id());
			stmt.setString(2, m.getM_pw());
			stmt.setString(3, m.getM_level());
			stmt.setString(4, m.getM_name());
			stmt.setString(5, m.getM_phone());
			stmt.setString(6, m.getM_gender());
			stmt.setString(7, m.getGenre_code());
			stmt.setString(8, m.getM_email());
			stmt.setInt(9, m.getM_point());
			stmt.setString(10, m.getM_birth());
			
			System.out.println(stmt +" <-- stmt MemberDao.java");
		} catch (ClassNotFoundException | SQLException | IOException e) {
			e.printStackTrace();
		} finally{
			try { 
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			try { 
				stmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// 회원 정보 수정
	
	public void updateMember(String m_name, String m_phone, String m_birth, String m_email, String m_id) throws ClassNotFoundException, SQLException, IOException {
		DriverDB driverdb = new DriverDB();
		
		conn = driverdb.getConnection();
		stmt = conn.prepareStatement("update member set m_name=?, m_phone=?, m_birth=?, m_email=? where m_id=?");
		stmt.setString(1, m_name);
		stmt.setString(2, m_phone);
		stmt.setString(3, m_birth);
		stmt.setString(4, m_email);
		stmt.setString(5, m_id);
		stmt.executeUpdate();
	}
	
	// 한명의 회원 정보 조회하여 member객체에 저장
	
	public Member searchOneMember(String m_id) throws ClassNotFoundException, SQLException, IOException {
		Member m = new Member();
		
		DriverDB driverdb = new DriverDB();
		
		conn = driverdb.getConnection();
		System.out.println(conn);
		stmt = conn.prepareStatement("select * from member where m_id=?");
		stmt.setString(1, m_id);
		rs = stmt.executeQuery();
		
		if(rs.next()) {
			m.setM_id(rs.getString("m_id"));
			m.setM_pw(rs.getString("m_pw"));
			m.setM_level(rs.getString("m_level"));
			m.setM_name(rs.getString("m_name"));
			m.setM_gender(rs.getString("m_gender"));
			m.setM_email(rs.getString("m_email"));
			m.setM_phone(rs.getString("m_phone"));
			m.setGenre_code(rs.getString("genre_code"));
			m.setM_birth(rs.getString("m_birth"));
			m.setM_point(rs.getInt("m_point"));
		}
		return m;
	}
	
	// 로그인 처리 메서드
	public String memberLogin(String m_id, String m_pw) throws ClassNotFoundException, SQLException, IOException{

		String login = null;
		
		DriverDB driverdb = new DriverDB();
		
		conn = driverdb.getConnection();
		stmt = conn.prepareStatement("select * from member where m_id=?");
		stmt.setString(1, m_id);
		rs = stmt.executeQuery();
		if(rs.next()){
			if(rs.getString("m_pw").equals(m_pw)) {
				login = "로그인 성공";
			} else {
				login = "일치하지 않는 비밀번호입니다.";
			}
			
		} else {
			login = "존재하지 않는 아이디입니다.";
		}
		return login;
	}
}
