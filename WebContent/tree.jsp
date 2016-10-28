<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=" utf-8" />
<link rel="stylesheet" href="css/tree.css" />
<title>Insert title here</title>
</head>
<body>

<div class="tree">
	<ul>
		<li>
			<a>Parent <br> <img src="images/pp.jpg" height="120px" width="190px" alt="" /> &nbsp <img src="images/ff.jpg" height="120px" width="190px" alt="" /></a>
			
			<ul>
				 <li>
					<a href="#">Child <br> <img src="images/jj.jpg"  height="120px" width="190px" alt="" /> </a>
					
					<!-- <ul>
						<li>
							<a href="#">Grand Child <br> <img src="images/oo.jpg"  height="120px" width="190px" alt="" /> </a>
						</li>
					</ul> -->
				</li> 
				<li>
					<a href="#">Child <br> <img src="images/ff.jpg"  height="120px" width="190px" alt="" /> &nbsp <img src="images/oo.jpg" height="120px" width="190px" alt="" /></a>
					<ul>
						<li><a href="#">Grand Child <br> <img src="images/ee.jpg"  height="120px" width="190px" alt="" /></a></li>
						<li>
							<a href="#">Grand Child <br> <img src="images/dd.jpg"  height="120px" width="190px" alt="" /></a>
							<!-- <ul>
								<li>
									<a href="#">Great Grand Child</a>
								</li>
								<li>
									<a href="#">Great Grand Child</a>
								</li>
								<li>
									<a href="#">Great Grand Child</a>
								</li>
							</ul> -->
						</li>
						<li><a href="#">Grand Child <br> <img src="images/aa.jpg"  height="120px" width="190px" alt="" /></a></li>
					</ul>
				</li>
				<!-- <li>
					<a href="#">Child <br> <img src="images/ll.jpg" height="130px" width="230px" alt="" /> </a>
					
				</li> -->
			</ul>
		</li>
	</ul>
</div>

</body>
</html>