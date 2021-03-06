<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<%@ page import="codeu.model.store.basic.UserStore" %>
<%@ page import="codeu.model.data.User" %>
<!DOCTYPE html>
<html>
<head>
  <title>CodeU Chat App</title>
  <link rel="stylesheet" href="/css/main.css">
</head>

<body>
  <nav>
    <style type="text/css">
      a {transition-duration: 0.5s; text-decoration: none;}
      a:hover {opacity: 0.5;}
    </style>
    <a id="navTitle" href="/">
      <span id = "C_E">C</span><span id = "O">o</span><span id = "D">d</span><span id = "C_E">e</span><span id = "U">U</span>
    </a>
    <a href="/about.jsp">About</a>
    <div style="float: right; text-align: right;">
    <a href="/conversations">Conversations</a>
      <% if(request.getSession().getAttribute("user") != null){ %>
        <a href="/users/<%=request.getSession().getAttribute("user")%>">Hello <%= request.getSession().getAttribute("user") %>!</a>
      <% } else{ %>
        <a href="/login">Login</a>
        <a href="/register">Register</a>
      <% } %>
    <% if(request.getSession().getAttribute("user") != null){ %>
      <% if(UserStore.getInstance().getUser((String)request.getSession().getAttribute("user")).isAdmin()){%>
        <a href="/testdata">Administration</a>
      <% } else if(request.getSession().getAttribute("user") !=  null) {%>
        <a href="/testdata">App Statistics</a>
      <%}%>
    <% } %>
  </div>
  </nav>

  <div id="container">
    <div
      style="width:75%; margin-left:auto; margin-right:auto; margin-top: 50px;">

	  <h1>Meet Team Metapod (#11)</h1>
	  <ul>
		<li><b>Kevin Wang</b></li>
		<p>
			Hey everyone! I'm Kevin, the project advisor for team Metapod(11).
			:D I've been working at Google for a little over three years now and
			work on Google Flights frontend.
		</p>
		<li><b>Julia Tian</b></li>
		<p>
		  Hey! I'm a rising junior at UNC-Chapel Hill and I'm double majoring in
      Computer Science and Neuroscience. Besides coding, I also do a bit of graphic design
      and I enjoy tinkering with typography, layouts, colors etc.

		</p>
		<li><b>Eda Zhou</b></li>
		<p>
			I'm Eda and a sophomore at Worcester Polytechnic Institute (WPI for short).
			I am studying computer science although I am not sure what specifically I enjoy
			the most yet and want to pursue. This makes me happy to try new things!
		</p>
		<li><b>Philip Cori</b></li>
		<p>
			 I'm a sophomore at Santa Clara University studying Computer Science and
			 Engineering. As of now, I'm probably most interested in Data Science
			 and back-end web development, though I'm super open to learning basically
			 anything computer science related! I'm really looking forward to working
			 with you all!
		</p>
		<li><b>Maximillian George 'Oche'</b></li>
		<p>
			Hey everyone, my first name is Maximillian but I go by Oche. I am a sophomore
			at Washington and Jefferson and I'm majoring in computer and information
			studies. I'm really interested in working on game programs maybe or something
			to do with AI. I'm really not sure yet but I'm not really picky so I'm happy
			to work on whatever.
		</p>
	  </ul>
    </div>
  </div>
</body>
</html>
