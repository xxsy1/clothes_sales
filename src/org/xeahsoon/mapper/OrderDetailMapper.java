package org.xeahsoon.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.xeahsoon.pojo.OrderDetail;

import com.alibaba.fastjson.JSONObject;

/**
 * @author user
 *
 */
public interface OrderDetailMapper {
	
	/*private int id;			//明细编号
	private int order_id;			//销售单编号
	private int storage_id;			//商品编号
	//private int good_id;
	private Good good;
	private String color;
	private String size;
	private double discount;		//折扣
	private double price;			//单价
	private double dis_price;
	
	  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(8) unsigned zerofill NOT NULL COMMENT '订单号',
  `storage_id` int(11) unsigned zerofill NOT NULL COMMENT '条形码',
  `good_id` int(8) unsigned zerofill NOT NULL COMMENT '款号',
  `color` varchar(8) NOT NULL COMMENT '颜色',
  `size` varchar(4) NOT NULL COMMENT '大小',
  `price` double(6,2) NOT NULL COMMENT '单价',
  `discount` double(4,2) NOT NULL DEFAULT '1.00' COMMENT '折扣',
  `dis_price` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '折后价',
	*/
	// 为何一定要用 '${size}' ？？
	@Insert("insert into order_detail(order_id, storage_id, good_id, color, size, price, discount, dis_price) "
			+ "values(#{order_id}, #{storage_id}, #{good_id}, #{color}, '${size}', #{price}, #{discount}, #{dis_price})")
	int insertDetail(
			@Param("order_id")int order_id,
			@Param("storage_id")int storage_id,
			@Param("good_id")int good_id,
			@Param("color")String color,
			@Param("size")String size,
			@Param("price")double price,
			@Param("discount")double discount,
			@Param("dis_price")double dis_price);
	
	/**
	 * @param order_id 订单编号
	 * @return 指定订单ID的详细条目数
	 */
	@Select("select * from order_detail where order_id = #{order_id}")
	@Results({
		@Result(id=true, column="id", property="id"),
		@Result(column="order_id", property="order_id"),
		@Result(column="storage_id", property="storage_id"),
		@Result(column="good_id", property="good",
		one=@One(
				select = "org.xeahsoon.mapper.GoodMapper.findGoodInfoWithID")),
		@Result(column="color", property="color"),
		@Result(column="size", property="size"),
		@Result(column="discount", property="discount"),
		@Result(column="price", property="price"),
		@Result(column="dis_price", property="dis_price"),
		@Result(column="return_flag", property="return_flag")
	})
	List<OrderDetail> listAllDetailsByID(@Param("order_id")int order_id);
	
	/**
	 * @param order_id 订单号
	 * @param storage_id 商品号
	 * @return 更新return_flag，标记为已退货
	 */
	@Update("update `order_detail` set return_flag = '1' where order_id = #{order_id} and storage_id = #{storage_id}")
	int updateDetailFlag(@Param("order_id")int order_id, @Param("storage_id")int storage_id);
	
	/**
	 * @return 款号销售数据
	 */
	@Select("select good_id as field, count(*) as num, sum(dis_price) as price "
			+ "from order_detail "
			+ "group by field")
	List<JSONObject> getGoodStatics();
	
	/**
	 * @return 类型销售数据
	 */
	@Select("select (select type from good where id=good_id) as field, count(*) as num, sum(dis_price) as price "
			+ "from order_detail "
			+ "group by field")
	List<JSONObject> getTypeStatics();
	
	/**
	 * @return 店长销售数据
	 */
	@Select("select (select name from `user` where id = (select user_id from `order` where id = order_id)) as field, "
			+ "count(*) as num, sum(dis_price) as price "
			+ "from `order_detail` "
			+ "group by field;")
	List<JSONObject> getUserStatics();
	
	/**
	 * @return 支付方式统计数据
	 */
	@Select("select (select pay_mode from `order` where id = order_id) as field, "
			+ "count(*) as num, sum(dis_price) as price "
			+ "from `order_detail` "
			+ "group by field;")
	List<JSONObject> getPayModeStatics();
}
