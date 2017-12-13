<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/icon_blue.png">

    <title>迈克服装收银系统-首页</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap-multiselect.css">
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap-datetimepicker.min.css">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">
    <link rel="stylesheet" href="css/base.css">
    <script type="text/javascript" src="js/showRight.js"></script>

  </head>
  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <img src="images/icon.png" class="pull-left" style="height: 36px; margin: 7px;" alt="icon">
          <a class="navbar-brand" href="">MyClothes</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
            <li><a href="#">${sessionScope.user.name }</a></li>
          </ul>
          <!--<form action="searchOrder" class="navbar-form navbar-right">
            <input type="text" name="search" class="form-control" placeholder="请输入销售单号...">
          </form>-->
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <div class="menu">
            <a data-toggle="collapse" data-parent="#accordion" href="#list1">销售管理</a>
          </div>
          <div id="list1" class="collapse in">
            <ul class="nav nav-sidebar">
              <li><a href="#" onclick="showAtRight('makeOrder')">销售打单</a></li>
              <li><a href="#" onclick="showAtRight('orderDetail')">销售单查询</a></li>
              <li><a href="#" onclick="showAtRight('returnGood')">销售退换货</a></li>
            </ul>
          </div>

          <div class="menu">
            <a data-toggle="collapse" data-parent="#accordion" href="#list2">报表统计</a>
          </div>
          <div id="list2" class="collapse">
            <ul class="nav nav-sidebar">
              <li><a href="#" onclick="showAtRight('staffsales')">导购员业绩统计</a></li>
              <li><a href="#" onclick="showAtRight('statics')">销售统计</a></li>
            </ul>
          </div>

          <div class="menu">
            <a data-toggle="collapse" data-parent="#accordion" href="#list3">库存管理</a>
          </div>
          <div id="list3" class="collapse">
            <ul class="nav nav-sidebar">
              <li><a href="#" onclick="showAtRight('searchGood')">商品资料查询</a></li>
              <li><a href="#">库存进货</a></li>
              <li><a href="#">库存出货</a></li>
              <li><a href="#">库存盘点</a></li>
            </ul>
          </div>

          <div class="menu">
            <a data-toggle="collapse" data-parent="#accordion" href="#list4">系统管理</a>
          </div>
          <div id="list4" class="collapse">
            <ul class="nav nav-sidebar">
              <li><a href="#" onclick="showAtRight('member')">会员管理</a></li>
              <li><a href="#" onclick="showAtRight('staff')">导购员管理</a></li>
              <li><a href="#" onclick="showAtRight('test')">test</a></li>
            </ul>
          </div>
        </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <div id="content">
            <h1 class="page-header">昨日销售</h1>

            <div class="row placeholders">
              <div class="col-xs-6 col-sm-3 placeholder">
                <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail">
                <p class="text-muted" style="margin-top:10px">商品金额比例图</p>
              </div>
              <div class="col-xs-6 col-sm-3 placeholder">
                <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail">
                <p class="text-muted" style="margin-top:10px">商品数量比例图</p>
              </div>
              <div class="col-xs-6 col-sm-3 placeholder">
                <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail">
                <p class="text-muted" style="margin-top:10px">导购员业绩比例图</p>
              </div>
              <div class="col-xs-6 col-sm-3 placeholder">
                <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="150" height="150" class="img-responsive" alt="Generic placeholder thumbnail">
                <p class="text-muted" style="margin-top:10px">剩余库存比例图</p>
              </div>
            </div>

            <h2 class="sub-header">清单</h2>
            <div class="table-responsive">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>单号</th>
                    <th>金额</th>
                    <th>收银员</th>
                    <th>导购员</th>
                    <th>会员卡号</th>
                    <th>支付方式</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.order_list }" var="order">
					<tr>
						<td><fmt:formatDate value="${order.create_date }" type="both"/></td>
						<td><a href="#" onclick="showAtRight('orderDetail/${order.id}')" title="查看详细"><fmt:formatNumber value="${order.id }" pattern="00000000"/></a></td>
						<td>${order.sum_money }</td>
						<td>${order.user.name }</td>
						<td>
							<c:forEach items="${order.staffs }" var="staff">
							${staff.staff.name }
							</c:forEach>
						</td>
						<td>${order.member.phone }</td>
						<c:if test="${order.pay_mode == 1 }"><td>银行卡</td></c:if>
						<c:if test="${order.pay_mode == 2 }"><td>支付宝</td></c:if>
						<c:if test="${order.pay_mode == 3 }"><td>微信</td></c:if>
						<c:if test="${order.pay_mode == 4 }">现金</c:if>
						<td><a href="#"><span class="glyphicon glyphicon-edit" title="备注" data-toggle="modal" data-target="#remark"></span></a></td>
					</tr>
				</c:forEach>
              </tbody>
              </table>
              <!-- add remark modal -->
              <div class="modal fade" id="remark" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            	<div class="modal-dialog">
                	<div class="modal-content">
                		<div class="modal-header">
	                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                        <h4 class="modal-title" id="myModalLabel">添加备注</h4>
                    	</div>
                    	<div class="modal-body">
                    		<p><span>备注信息：</span><span class="pull-right">单号：123134123</span></p>
                    		<textarea class="form-control" autofocus="autofocus"></textarea>
                    	</div>
                    	<div class="modal-footer">
                    		<input type="button" class="btn btn-default" data-dismiss="modal" value="关闭">
                        	<input  type="button" class="btn btn-primary" value="保存">
                    	</div>
                	</div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="css/bootstrap/js/jquery.min.js"></script>
    <script src="css/bootstrap/js/bootstrap.min.js"></script>
    <script src="css/bootstrap/js/bootstrap-multiselect.js"></script>
    <script src="css/bootstrap/js/bootstrap-datetimepicker.js"></script>
    <script src="css/bootstrap/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="js/echarts.js"></script>
    
    <!--解决 jqprint所需jquery 和bootstrap版本不一致问题-->
    <script src="http://www.jq22.com/jquery/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/jquery.jqprint-0.3.js"></script>
    
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <!--<script src="css/bootstrap/js/holder.min.js"></script>-->
  </body>
</html>
