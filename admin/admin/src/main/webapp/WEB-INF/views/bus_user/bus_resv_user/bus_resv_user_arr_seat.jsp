<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="team.Dproject.main.model.*"%>
<style type="text/css">
  div#left{
   width:15%;
   height:35px;
   float:left
   }
   
   div#right{ 
   width:15%;
   height:35px; 
   float:right
   }
   
   div.red{
      border:1px solid red;
   }
   div.blue{
      border:1px solid blue;
   }
</style>
 <%@ include file="../../Basic/top_Bus.jsp" %>
 <%@ include file="../bus_main/top.jsp" %>

<%
	
   if(session.getAttribute("dep_seat_dto")!=null){   
   Bus_BusRoadDTO bdto=(Bus_BusRoadDTO)session.getAttribute("arr_seat_dto");
   String seats=(String)session.getAttribute("resv");
   String resvlist[] =seats.split("/");
%>
	
   <form action="bus_resv_user_total_pay.do">
   <div align="center">
      <div style="border:1px solid gray; width:90%;">
         <h3 style="width:80%;">${arr_seat_dto.arrival} ▶ ${arr_seat_dto.departure}  (${one_date}출발일)</h3>
         <input type="hidden" name="one_date" value="${one_date}">
         <input type="hidden" name="road_no" value="${arr_seat_dto.road_no}">
         <input type="hidden" name="arrival" value="${arr_seat_dto.arrival}">
         <input type="hidden" name="departure" value="${arr_seat_dto.departure}">
         <input type="hidden" name="seat_no" value="${seat_no}">
         
         <%
         String str="";
         String str2="disabled";
         %>
         <br>
      
      </div><!-- 출발지 도착지 -->
      <div style="border:1px solid gray; width:70%; height:590px">
      
         
         <div style="border:1px solid blue; width:20%; float:right;">
          		  문
         </div>
         <div style="border:1px solid blue; width:20%; float:left;">
      		      운전기사
         </div>
         <br><br>
         <div>
         <%
         for(int i=1;i<=bdto.getSeat();i++){
            boolean bool=true;
            for(int l=0;l<resvlist.length;l++){
              if(resvlist[0]!=""){ 
               if(Integer.parseInt(resvlist[l])==i){
                  bool=false;
               }
               }
            }
            if(bool){
               str="blue";
               str2="";
            }else{
               str="red";
               str2="disabled";
            }
            if(i%4==1||i%4==2){%>
               <div id="left" class="<%=str%>">
                  <p><%=i %><input type="checkbox" name="seat" value="<%=i%>" <%=str2 %>></p>
               </div>
            <%}if(i%4==2){ %>
            <div></div>
            <%}
            if(i%4==3||i%4==0){%>
            <div id="right" class="<%=str%>">
               <p><%=i %><input type="checkbox" name="seat" value="<%=i%>" <%=str2 %>></p>
            </div>
            <%}if(i%4==0){ %>
            <br><br>
            <%}
            
         }%>
      
          <br><br><br><br><br><br>
         <div style="float:right"><input type="submit" value="예매" style="width:200px;"></div>
      </div>
      </div>
   </div>
   </form>
<%} %>

<%
	
   if(session.getAttribute("dep_seat_dto")==null){   
   Bus_BusRoadDTO bdto=(Bus_BusRoadDTO)session.getAttribute("arr_seat_dto");
   String seats=(String)session.getAttribute("resv");
   String resvlist[] =seats.split("/");
%>
	
   <form action="bus_resv_user_dispatch.do">
   <div align="center">
      <div style="border:1px solid gray; width:90%;">
         <h3 style="width:80%;">${arr_seat_dto.arrival} ▶ ${arr_seat_dto.departure}  (${one_date}출발일)</h3>
         <input type="hidden" name ="one_date" value="${one_date}">
         <input type="hidden" name="two_date" value="${two_date}">
         <input type="hidden" name="road_no" value="${arr_seat_dto.road_no}">
         <input type="hidden" name="seat_no" value="${seat_no}">
         <input type="hidden" name="mode" value="twoway">
         <input type="hidden" name="arrival" value="${arrival}"> 
         <input type="hidden" name="departure" value="${departure}">
         <input type="hidden" name="grade" value="${grade}">
         <%
         String str="";
         String str2="disabled";
         %>
         <br>
      
      </div><!-- 출발지 도착지 -->
      <div style="border:1px solid gray; width:70%; height:590px">
      
         
         <div style="border:1px solid blue; width:20%; float:right;">
          		  문
         </div>
         <div style="border:1px solid blue; width:20%; float:left;">
      		      운전기사
         </div>
         <br><br>
         <div>
         <%
         for(int i=1;i<=bdto.getSeat();i++){
            boolean bool=true;
            for(int l=0;l<resvlist.length;l++){
              if(resvlist[0]!=""){ 
               if(Integer.parseInt(resvlist[l])==i){
                  bool=false;
               }
               }
            }
            if(bool){
               str="blue";
               str2="";
            }else{
               str="red";
               str2="disabled";
            }
            if(i%4==1||i%4==2){%>
               <div id="left" class="<%=str%>">
                  <p><%=i %><input type="checkbox" name="seat" value="<%=i%>" <%=str2 %>></p>
               </div>
            <%}if(i%4==2){ %>
            <div></div>
            <%}
            if(i%4==3||i%4==0){%>
            <div id="right" class="<%=str%>">
               <p><%=i %><input type="checkbox" name="seat" value="<%=i%>" <%=str2 %>></p>
            </div>
            <%}if(i%4==0){ %>
            <br><br>
            <%}
            
         }%>
      
         <br><br>
         <div style="float:right"><input type="submit" value="예매" style="width:200px;"></div>
      </div>
      </div>
   </div>
   </form>
<%} %>


<%@ include file="../../Basic/bottom_nav.jsp" %>