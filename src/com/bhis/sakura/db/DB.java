package com.bhis.sakura.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//��ǰ�����ã������Զ����ӣ�������κα��CRUD ͨ�����õ�ǰ��ķ���������sql����
public class DB {
	private Connection conn;
	private static DB db=null;

	public static DB getDB(){
		if(db==null){
			db = new DB();
		}
		return db;
	}
	
	//�ڹ��췽���У��������
	private DB() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/sakura";
			this.conn = DriverManager.getConnection(url,"root","4501114");
			System.out.println(this.conn.isClosed());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//ִ����ɾ��
	public int update(String sql){
		System.out.println("sql: "+sql);
		try {
			Statement stmt = this.conn.createStatement();
			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;	
	}
	
	//ִ�в�ѯ
	public ResultSet query(String sql){
		System.out.println("sql: "+sql);
		try {
			Statement stmt = this.conn.createStatement();
			return stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		DB db = new DB();
		String sql="insert into kinds values(null,'��Ϸ')";
		int res = db.update(sql);
		if(res==1){
			System.out.println("��ӳɹ�");
		}else{
			System.out.println("���ʧ��");
		}
		
	}
	
}
