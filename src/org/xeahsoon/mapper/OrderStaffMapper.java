package org.xeahsoon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.xeahsoon.pojo.OrderStaff;

public interface OrderStaffMapper {
	
	@Select("select * from order_staff where order_id = #{order_id}")
	@Results({
		@Result(column="id", property="id"),
		@Result(column="order_id", property="order_id"),
		@Result(column="staff_id", property="staff",
		one=@One(
				select="org.xeahsoon.mapper.StaffMapper.getStaffById"))
		})
	List<OrderStaff> listOrderStaffs(@Param("order_id")int order_id);
}