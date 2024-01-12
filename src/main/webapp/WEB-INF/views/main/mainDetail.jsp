<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div>


	메인페이지입니다.
	  <c:if test = "${userId != null}">
         <p><c:out value = "${userId}"/><p>
          
      </c:if>
      </br>
    <c:out value = "${res.msg}"/>
    
      
      	</br>
	<a href="/logout">로그아웃</a> 
	





</div>