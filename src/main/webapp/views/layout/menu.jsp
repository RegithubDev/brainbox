<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
<style>


div.main-menu-content {
  position: -webkit-sticky;
  position: sticky;
 
}
</style>
</head>
<body>
		<div class="navbar-container main-menu-content" data-menu="menu-container" id="menu">
          <ul class="nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation" >
             <li class="dropdown nav-item "  data-menu id="bbd"  url ="/bb-dashboard">
					    <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath() %>/bb-dashboard" data-bs-toggle=""
					    data-i18n="Analytics"> <i data-feather="home"></i>
					      <span data-i18n="Dashboards">Dasboard</span></a>
			</li>
          
            <li class="dropdown nav-item "  data-menu id="bb"  url ="/bb-is">
					    <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath() %>/bb-is" data-bs-toggle=""
					    data-i18n="Analytics"> <i class="fa-solid fa-lightbulb"></i>
					      <span data-i18n="Dashboards">Ideas</span></a>
			</li>
  
	
			 <li class="dropdown nav-item " data-menu id="bank" url="bb-bank">
			    <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath() %>/bb-bank" data-bs-toggle=""
			     data-i18n="Analytics"><i data-feather='layers'></i>
			      <span data-i18n="Analytics">Idea Bank</span></a>
			</li> 
			
			<li class="dropdown nav-item " data-menu id="help" url="help">
			    <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath() %>/help-center" data-bs-toggle=""
			     data-i18n="Analytics"><i data-feather='help-circle'></i>
			      <span data-i18n="Analytics">Help Center</span></a>
			</li>
			
		<c:if test="${sessionScope.R_DASHBOARD eq 'Yes' }">
            <li class="dropdown nav-item " data-menu="dropdown" id="masters"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="package"></i><span data-i18n="Masters">Masters</span></a>
              <ul class="dropdown-menu" data-bs-popper="none">
               <c:forEach var="obj" items="${menuList}" varStatus="index">
					<li class="" data-menu  id="mastersChild${index.count }" url = "${obj.module_url }" onClick="exFunction('mastersChild${index.count }')">
					    <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath() %>${obj.module_url }" data-bs-toggle=""
					     data-i18n="${obj.module_name }"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle"><circle cx="12" cy="12" r="10"></circle></svg>
					      <span data-i18n="${obj.module_name }">${obj.module_name }</span></a> 
					</li>
				</c:forEach>
            </ul>
           </li>
        </c:if>
	
				
          </ul>
        </div>
        <script>
        var option = window.localStorage.getItem("selectedOption");
        var child_option = window.localStorage.getItem("selectedOptionChild");
        $( document ).ready(function() {
        	
        	var url = $(location).attr('href');
        	//var url = 	$("#"+option).attr('url')
        		if(option != 'undefined' && option != null){
            		$('li.active').removeClass('active');
            		if(url.indexOf('/bb-bank') != -1 || url.indexOf('/get-bb-bank') != -1  || url.indexOf('/bb-sbu') != -1){
           			 $('#bank').addClass('active');
	           		}else if(url.indexOf('/bb-is') != -1 || url.indexOf('/update-bb-form') != -1){
	           			$('#bb').addClass('active');
	           		}else if(url.indexOf('/bb-dashboard') != -1){
	           			$('#bbd').addClass('active');
	           		}else if(url.indexOf('/dashboardbbnew') != -1){
	           			$('#bbd').addClass('active');
	           		}
	           		else if(url.indexOf('/home') != -1){
	           			$('#home').addClass('active');
	           		}else if(url.indexOf('/help') != -1){
	           			$('#help').addClass('active');
	           		}else if(option.indexOf('masters') != -1 ){
	           			$('#masters').addClass('active');
	           			$('#'+option+'li.active').removeClass('active');
	       	            $('#'+child_option).addClass('active');
	           		}else{
	           			$('#home').addClass('active');
	           		}
            	}else{
            		$('li.active').removeClass('active');
            		if(url.indexOf('/bb-bank') != -1 || url.indexOf('/get-bb-bank') != -1 || url.indexOf('/bb-sbu') != -1){
              			 $('#bank').addClass('active');
	           		}else if(url.indexOf('/bb-is') != -1 || url.indexOf('/update-bb-form') != -1){
	           			$('#bb').addClass('active');
	           		}else if(url.indexOf('/bb-dashboard') != -1){
	           			$('#bbd').addClass('active');
	           		}else if(url.indexOf('/home') != -1){
	           			$('#home').addClass('active');
	           		}else if(url.indexOf('/help') != -1){
	           			$('#help').addClass('active');
	           		}else if(option.indexOf('masters') != -1){
	           			$('#masters').addClass('active');
	           			$('#'+option+'li.active').removeClass('active');
	       	            $('#'+child_option).addClass('active');
	           		}else{
	           			$('#home').addClass('active');
	           		}
            	}
  	        <%--  window.location.href= "<%=request.getContextPath()%>"+"/"+url;  --%>
        	
        });
        $('#menu ul li ').on('click', function(){
            $('li.active').removeClass('active');
            $(this).addClass('active');
            
            window.localStorage.setItem("selectedOption", $(this).attr('id'));
        }); 
        function exFunction(id) {  window.localStorage.setItem("selectedOptionChild", id);  }
        </script>
</body>
</html>