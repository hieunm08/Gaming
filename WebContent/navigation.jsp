

<%@page import="entities.Users"%>
<%
Users user = null;
if(session.getAttribute("user") != null){
	user = (Users) session.getAttribute("user");
}

%>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar" style="height: auto;">
      <!-- Sidebar user panel -->
      <div class="user-panel">
      <%if(user !=null){ %>
        <div class="pull-left image">
          <img src="<%=user.getAvatar()%>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><%=user.getName() %></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <%} %>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
       
       
       
       
      
   <!--      <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>Tables</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
            <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
          </ul>
        </li> -->
       
       
       
        
        <li><a href="typeRoom_manager.jsp"><i class="fa fa-book"></i> <span>Type Room</span></a></li>
        <li><a href="room.jsp"><i class="fa fa-book"></i> <span>Room</span></a></li>
      	<li><a href="users_manager.jsp"><i class="fa fa-book"></i> <span>User</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>