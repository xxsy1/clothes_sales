<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>导购员业绩</title>
    <script>
    	$(document).ready(function() {
    		var data = '${requestScope.sales_list }';
    		document.getElementById("test_td").innerHTML = JSON.stringify(data);
    	});
    </script>
</head>
<body>
<div class="container col-md-12">
    <div class="row">
        <h2 class="page-header">导购员业绩统计</h2>
    </div>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>姓名</th>
                <th>件数</th>
                <th>票数</th>
                <th>单效</th>
                <th>附加</th>
                <th>业绩<span class="caret"></span></th>
                <th>月总</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1001</td>
                <td>松子</td>
                <td>10</td>
                <td>4</td>
                <td>160</td>
                <td>2.5</td>
                <td>640.00</td>
                <td>1000.00</td>
            </tr>
            <c:forEach items="${requestScope.sales_list }" var="sale">
            	<tr>
            	</tr>
            </c:forEach>
            <tr>
            	<td id="test_td" colspan="8"></td>
            </tr>
            <tr style="border-bottom: 2px solid #ddd">
                <td>合计</td>
                <td>7位</td>
                <td>70</td>
                <td>28</td>
                <td>160</td>
                <td>2.5</td>
                <td>4480.00</td>
                <td>7000.00</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>