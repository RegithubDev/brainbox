<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html class="loading" lang="en" data-textdirection="ltr">


<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 BrainBox with unlimited possibilities.">
    <meta name="keywords" content="admin template,BrainBox , Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>BB- Dashboard </title>
        <link rel="icon" type="image/png" sizes="96x96" href="/brainbox/resources/images/protect-favicon.png" >


	<script src="/brainbox/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/brainbox/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
            <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/plugins/extensions/ext-component-toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/extensions/sweetalert2.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/plugins/extensions/ext-component-sweet-alerts.min.css"/>">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/pickers/pickadate/pickadate.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/semi-dark-layout.min.css">
   <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/core/menu/menu-types/horizontal-menu.min.css">
        <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/plugins/forms/pickers/form-pickadate.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/style.css">
    
    <style>
    @media (min-width: 1200px){
	.modal-xl {
	    margin-left: 10%!important;;
	    margin-right: 3%!important;;
	     max-width: 80%!important;;
	}
}

.mdl-grid{
	display: flex !important;
    padding: 4px;
    justify-content: space-between;
    height: 4.5rem;
} 
.form-switch .form-check-input:not(:checked) {
    background-color: #11db00 !important;
}
.dt-table{
display: block !important;
height: 100%;
}
.modal {
    width: 100% !important;
}
.required{
	color:red;
}
.my-error-class {
 	 color:red;
}
.my-valid-class {
 	 color:green;
}
.select2-container--default .select2-selection--single .select2-selection__arrow b {
     left: -25% !important;
    margin-top: 1p% !important;
}
body {
    font-family: var(--bs-body-font-family) !important;
}
.dark-layout h1, .dark-layout h2, .dark-layout h3, .dark-layout h4, .dark-layout h5, .dark-layout h6, .dark-layout span  {
    color: #D0D2D6;
}
.select2-container--classic .select2-selection--single .select2-selection__arrow b, .select2-container--default .select2-selection--single .select2-selection__arrow b {
    background-image: url(data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'%23d8d6de\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'feather feather-chevron-down\'%3E%3Cpolyline points=\'6 9 12 15 18 9\'%3E%3C/polyline%3E%3C/svg%3E);
    background-size: 18px 14px,18px 14px !important;
    background-repeat: no-repeat !important;
    height: 1rem !important;
    padding-right: 1.5rem !important;
    margin-left: 0 !important;
    margin-top: 0 !important;
    left: -8px !important;
    border-style: none !important;
}
td {
    border: 1px solid #000;
}

tr td:last-child {
    width: 1%;
    white-space: nowrap;
}
.dataTables_scrollHeadInner{
    box-sizing: content-box;
    width: auto !important;
    padding-right: 0px;
}
    .card1 {
            width: 300px;
            padding: 20px;
            margin: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s, border-color 0.3s, color 0.3s;
        }

        /* Styles for the hover state */
        .card1:hover {
            transform: scale(1.05); /* Slightly increase the size */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Enhance the shadow */
            background-color: #f0f0f0; /* Optional: change the background color */
            cursor: pointer;
            border-color: #007BFF; /* Change the border color */
            color: #007BFF; /* Change the text color */
        }

        /* Additional styles for the class 'carshv' */
        .card1.carshv {
            border-color: #007BFF; /* Change the border color */
            color: #007BFF; /* Change the text color */
        }
    
    .teal-color {
        color:orange;
    }
     
    .green-color {
    color:green;
    }
    
    .red-color {
        color:red;
    }
    </style>
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->
 	<jsp:include page="../views/layout/header.jsp"></jsp:include> 
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
        <!-- BEGIN: Main Menu-->
    <div class="horizontal-menu-wrapper">
      <div class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-shadow menu-border container-xxl" role="navigation" data-menu="menu-wrapper" data-menu-type="floating-nav">
        <div class="navbar-header">
          <ul class="nav navbar-nav flex-row">
            <li class="nav-item me-auto"><a class="navbar-brand" href="#"><span class="brand-logo">
                  <svg viewbox="0 0 139 95" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="24">
                    <defs>
                      <lineargradient id="linearGradient-1" x1="100%" y1="10.5120544%" x2="50%" y2="89.4879456%">
                        <stop stop-color="#000000" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                      <lineargradient id="linearGradient-2" x1="64.0437835%" y1="46.3276743%" x2="37.373316%" y2="100%">
                        <stop stop-color="#EEEEEE" stop-opacity="0" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                    </defs>
                    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g id="Artboard" transform="translate(-400.000000, -178.000000)">
                       			         <img src="<%=request.getContextPath() %>/resources/images/logo/protect-main.png" width="50" height="40" class="card-img">

                      </g>
                    </g>
                  </svg></span>
                <h2 class="brand-text mb-0"></h2></a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i></a></li>
          </ul>
        </div>
        <div class="shadow-bottom"></div>
        <!-- Horizontal menu content-->
 			<jsp:include page="../views/layout/menu.jsp"></jsp:include> 
      </div>
    </div>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div>
    
        <div class="content-body"><!-- Knowledge base Jumbotron -->

 <section id="knowledge-base-content">
 <div class="row match-height">
    <!-- Medal Card -->
    <div class="col-xl-4 col-md-6 col-12">
      <div class="card card-congratulations">
        <div class="card-body text-center">
          <img src="/brainbox/resources/images/elements/decore-left.png" class="congratulations-img-left" alt="card-img-left">
          <img src="/brainbox/resources/images/elements/decore-right.png" class="congratulations-img-right" alt="card-img-right">
          
          <div class="text-center" style="position: relative; z-index: 1;">
            <h1 class="mb-1 text-white">Welcome Back 🎉</h1> <h4 class="mb-1 text-white"><b><u>${sessionScope.USER_NAME }!</u></b></h4>
            
          </div>
        </div>
      </div>
    </div>
    <!--/ Medal Card -->

    <!-- Statistics Card -->
  <div class="col-xl-8 col-md-6 col-12" style="
    /* height: 2rem; */
">
      <div class="card card-statistics" style="
    height: 11rem;
">
        <div class="card-header" style="
    height: 2rem;
">
          <h4 class="card-title">Statistics</h4>
          <div class="d-flex align-items-center">
            <p class="card-text font-small-2 me-25 mb-0">Updated 1 Minute ago</p>
          </div>
        </div>
        <div class="card-body statistics-body">
          <div class="row">
            <div class="col-xl-3 col-sm-6 col-12 mb-2 mb-xl-0">
              <div class="d-flex flex-row">
                <div class="avatar bg-light-primary me-2">
                  <div class="avatar-content">
					<i class="fa-solid fa-list-check"></i>

                  </div>
                </div>
                <div class="my-auto">
                  <h4 class="fw-bolder mb-0">230k</h4>
                  <p class="card-text font-small-3 mb-0">Total Ideas</p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 col-12 mb-2 mb-xl-0">
              <div class="d-flex flex-row">
                <div class="avatar bg-light-info me-2">
                  <div class="avatar-content">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user avatar-icon"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                  </div>
                </div>
                <div class="my-auto">
                  <h4 class="fw-bolder mb-0">8.549k</h4>
                  <p class="card-text font-small-3 mb-0">Active Ideas</p>
                </div> 
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 col-12">
              <div class="d-flex flex-row">
                <div class="avatar bg-light-success me-2">
                  <div class="avatar-content">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-dollar-sign avatar-icon"><line x1="12" y1="1" x2="12" y2="23"></line><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path></svg>
                  </div>
                </div>
                <div class="my-auto">
                  <h4 class="fw-bolder mb-0">$9745</h4>
                  <p class="card-text font-small-3 mb-0">Approved Ideas</p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 col-12 mb-2 mb-sm-0">
              <div class="d-flex flex-row">
                <div class="avatar bg-light-danger me-2">
                  <div class="avatar-content">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-box avatar-icon"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
                  </div>
                </div>
                <div class="my-auto">
                  <h4 class="fw-bolder mb-0">1.423k</h4>
                  <p class="card-text font-small-3 mb-0">Rejected Ideas</p>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
    <!--/ Statistics Card -->
  </div>
   <div class="card-body" style="margin-top: -2rem;text-align: -webkit-center;">
          <h2 class="fw-bolder mt-1"></h2>
          <!-- <h2 class="text-primary">Search Anything</h2> -->
         <!--  <p class="card-text mb-2">
            <span>Popular searches: </span><span class="fw-bolder">Sales automation, Email marketing</span>
          </p> -->
          <form class="kb-search-input">
       <!--      <div class="input-group input-group-merge mb-1">
               <input type="text" class="form-control"  placeholder="Search SBU" />
               
            </div> -->
            <div class="input-group input-group-merge" style="width: 77%;">
              <span class="input-group-text"><i data-feather="search"></i></span>
              <input type="text" class="form-control" id="searchbar" list="browsers" placeholder="Search Here" />
    
            </div>
          </form> 
        </div>

  <div class="row kb-search-content-info match-height">
    <c:forEach var="obj1" items="${themeList}">
        <div class="col-md-3 col-sm-6 col-12 kb-search-content"> <!-- Modified column classes -->
            <div class="card1">
                <div class="card-body">
                    <!-- account setting header -->
                    <h6 class="kb-title">
                        <span><b>[${obj1.theme_code }] - ${obj1.theme_name } (${ obj1.counts})</b></span>
                        <input class="tCodes" type="hidden" value="${obj1.theme_code}  ${obj1.theme_name }" />
                    </h6>
                    <div class="list-group list-group-circle mt-2 stdtable">
                        <c:choose>
                            <c:when test="${  fn:contains( obj1.title, ',' ) }">
                                <c:set var="filesLists" value="${fn:split(obj1.idea_no, ',')}" />
                                <c:set var="filesList" value="${fn:split(obj1.title, ',')}" />
                                <c:set var="filesListss" value="${fn:split(obj1.status, ',')}" />
                                <c:set var="sbus" value="${fn:split(obj1.sbu, ',')}" />
                                <c:set var="sbun" value="${fn:split(obj1.sbu_name, ',')}" />
                                <c:forEach var="obj" items="${filesLists}" varStatus="index"> 
                                <!-- Iterate over the items -->
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <!-- Handle other cases if needed -->
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
                <div style="text-align: end;position: relative;top: -1rem;left: -2rem;">
                    <button type="button" class="btn " onclick="addBox();" data-bs-toggle="modal" data-bs-target="#addIdea${index.count }" 
                    style="margin-top: 17px; color: white !important; background-color: orange !important;"><i class="fa fa-add" aria-hidden="true"></i>Add
                    </button>
                </div>
            </div>
        </div>
        <div class="modal fade" id="addIdea${index.count }" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content" id="bgimage">
      <div class="modal-header bg-transparent">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body pb-5 px-sm-5 pt-50">
        <div class="text-center">
          <h1 class="mb-1 alert alert-danger">Submit Your Idea <i class="fa-solid fa-lightbulb"></i></h1>
        </div>
        <form id="addIdeaForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/add-idea" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
    
             <input type="hidden" id="project_code" name="project_code" value="${sessionScope.BASE_PROJECT_CODE }"/>
             <input type="hidden" id="department_code" name="department_code" value="${sessionScope.BASE_DEPARTMENT }"/>
             <input type="hidden" id="sbu_code" name="sbu_code" value="${sessionScope.BASE_SBU }"/>
             <input type="hidden" id="approver_code" name="approver_code" />
           <input type="hidden" id="approver_type" name="approver_type" /> 
            <input type="hidden" id="email_id" name="email_id" />
             <input type="hidden" id="approver_name" name="approver_name" />
             <input type="hidden" id="incident_name" name="incident_name" />
        <div class="col-12 col-md-12">
            <label class="form-label" for="modalEditUserFirstName"> Idea in Short</label><span class="required"> *</span>
            <input
              type="text"
              id="title_add"
              name="title"
              class="form-control"
              placeholder="Idea in Short"
              value=""
              data-msg="Please enter your first name"
            />
             <span id="title_addError" class="error-msg" ></span>
          </div> 
          	<div class="col-12 col-md-12">
            <label class="form-label" for="select2-basic">Idea in Detail</label>
    		 <div class="row">
		    <div class="col-12">
		          <div class="row">
		            <div class="col-12">
		              <div class="mb-1">
		                <textarea
		                  class="form-control"
		                  id="description_add"
		                  name="description"
		                  rows="3"
		                  placeholder="Idea Description"
		                ></textarea>
		              </div>
		            </div>
		   
		      </div>
		    </div>
		  </div>
             <span id="description_addError" class="error-msg" ></span>
          </div>
          	<div class="col-12 col-md-12">
            <label class="form-label" for="select2-basic">Select Idea Theme</label><span class="required"> *</span>
    		   <select 
              id="select2-theme_add-container"
              name="theme"
              class="select2 form-select formSelect"
              aria-label="Default select example" onchange="roleMapping('Evaluator');"
            >
              <option value="">Select Idea Theme ${obj1.theme_code }</option>
             <c:forEach var="obj" items="${themeList}">
					<option value="${obj.theme_code }" <c:if test="${obj.theme_code eq obj1.theme_code }">selected</c:if>>[${obj.theme_code }] - ${obj.theme_name }</option>
				</c:forEach>
            </select>
             <span id="select2-theme_add-containerError" class="error-msg" ></span>
          </div>
          
        
              <div class="col-12 col-md-12" > 
              <label class="form-label" for="select2-basic">Upload Files (optional)</label>
               <div class="mb-1">
                <div class="control-group" id="fields">
	                     
	                           <div class="controls">
	                               <div class="entry input-group upload-input-group">
	                                   <input class="form-control" id="files${index.count }" name="mediaList" type="file" placeholder="choose relevent file">
	                                   <button class="btn btn-upload btn-success btn-add" type="button">
	                                       <i class="fa fa-plus"></i>
	                                   </button>
	                               </div>
	                           </div>
	                       </div>  
	                </div>
              </div>
               <div class="col-12 col-md-12" > 
               
               <div class="demo-inline-spacing">
               <div class="mb-1 form-check form-switch form-check-secondary">
		              <label class="form-check-label btn-flat-success " for="customSwitch1"></label>
		            </div>
		            <div class="mb-1 form-check form-switch form-check-secondary">
		              <label class="form-check-label btn-flat-success " for="customSwitch1"></label>
		            </div>
		            
		            <div class="mb-1 form-check form-switch form-check-secondary">
		              <label class="form-check-label badge bg-success " id="lableSuccess" for="customSwitch1">Public</label>
		            </div>
		            <div class="mb-1 form-check form-switch form-check-secondary">
		              <input type="checkbox" class="form-check-input" name="is_anonymous"  id="customSwitch11">
		              <label class="form-check-label" for="customSwitch11">
                  <span class="switch-icon-left"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg></span>
                  <span class="switch-icon-right"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg></span>
                </label>
		              <label class="form-check-label badge badge-light-dark" id="lableDark" for="customSwitch2">Submit Idea Anonymously</label>
		            </div>
		          </div>
              </div>
          <div class="col-12 text-center mt-2 pt-50">
            <button type="button" class="btn btn-primary me-1" onclick="addIdea();">Submit</button>
            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
              Discard
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
    </c:forEach>
    <!-- no result -->
    <c:if test="${empty themeList }">
        <div class="col-12 text-center ">
            <h4 class="mt-4">No Ideas found!!</h4>
        </div>
    </c:if>
    <c:if test="${not empty themeList }">
        <div class="col-12 text-center no-result no-items">
            <h4 class="mt-4">Search result not found!!</h4>
        </div>
    </c:if>
</div>
  
</section>
<!-- Knowledge base ends -->

        </div>
      </div>
    </div>
    <!-- END: Content-->
    <!-- BEGIN: Customizer-->
    <!-- End: Customizer-->
    <!-- Buynow Button-->
    <div class="sidenav-overlay"></div>

    <!-- BEGIN: Footer-->
   <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> . All Rights Reserved.</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->
   <script src="/brainbox/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->
 <form action="<%=request.getContextPath()%>/get-bb-bank" name="updateIRM" id="updateIRM" method="post">	
        <input type="hidden" name=idea_no id="document_codeUpdate" />
         <input type="hidden" name=theme id="theme1" />
	</form>
    <!-- BEGIN: Page Vendor JS-->
   <script src="/brainbox/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/brainbox/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/brainbox/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/brainbox/resources/vendors/js/charts/apexcharts.min.js"></script>
    <script src="/brainbox/resources/vendors/js/extensions/toastr.min.js"></script>
    <script src="/brainbox/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- END: Page Vendor JS-->
 <script src="/brainbox/resources/js/materialize-v.1.0.min.js "  ></script>
    <script src="/brainbox/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/brainbox/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/brainbox/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/brainbox/resources/js/dataTables.material.min.js"  ></script>
      <script src="/brainbox/resources/js/moment-v2.8.4.min.js"  ></script>
    <!-- BEGIN: Theme JS-->
    <script src="/brainbox/resources/js/core/app-menu.min.js"></script>
    <script src="/brainbox/resources/js/core/app.min.js"></script>
    <script src="/brainbox/resources/js/scripts/customizer.min.js"></script>
     <script src="/brainbox/resources/js/scripts/forms/form-select2.min.js"></script>
    <!-- END: Theme JS-->
   <script src="/brainbox/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/page-pricing.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-create-app.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-edit-user.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-share-project.min.js"></script>
    <!-- BEGIN: Page JS-->
     <script src="/brainbox/resources/js/scripts/pages/dashboard-analytics.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/app-invoice-list.min.js"></script>
    
        <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.time.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/legacy.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
     <script src="/brainbox/resources/js/scripts/forms/pickers/form-pickers.min.js"></script>
 
   <form action="<%=request.getContextPath()%>/bb-sbu" name="getIRM" id="getIRM" method="post">	
      
         <input type="hidden" name=theme id="theme" />
        
	</form>
	
    <script>
      $(window).on('load',  function(){
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
          function addIdea(){
	    	if(validator.form()){ // validation perform
	    		 $('.formSelect').prop("disabled", false);
	    		 $('#addIdea').modal('hide');
	        	document.getElementById("addIdeaForm").submit();	
	    	}
	    }
        $('#addIdea').on('show.bs.modal', function (event) {
        $(document).ready(function() {
            $('.select2').select2({
                dropdownParent: $('#addIdea')
            });
        }); 
    });
        
        function roleMapping(role){
	    	//$("#approverForIncident").html('No Reviewer Assigned').css("color", "orange");
	    
	        if ($.trim(role) != "") {
	        	var myParams = { role_code: role};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getRoleMappingforBBForm",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                        	if($.trim(val.user_name) != ''){
	                        		//$("#approverForIncident").html(val.user_name).css("color", "#05f305").append('&nbsp; <i class="fa fa-check" aria-hidden="true"></i>');
	                        		$("#approver_code").val(val.user_id);
	                        		$("#approver_type").val(val.role_code);
	                        		$("#email_id").val(val.email_id);
	                        		$("#approver_name").val(val.user_name);
	                        	}else{
	                        		 $("#approver_code").val(null);
	                        		 $("#approver_type").val("No Reviewer Assigned");
	                        		// $("#approverForIncident").html('No Reviewer Found').css("color", "red");
	                        	}
	                        });
	                    }else{
	                    	 // $("#approverForIncident").html('No Reviewer Found').css("color", "red");
	                    	  $("#approver_code").val(null);
                      		  $("#approver_type").val(null);
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    	
	    }
        var validator =	$('#addIdeaForm').validate({
		   	 errorClass: "my-error-class",
		   	 validClass: "my-valid-class",
		   	 ignore: ":hidden:not(.select2 form-select)",
		   		    rules: {
		   		 		  "title": {
		   			 			required: true
		   			 	  },"theme": {										 
		   			 			required: true
		   			 	  },"description": {
		   	                 	required: false,
		   			 	  }
		   		 	},
		   		    messages: {
		   		 		 "title": {
		   				 	required: 'Required',
		   			 	  },"theme": {
		   			 		required: 'Required'
		   			 	  },"description": {
		   		 			required: 'Required'
		   		 	  	  }
		      		},
		      		errorPlacement:function(error, element){
		      		 	if (element.attr("id") == "title_add" ){
		   				 document.getElementById("title_addError").innerHTML="";
		   		 		 error.appendTo('#title_addError');
		   			}else if(element.attr("id") == "select2-theme_add-container" ){
		   			   document.getElementById("select2-theme_add-containerError").innerHTML="";
		   		 	   error.appendTo('#select2-theme_add-containerError');
		   			}else if(element.attr("id") == "description_add" ){
		   				document.getElementById("description_addError").innerHTML="";
		   			 	error.appendTo('#description_addError');
		   			}else{
		   					error.insertAfter(element);
		   	        } 
		      		},invalidHandler: function (form, validator) {
		               var errors = validator.numberOfInvalids();
		               if (errors) {
		                   var position = validator.errorList[0].element;
		                   jQuery('html, body').animate({
		                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
		                   }, 1000);
		               }
		           },submitHandler:function(form){
		   	    	//form.submit();
		   	    }
		   	});
      function getIdea(idea_no,theme){
	    	
	    	$('#document_codeUpdate').val($.trim(idea_no));
	    	$('#theme1').val($.trim(theme));
	    	$("#updateIRM ").submit();
	    	
      }
  	function addBox(){
   		$('select[name^="theme"] option:selected').removeAttr("selected");
   		$('form-select').select2();
   	}
	
      function goToFilterPage(theme){
    	  $('#theme').val($.trim(theme));
	    	 $("#getIRM ").submit();
      }
      
      $("#searchbar").on("keyup", function() {
    	  flag = true;
    	 
    	    var searchKey = $(this).val().toLowerCase();
    
    	    $(".stdtable #stdname").each( function() {
    	    	 $(this).css('background-color','white');
    	     var searchStr = $(this).text().toLowerCase();
    	        if ($.trim(searchKey) != "" && searchStr.indexOf(searchKey)!=-1 && flag == true) {
    	            $(this).parent().show();
    	            $(this).css('background-color','#e12228');
    	            $(this).css('color','white');
    	            var s = $(this).val();
    	            var txt = $("#stdname").val().replace(s, '<span style="background-color: FFCCCB">' + s +  '</span>');
    	            $("#stdname").val(txt);
    	        }
    	        else {
    	            //$(this).hide();
    	        	 $(this).css('background-color','white');
    	        	 $(this).css('color','blue');
    	        }
    	    });
    	});
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/page-knowledge-base.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:19 GMT -->
</html>