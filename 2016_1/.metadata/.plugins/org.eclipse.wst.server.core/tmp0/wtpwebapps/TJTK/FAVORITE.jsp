<%@page import="util.dbhelper.DBconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0, webkit">
<title>Untitled Document</title>
<link rel="stylesheet" href="css/bootstrap.css">
    <style type="text/css">
      
		#STATICMENU { margin: 2.5pt; padding: 0pt;  position:absolute; right: 8%; top: 85%; height:30pt; width:23px;'}
    </style>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body style="background-color:#FAF8EE">
<nav class="navbar navbar-inverse" style="border-color:#FAF8EE; background-color:#FAF8EE">
  <div class="container-fluid" style="background-color:#FAF8EE">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" style="background-color: #69bd8d; border-color: #69bd8d;" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#inverseNavbar1" style="border-color:#fff; background-color:#69bd8d; column-rule-color:#69bd8d;"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
       <a class="navbar-brand" href="#" style="color:#fff; font-size:24px; text-align:center; margin-left:20px; margin-top:-3px" onClick="location='ORDER.html'"><span class="glyphicon glyphicon-credit-card" aria-hidden="true" style="margin-right:-10px">&nbsp;</span>주문으로...</a></div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="inverseNavbar1" align="center" style="background-color: #69BD8D; border-color: #FAF8EE; margin-top: -6px;">
      <ul class="nav navbar-nav navbar-right" style="border-color: #FAF8EE; color: #69bd8d; margin-bottom: 12px;">
      <div class="btn-group" role="group">
      <button type="button" class="alert-info" style="margin-right:5px">속도UP</button>
      <button type="button" class="alert-warning" style="margin-left:5px" onClick="location='SETTING.html'">설정하기</button>
      <button type="button" class="alert-success" style="margin-left:5px; background-color:#e9e4f0; border-color:#b9b5bf; color:#7129d3" onClick="location='ORDERED.html'">배송보기</button>
       </div>
      </ul>
</div>
<br>


    <div align="center">
    <div align="center">
    <input type="search"/>
    <button class="btn" style="color:#ffffff; background-color:#A88449; border-bottom-color:rgba(230,155,156,1.00)">검색하기</button><br>
    </div>
    <hr>
    <div align="center" style="width:90%; height:80%; background-color:#FAF8EE">
    
    <span style="width:80%; height:70%; margin-left:10px; margin-right:10px">
    
    삭제해도 되는 코드 시작
    <div class="btn-toolbar" role="toolbar">
      <div class="btn-group" role="group" align="center">
        <button type="button" class="btn btn-default">B1</button>
        <button type="button" class="btn btn-default">B2</button>
      </div>
      <div class="btn-group" role="group" align="center" style="width:100%">
        <button type="button" class="btn btn-primary" style="width:20%">primary</button>
        <button type="button" class="btn btn-info" style="width:20%">info</button>
        <button type="button" class="btn btn-success" style="width:20%">success</button>
        <button type="button" class="btn btn-warning" style="width:20%">warning</button>
        <button type="button" class="btn btn-danger" style="width:20%">danger</button>
      </div>
    </div>
    삭제해도 되는 코드 끝
    </span>
    </div>
  <br>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container-fluid -->
 
  </div>
 
<form id="STATICMENU" style="background:#none; z-index:2">
<img src="icon/console.png" width="35" height="55" onclick="click_test()" alt=""/>
</form>

    <script type="text/javascript">
 var stmnLEFT = 10; // 오른쪽 여백 
 var stmnGAP1 = 0; // 위쪽 여백 
 var stmnGAP2 = 150; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 150; // 스크롤 시작위치 
 var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
 var stmnTimer; 
 var flag = 0;
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
  if (stmnStartPoint != stmnEndPoint) { 
   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
   stmnRefreshTimer = stmnScrollSpeed; 
   }
  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
  } 
 function InitializeStaticMenu() {
 // document.getElementById('STATICMENU').style.backgroundColor="#dde8f0"; //크기 보고 싶어서 색 바꿔 놓음 #dde8f0
  
  document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
  document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
  //document.getElementById('STATICMENU').style.backgroundImage = url(icon/test.png);
  RefreshStaticMenu();
  }
 
 function click_test(){
	var obj = document.getElementById('STATICMENU');
	 
	if(flag == 0)
	{
		
		var btnupdate = document.createElement('img');
	    btnupdate.setAttribute('id', 'b1');
	    //btnupdate.setAttribute('type', 'button');
	    btnupdate.setAttribute('src', 'icon/lace.png');
	    btnupdate.setAttribute('style','position :relative; right : 0px; bottom :90px ; height:25pt; width:25px; solid : #0000');
	    btnupdate.onclick = function() {  alert('test1');  };
	    obj.appendChild(btnupdate);
	    
	    var btnupdate = document.createElement('img');
	    btnupdate.setAttribute('id', 'b2');
	    //btnupdate.setAttribute('type', 'button');
	    btnupdate.setAttribute('src', 'icon/credit-card.png');
	    btnupdate.setAttribute('style','position :relative; right : 33px; bottom :99px ; height:23pt; width:30px; solid : #0000')
	    btnupdate.onclick = function() {  alert('test');  };
	    obj.appendChild(btnupdate);
		
		 var btnupdate = document.createElement('img');
	    btnupdate.setAttribute('id', 'b3');
	    //btnupdate.setAttribute('type', 'button');
	    btnupdate.setAttribute('src', 'icon/delivery-truck.png');
	    btnupdate.setAttribute('style','position :relative; right :35px; bottom:95px ; height:25pt; width:30px; solid : #0000')
	    btnupdate.onclick = function() {  alert('test');  };
	    obj.appendChild(btnupdate); 
	    
	    var btnupdate = document.createElement('img');
	    btnupdate.setAttribute('id', 'b4');
	    //btnupdate.setAttribute('type', 'button');
	    btnupdate.setAttribute('src', 'icon/fix.png');
	    btnupdate.setAttribute('style','position :relative; right :15px; bottom : 96px ; height:25pt; width:25px; solid : #0000')
	    btnupdate.onclick = function() {  alert('test');  };
	    obj.appendChild(btnupdate);
	    
	    flag = 1;
	}
	
	else if(flag == 1)
	{
	
		var btn = document.getElementById("b1");
		obj.removeChild(btn);
		
		var btn = document.getElementById("b2");
		obj.removeChild(btn);
		
		var btn = document.getElementById("b3");
		obj.removeChild(btn);
		
		var btn = document.getElementById("b4");
		obj.removeChild(btn);
		
		flag = 0;
	}
	
	
 }
