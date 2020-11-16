<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8">
	<title>预约表单</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/layui/css/layui.css" media="all" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/public.css" media="all" />
	<style>
		
	</style>
</head>
<body class="childrenBody">
<form class="layui-form" action="">
<input type="hidden" id="aid" value="${requestScope.appointMent.aid}">
<input type="hidden" id="did" value="${requestScope.appointMent.doctor.did}">
<input type="hidden" id="pid" value="${requestScope.appointMent.patient.pid}">
   <div class="layui-form-item">
    <label class="layui-form-label">患者姓名</label>
    <div class="layui-input-block">
    <c:if test="${sessionScope.patient == null }">
      <input type="text" id="pname" name="pname" value="${requestScope.appointMent.patient.name }" required  lay-verify="required" placeholder="请输入患者姓名" autocomplete="off" class="layui-input" style="width: 500px;">
    </c:if>
    <c:if test="${sessionScope.patient != null }">
      <input type="text" id="pname" name="pname" value="${sessionScope.patient.name }" required  lay-verify="required" placeholder="请输入患者姓名" autocomplete="off" class="layui-input" style="width: 500px;">
    </c:if>
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">情况简述</label>
    <div class="layui-input-block">
      <textarea name="desc" id="description" placeholder="请输入情况简述" class="layui-textarea">${requestScope.appointMent.description }</textarea>
    </div>
  </div>
  <div class="layui-form-item" style="width: 500px;">
    <label class="layui-form-label">预约时间（年月日）</label>
    <div class="layui-input-block">
      <input type="text" id="effectdate" name="effectdate" value="${requestScope.appointMent.effectDate }" required  lay-verify="required" placeholder="请输入预约时间" autocomplete="off" class="layui-input" style="width: 500px;">
    </div>
  </div>
  
  <div class="layui-form-item" style="width: 500px;">
    <label class="layui-form-label">科室名称</label>
    <div class="layui-input-block">
      <select id="subject" name="subject" lay-verify="required" lay-filter="subject">
        <option value=""></option>
        <option value="内科">内科</option>
        <option value="牙科">牙科</option>
        <option value="外科">外科</option>
      </select>
    </div>
  </div>
  
   <div class="layui-form-item" style="width: 500px;">
    <label class="layui-form-label">医生名称</label>
    <div class="layui-input-block">
      <select id="dname" name="dname" lay-verify="required">
      </select>
    </div>
  </div>

  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="addDoctor">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/one-js/orderList.js"></script>
	<script>
	layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#test1' //指定元素
	  });
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#test2' //指定元素
	  });
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#test3' //指定元素
	  });
	});
	</script>
</body>
</html>