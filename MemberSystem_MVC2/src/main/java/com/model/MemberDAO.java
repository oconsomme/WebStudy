package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	// 데이터베이스 연결 메소드
	public void getconnection() {
		// JDBC 순서
	    // 0.드라이버 파일 프로젝트에 넣기
	    // 1.드라이버 동적로딩
	    try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
	    
		    // 2.커넥션 연결
		    String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		    String db_id = "shopping";
		    String db_pw = "12345";
		      
		    conn = DriverManager.getConnection(db_url, db_id, db_pw);
	    
	    } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("DB연결에 필요한 정보가 맞는 지 체크하세요!");
		}
	}
	
	// 데이터베이스 연결 종료 메소드
	public void close() {
		try {
			if (rs != null){
				rs.close();
			}
			if(psmt != null){
		       psmt.close();
		    }
		    if(conn != null){
		       conn.close();
		    }
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
	
	// 회원가입 메소드
	public void join(MemberDTO member) {
		getconnection();
		try {
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
		    psmt.setString(1, member.getId());
		    psmt.setString(2, member.getPw());
		    psmt.setString(3, member.getNick());
		    psmt.setString(4, member.getEmail());
		    psmt.setString(5, member.getPhone());
		    psmt.setString(6, member.getGender());
		    psmt.setInt(7, member.getAge());
		      
		    psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	
	// 로그인 메소드
	// - 회원 정보가 있는 경우, nick을 반환
	// - 없으면 null을 반환
	public String login(String id, String pw){
		getconnection();
		
		try {

			String sql = "SELECT NICK FROM MEMBER WHERE(ID = ? AND PW = ?)";
		    PreparedStatement psmt = conn.prepareStatement(sql);
		      
		    psmt.setString(1, id);
		    psmt.setString(2, pw);
		      		    
		    rs = psmt.executeQuery();
		    
		    if (rs.next()){
				// 로그인 성공
		    	return rs.getString(1);
			
			}
		    
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return null;

	}

	public int delete(MemberDTO dto) {
		getconnection();
		int cnt = 0;
		try {
			String sql = "DELETE FROM MEMBER WHERE(ID = ? AND PW = ?)";
		    psmt = conn.prepareStatement(sql);
		      
		    psmt.setString(1, dto.getId());
		    psmt.setString(2, dto.getPw());
		     
		    cnt = psmt.executeUpdate();
		     
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
		
	}

	public int update(MemberDTO dto) {
		int cnt = 0;
		getconnection();
		try {
			String sql = "UPDATE MEMBER SET NICK = ?,EMAIL = ?,PHONE = ?,GENDER = ?,AGE = ? WHERE (ID = ? AND PW = ?)";
		    psmt = conn.prepareStatement(sql);
		      
		    psmt.setString(1, dto.getNick());
		    psmt.setString(2, dto.getEmail());
		    psmt.setString(3, dto.getPhone());
		    psmt.setString(4, dto.getGender());
		    psmt.setInt(5, dto.getAge());
		    psmt.setString(6, dto.getId());
		    psmt.setString(7, dto.getPw());
		      
		    cnt = psmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
		
	}
	
	public ArrayList<MemberDTO> select(){
		ArrayList<MemberDTO> list = new ArrayList<>();
		
		getconnection();
		
		String sql = "SELECT * FROM MEMBER";
	    try {
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			
		while(rs.next()){
			String id = rs.getString("id");
			String pw = rs.getString("pw");
		    String nick = rs.getString("nick");
		    String email = rs.getString("email");
		    String phone = rs.getString("phone");
		    String gender = rs.getString("gender");
		    int age = rs.getInt("age");
		    
		    MemberDTO dto = new MemberDTO(id, pw, nick, email, phone, gender, age);
		    list.add(dto);
		}
			
	    } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
		
	}


}
