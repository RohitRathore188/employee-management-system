package com.infoviaan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.infovian.dto.Employee;
import com.infovian.dto.Inquiry;

public class AdminModel {
	public static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/";
	public static final String DB_NAME = "project";
	public static final String USER_NAME = "root";
	public static final String PASSWORD = "root";

	public int checkLogin(String u, String p) {
		int i = 0;
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from adminLogin where username=? and password =?");
			ps.setString(1, u);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			if (rs.next())
				i = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public int register(Employee ee) {
		int i = 0;
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);
			PreparedStatement pp = con.prepareStatement(
					"create table if not exists employee (ename varchar(20), eid varchar(10), edesignation varchar(20), esalary float, edoj varchar(20), eemail varchar(30), eaddress varchar(30))");
			pp.executeUpdate();

			PreparedStatement ps = con.prepareStatement("insert into employee values(?,?,?,?,?,?,?)");
			ps.setString(1, ee.getName());
			ps.setString(2, ee.getId());
			ps.setString(3, ee.getDesignation());
			ps.setDouble(4, ee.getSalary());
			ps.setString(5, ee.getDoj());
			ps.setString(6, ee.getEmail());
			ps.setString(7, ee.getAddress());
			i = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public ArrayList<Employee> getAllEmployee() {
		ArrayList<Employee> al = new ArrayList<Employee>();
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from employee");

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee ee = new Employee(rs.getString("ename"), rs.getString("eid"), rs.getString("edesignation"),
						rs.getDouble("esalary"), rs.getString("edoj"), rs.getString("eemail"),
						rs.getString("eaddress"));
				al.add(ee);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return al;
	}

	public int deleteRecord(String id) {
		int i = 0;
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);
			PreparedStatement ps = con.prepareStatement("delete from employee where eid=?");
			ps.setString(1, id);
			i = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public Employee getEmployeeRecord(String id) {
		Employee em = null;
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from employee where eid = ?");
			ps.setString(1, id);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				em = new Employee(rs.getString("ename"), rs.getString("eid"), rs.getString("edesignation"),
						rs.getDouble("esalary"), rs.getString("edoj"), rs.getString("eemail"),
						rs.getString("eaddress"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return em;
	}

	public int updateEmployee(Employee ee) {
		int i = 0;
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);
			PreparedStatement pp = con.prepareStatement(
					"create table if not exists employee (ename varchar(20), eid varchar(10), edesignation varchar(20), esalary float, edoj varchar(20), eemail varchar(30), eaddress varchar(30))");
			pp.executeUpdate();

			PreparedStatement ps = con.prepareStatement(
					"update employee set ename =?, edesignation=?, esalary=?, edoj=?, eemail=?, eaddress=? where eid =?");
			ps.setString(1, ee.getName());
			ps.setString(2, ee.getDesignation());
			ps.setDouble(3, ee.getSalary());
			ps.setString(4, ee.getDoj());
			ps.setString(5, ee.getEmail());
			ps.setString(6, ee.getAddress());
			ps.setString(7, ee.getId());
			i = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	

	public int Customer(Inquiry ee) {
		int i = 0;
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);
			PreparedStatement ps = con.prepareStatement("insert into inquiry values(?,?,?,?,?,?)");
			ps.setString(1, ee.getFname());
			ps.setString(2, ee.getLname());
			ps.setString(3, ee.getMob());
			ps.setString(4, ee.getMail());
			ps.setString(5, ee.getAddr());
			ps.setString(6, ee.getMsg());
			
			i = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
		
	}

	public ArrayList<Inquiry> details() {
		ArrayList<Inquiry> ar = new ArrayList<Inquiry>();
		try {
			Class.forName(DRIVER_NAME);
			Connection con = DriverManager.getConnection(URL + DB_NAME, USER_NAME, PASSWORD);
			PreparedStatement ps = con.prepareStatement("select * from inquiry");
			ResultSet rs = ps.executeQuery();
			while (rs.next())
			{
				Inquiry in = new Inquiry(rs.getString("Fname"),rs.getString("Lname"),rs.getString("Mob"),rs.getString("Mail"),rs.getString("Addr"),rs.getString("Msg"));
				ar.add(in);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ar;
	}

}
	

	