</script>
</nav>
<footer class="footer" id="footer" align="right" style="color:#8ba0e8; margin-right:10px"><br>Three J Two K company</footer>
<script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>

<%
	int count = 0;
	int Total_size = 0;
	int Array_count[];
	int Array_id[];
	String Array_name[];
	int i = 0;

	String code = request.getParameter("code");
	Connection conn = DBconn.getConnection();

	Statement st = conn.createStatement();
	String sql = "Select count(*) as count from bookmark";
	ResultSet rs = st.executeQuery(sql);
	if (rs.next()) { //검색된 결과가 존재하면 true
		count = rs.getInt("count");

	} else {
		out.println("입력하신 " + code + "는 존재하지 않습니다.");
	}
	rs.close();
	st.close();
	st = conn.createStatement();
	sql = "Select bookmark_id,weight,bookmark_name from bookmark order by weight DESC";
	rs = st.executeQuery(sql);
	Array_count = new int[count];
	Array_name = new String[count];
	Array_id = new int[count];
	while (rs.next()) {
		
		int Bookmark_id = rs.getInt("bookmark_id");
		int Bookmark_count = rs.getInt("weight");
		String Bookmark_name = rs.getString("bookmark_name");
		Array_id[i] = Bookmark_id;
		Array_name[i] = Bookmark_name;
		Array_count[i] = Bookmark_count;
		Total_size += Bookmark_count;
		i++;
	}

	rs.close();
	st.close();
	DBconn.close();
%>
<script type="text/javascript">
		var result = '';
		var count = "<%=count%>";
		var ary_count = new Array();
		var Total_size = "<%=Total_size%>";
		var ary_name = new Array();
		var ary_id = new Array();
		
		<%for (int k = 0; k < count; k++) {%>
			
			ary_count[<%=k%>] = '<%=Array_count[k]%>';
			ary_name[<%=k%>] = '<%=Array_name[k]%>';
			ary_id[<%=k%>] = '<%=Array_id[k]%>';
<%}%>
	elm = document.getElementById("block_button");
	var form = document.createElement('form');
	form.setAttribute("method", "POST");
	form.setAttribute("action", "print_Items.jsp");
	elm.appendChild(form);
	for (var n = 0; n < count; n++) {
		var size = ary_count[n];

		var input_element = document.createElement('input');
		
		switch (n%3) {
		case 0:
			input_element.setAttribute("class", "btn btn-info");
			// this background color is not working....
			input_element.setAttribute("style","background-color:rgb(255,0,255,1.00); border-radius:13px");
			break;
		case 1:
			input_element.setAttribute("class", "btn btn-success");
			input_element.setAttribute("style","background-color:rgb(0,255,255,1.00); border-radius:13px");
			break;
		case 2:
			input_element.setAttribute("class", "btn btn-warning");
			input_element.setAttribute("style","background-color:rgb(255,255,0,1.00); border-radius:13px");
			break;
		default:
			break;
		}
		
		input_element.setAttribute("type", "submit");
		input_element.setAttribute("name", "submit");
		input_element.setAttribute("value", ary_id[n]);
		
		
		input_element.style.margin = 2.5 + 'px';
		
		if (size * 4 < 80)
			input_element.style.width = 80 + 'px';
		else
			input_element.style.width = size * 4 + 'px';
		input_element.style.height = 100 + 'px';
		
		form.appendChild(input_element);
	}
</script>


