<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div class="col-lg-3" style="background-color: white"></div>
    <div class="alert alert-secondary col-lg-6" role="alert" style="text-align: center ; background-color:#e2e3e5">
        <p><%= session.getAttribute("message") %></p>
    </div><% session.removeAttribute("message");%>
</div>