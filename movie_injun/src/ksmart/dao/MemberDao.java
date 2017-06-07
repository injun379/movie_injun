package ksmart.dao;

import java.io.IOException;
import java.sql.*;
import ksmart.driverdb.DriverDB;
import ksmart.dto.Member;

public class MemberDao {
	
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	// ���̵� �ߺ� Ȯ��
	
	public int idDuplictationCheck(String input_id) throws ClassNotFoundException, SQLException, IOException {
		int result = 0;
		DriverDB driverdb = new DriverDB();
		
		conn = driverdb.getConnection();
		stmt = conn.prepareStatement("select m_id from member where m_id=?");
		stmt.setString(1, input_id);
		
		System.out.println(stmt + " <-- stmt MemberDao.java");
		rs = stmt.executeQuery();
		
		if(rs.next()) {
			result = 0;
		} else {
			result = 1;
		}
		System.out.println(result +" <-- result MemberDao.java");
		return result;
	}
	
	// ȸ�� ���� �Է�
	
	public void insertMember(Member m) {
		DriverDB driverdb = new DriverDB();
		
		try {
			conn = driverdb.getConnection();
			stmt = conn.prepareStatement("insert into member(m_id, m_pw, m_level, m_name, m_phone, m_gender, m_email, m_point, genre_code, m_birth) values(?,?,?,?,?,?,?,?,?,?)");
		
			stmt.setString(1, m.getM_id());
			stmt.setString(2, m.getM_pw());
			stmt.setString(3, m.getM_level());
			stmt.setString(4, m.getM_name());
			stmt.setString(5, m.getM_phone());
			stmt.setString(6, m.getM_gender());
			stmt.setString(7, m.getM_email());
			stmt.setInt(8, m.getM_point());
			stmt.setString(9, m.getGenre_code());
			stmt.setString(10, m.getM_birth());
			
			System.out.println(stmt +" <-- stmt MemberDao.java");
			stmt.executeUpdate();
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
	
	// ȸ�� ���� ����
	
	public void updateMember(String m_name, String m_phone, String m_birth, String m_email, String m_id) throws ClassNotFoundException, SQLException, IOException {
		DriverDB driverdb = new DriverDB();
		
		conn = driverdb.getConnection();
		stmt = conn.prepareStatement("update member set m_name=?, m_phone=?, m_birth=?, m_email=? where m_id=?");
		stmt.setString(1, m_name);
		stmt.setString(2, m_phone);
		stmt.setString(3, m_birth);
		stmt.setString(4, m_email);
		stmt.setString(5, m_id);
		System.out.println(stmt +" <-- stmt");
		stmt.executeUpdate();
	}
	
	// �Ѹ��� ȸ�� ���� ��ȸ�Ͽ� member��ü�� ����
	
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
	
	// �α��� ó�� �޼���
	public String memberLogin(String m_id, String m_pw) throws ClassNotFoundException, SQLException, IOException{

		String login = null;
		
		DriverDB driverdb = new DriverDB();
		
		conn = driverdb.getConnection();
		stmt = conn.prepareStatement("select * from member where m_id=?");
		stmt.setString(1, m_id);
		rs = stmt.executeQuery();
		if(rs.next()){
			if(rs.getString("m_pw").equals(m_pw)) {
				login = "�α��� ����";
			} else {
				login = "��ġ���� �ʴ� ��й�ȣ�Դϴ�.";
			}
			
		} else {
			login = "�������� �ʴ� ���̵��Դϴ�.";
		}
		return login;
	}
}
