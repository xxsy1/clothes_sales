package org.xeahsoon.pojo;

import java.io.Serializable;

/**
 * @author Administrator
CREATE TABLE `staff` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(10) NOT NULL COMMENT '员工姓名',
  `phone` varchar(12) DEFAULT NULL COMMENT '手机号码',
  `idcard` varchar(18) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '审核状态（0/待审核 1/已审核）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
 */
public class Staff implements Serializable{
	
	private static final long serialVersionUID = -6628512740216492855L;
	
	private int id;			//导购员编号
	private String name;			//导购员姓名
	private String phone;			//联系方式
	private String idcard;
	private String address;
	private int status;			//状态（审核、待审核）
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Staff [id=" + id + ", name=" + name + ", phone=" + phone + ", idcard=" + idcard + ", address=" + address
				+ ", status=" + status + "]";
	}
}
