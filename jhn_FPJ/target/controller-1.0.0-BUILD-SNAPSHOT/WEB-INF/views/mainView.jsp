<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    String topsrc = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>YOLO</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<div id="body">
	<!------------------ Content ���� ------------------------->
	<div>
	    <label id="main_view1"><img
	        src="resources/images/main/main_view1.gif"></label>
	</div>
	
	<!-- ��õ�� �������� ����-->
	<div id="main_rec_notice">
	<!---------��õ����---------->
	    <div id="main_rec" style="display: inline-block;" align="center">
	        <ul style="display: inline-block; float: left;">
	            <li class="main_recommends">&nbsp;<�α� ����></li>
	            <li class="main_more"><a href="#">+������</a></li>
	            <li>
	                <ul>
	                   <li><a href="#"><img class="tour_slide_img" src="resources/images/main/tour_asia.jpg"></a></li>
	                    <li><a href="#"><img class="tour_slide_img" src="resources/images/main/tour_america.jpg"></a></li>
	                    <li><a href="#"><img class="tour_slide_img" src="resources/images/main/tour_eu.jpg"></a></li>
	                </ul>
	                <div id="slide_basic">
	                    <ul>
	                        <li class="slide_demo" onclick="slide_current(1)">�ƽþ�</li>
	                        <li class="slide_demo" onclick="slide_current(2)">�Ƹ޸�ī</li>
	                        <li class="slide_demo" onclick="slide_current(3)">����</li>
	                    </ul>
	                </div>
	            </li>
	        </ul>
	        <ul class="rec_foot">
	            <li class="main_recommends2"><��õ ���ڱ�></li>
	            <li class="main_more" style="padding-right: 10px;"><a href="#">+������</a></li>
	            <li>
	                <ul>
	                    <li><!-----------------------��õ ���ڱ�------------------->
	                        <div class="table-users">
	                            <div class="header">Users</div>
	                            <div class="foot_table">
	                                <table>
	                                    <tr>
	                                        <th>���� ����</th>
	                                        <th width="25%">�г���</th>
	                                        <th width="60%">���ڱ� ����</th>
	                                    </tr>
	
	                                    <tr>
	                                        <td><img src="resources/images/main/korea.png" alt=""
	                                            class="foot_rec_img" /></td>
	                                        <td>Jane Doe</td>
	                                        <td>Lorem ipsum dolor sit amet, consectetur adipisicing
	                                            elit.</td>
	                                    </tr>
	
	                                    <tr>
	                                        <td><img src="resources/images/main/canada.png" alt=""
	                                            class="foot_rec_img" /></td>
	                                        <td>John Doe</td>
	                                        <td>Blanditiis, aliquid numquam iure voluptatibus ut
	                                            maiores explicabo ducimus neque, nesciunt rerum perferendis,
	                                            inventore.</td>
	                                    </tr>
	
	                                    <tr>
	                                        <td><img src="resources/images/main/italy.png" alt=""
	                                            class="foot_rec_img" /></td>
	                                        <td>Jane Smith</td>
	                                        <td>Culpa praesentium unde pariatur fugit eos recusandae
	                                            voluptas.</td>
	                                    </tr>
	
	                                    <tr>
	                                        <td><img src="resources/images/main/germany.png" alt=""
	                                            class="foot_rec_img" /></td>
	                                        <td>John Smith</td>
	                                        <td>Aut voluptatum accusantium, eveniet, sapiente
	                                            quaerat adipisci consequatur maxime temporibus quas, dolorem
	                                            impedit.</td>
	                                    </tr>
	                                    <tr>
	                                        <td><img src="resources/images/main/uk.png" alt=""
	                                            class="foot_rec_img" /></td>
	                                        <td>John Smith</td>
	                                        <td>Aut voluptatum accusantium, eveniet, sapiente
	                                            quaerat adipisci consequatur maxime temporibus quas, dolorem
	                                            impedit.</td>
	                                    </tr>
	                                </table>
	                            </div>
	                        </div>
	                    </li>
	                </ul>
	             </li>
	        </ul>
	    </div>
	    
	   <!-------��������-------->
	    <div class="main_notice"><��������></div>
	    <br/>
	    <br/>
	    <div align="center">
	        <table class="notice_tb">
		        <tr>
		            <th>����</th>
		            <th class="notice_td">�����</th>
		        </tr>
		        <tr>
		            <td>�������� �����Դϴ�.1</td>
		            <td class="notice_td">2017-11-25</td>
		        </tr>
		        <tr>
		            <td>�������� �����Դϴ�.2</td>
		            <td class="notice_td">2017-11-26</td>
		        </tr>
		        <tr>
		            <td>�������� �����Դϴ�.3</td>
		            <td class="notice_td">2017-11-27</td>
		        </tr>
		        <tr>
		            <td>�������� �����Դϴ�.4</td>
		            <td class="notice_td">2017-11-28</td>
		        </tr>
		        <tr>
		            <td>�������� �����Դϴ�.5</td>
		            <td class="notice_td">2017-11-29</td>
		        </tr>
	        </table>
		</div>
	</div>
<!------------------------ Content �� ---------------------------->
</div><!-- id="body" �� div �� -->
<!-- main �α����� �����̵� �ڹٽ�ũ��Ʈ -->
<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("tour_slide_img");
        var xs = document.getElementsByClassName("slide_demo");

        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }

        for (i = 0; i < xs.length; i++) {
            xs[i].className = "slide_demo";
        }
        myIndex++;

        if (myIndex > x.length) {
            myIndex = 1
        }
        x[myIndex - 1].style.display = "block";
        xs[myIndex - 1].className += " slide_on";

        setTimeout(carousel, 3000); // Change image every 2 seconds
    }

    function slide_current(n) {

        showDivs(myIndex = n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("tour_slide_img");
        var dots = document.getElementsByClassName("slide_demo");

        if (n > x.length) {
            myIndex = 1
        }
        if (n < 1) {
            myIndex = x.length
        }
        ;

        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" slide_on", "");
        }

        x[myIndex - 1].style.display = "block";
        dots[myIndex - 1].className += " slide_on";

    }
</script>
</body>
</html>
</html>