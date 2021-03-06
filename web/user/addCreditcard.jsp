<%-- 
    Document   : addNewInterest
    Created on : Feb 26, 2019, 1:15:22 AM
    Author     : Nesma iTi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add credit card</title>
                <!-- Bootstrap core CSS -->
        <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        
                <!-- Page level plugin CSS-->
        <link href="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

                <!-- Form CSS-->
        <link href="<%=request.getContextPath()%>/resources/css/login.css" rel="stylesheet">
        
        
        
    </head>
    <body>


        <jsp:include page="/blocks/header.jsp"/>

        <!-- Page Content -->
        <div class="container">

            <!-- Page Content -->
            <div class="container containerSpacing">

                <h1 class="divHeader">${user.firstName} ${user.lastName}</h1>

                <div class="row" style="flex-flow: inherit;">

                    <jsp:include page="nav_bar.jsp" />


                    <!-- DataTables Example -->
                    <div class="card mb-3" id="form" style="width: 100%">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            Add Your Credit Number.</div>
                        <div class="card-body">
                                <form action='<%=request.getContextPath()%>/account/AddCreditCard' method='post' class="my-modal-content">
                                <div class="columnTwoThird container">
                                    <div class="centeredDiv2">
                                        <label><b>Credit Card Number</b></label>
                                        <input name=="creditNum" value="creditNumber" type="number" > 
                                        
                                    </div>
                                    <div class="centeredDiv2">
                                        <button type="submit" class="submit-button-half">Add</button>
                                    </div>
                                </div>
                            </form>

                            




                        </div>
                      
                        <c:choose>
                            <c:when test="${isAdded == 'true'}">
                                <div class="card-footer small text-muted">Changes saved successfully.</div>
                            </c:when> 
                            <c:when test="${isAdded == 'false'}">
                                <div class="card-footer small text-muted">An error occurred. Please check your input and try again.</div>
                            </c:when>
                            <c:otherwise>
                                <div class="card-footer small text-muted">Everything is just fine.</div>
                            </c:otherwise>
                        </c:choose>
                              

                        
                    </div>
                        

                    </div>
                </div>
            </div>       
 <jsp:include page="/blocks/footer.jsp"/>

               <!-- Bootstrap core JavaScript-->
        <script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="<%=request.getContextPath()%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="<%=request.getContextPath()%>/resources/js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="<%=request.getContextPath()%>/resources/js/demo/datatables-demo.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/demo/chart-area-demo.js"></script>

        <!-- Select scripts for this page-->
        <script src="<%=request.getContextPath()%>/resources/js/demo/customSelect.js"></script>


    </body>
</html>


