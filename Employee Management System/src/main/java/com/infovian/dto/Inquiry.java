package com.infovian.dto;

public class Inquiry {
		private String fname;
		private String lname;
		private String mob;
		private String mail;
		private String addr;
		private String msg;
		

		public Inquiry() {

		}
		

		public Inquiry(String fname, String lname, String mob, String mail, String addr, String msg) {
			super();
			this.fname = fname;
			this.lname = lname;
			this.mob = mob;
			this.mail = mail;
			this.addr = addr;
			this.msg = msg;
		}


		public String getFname() {
			return fname;
		}


		public void setFname(String fname) {
			this.fname = fname;
		}


		public String getLname() {
			return lname;
		}


		public void setLname(String lname) {
			this.lname = lname;
		}


		public String getMob() {
			return mob;
		}


		public void setMob(String mob) {
			this.mob = mob;
		}


		public String getMail() {
			return mail;
		}


		public void setMail(String mail) {
			this.mail = mail;
		}


		public String getAddr() {
			return addr;
		}


		public void setAddr(String addr) {
			this.addr = addr;
		}


		public String getMsg() {
			return msg;
		}


		public void setMsg(String msg) {
			this.msg = msg;
		}



}

		