<!-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sidebar</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/background.css">
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar.css">

<div class="sidebar">
    <div class="profile-section">
        <c:if test="${not empty userProfile.image}">
            <img src="data:image/jpeg;base64,${userProfile.image}" alt="Profile" class="profile-image">
        </c:if>
        <c:if test="${empty userProfile.image}">
            <img src="${pageContext.request.contextPath}/images/default-avatar.png" alt="Default Profile" class="profile-image">
        </c:if>
        <div class="profile-name">${userProfile.firstName} ${userProfile.lastName}</div>
        <div class="profile-role">${user.role}</div>
    </div>

    <a href="${pageContext.request.contextPath}/user/home" class="sidebar-link ${pageContext.request.servletPath == '/user/home' ? 'active' : ''}">
        <i class="fas fa-home"></i> Home
    </a>

    <a href="${pageContext.request.contextPath}/user/viewAllTrains" class="sidebar-link ${pageContext.request.servletPath == '/user/viewAllTrains' ? 'active' : ''}">
        <i class="fas fa-subway"></i> View All Metro Routes
    </a>

    <a href="${pageContext.request.contextPath}/user/findTrainsbetweenStaionsFwd" class="sidebar-link ${pageContext.request.servletPath == '/user/findTrainsbetweenStaionsFwd' ? 'active' : ''}">
        <i class="fas fa-route"></i> Metro Routes between Stations
    </a>

    <a href="${pageContext.request.contextPath}/user/showTicketBookingHistory" class="sidebar-link ${pageContext.request.servletPath == '/user/showTicketBookingHistory' ? 'active' : ''}">
        <i class="fas fa-history"></i> Ticket Booking History
    </a>

    <a href="${pageContext.request.contextPath}/user/trainFairEnqueryFwd" class="sidebar-link ${pageContext.request.servletPath == '/user/trainFairEnqueryFwd' ? 'active' : ''}">
        <i class="fas fa-calculator"></i> Fare Enquiry
    </a>

    <a href="${pageContext.request.contextPath}/user/trainSeatsAvailablityCheckFwd" class="sidebar-link ${pageContext.request.servletPath == '/user/trainSeatsAvailablityCheckFwd' ? 'active' : ''}">
        <i class="fas fa-chair"></i> Check Seats Availability
    </a>

    <a href="${pageContext.request.contextPath}/user/searchTrainByNumberFwd" class="sidebar-link ${pageContext.request.servletPath == '/user/searchTrainByNumberFwd' ? 'active' : ''}">
        <i class="fas fa-search"></i> Search Route by Number
    </a>

    <a href="${pageContext.request.contextPath}/userProfile/view" class="sidebar-link ${pageContext.request.servletPath == '/userProfile/view' ? 'active' : ''}">
        <i class="fas fa-user"></i> Profile
    </a>

    <a href="${pageContext.request.contextPath}/logout" class="sidebar-link">
        <i class="fas fa-sign-out-alt"></i> Logout
    </a>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Get current path
    const path = window.location.pathname;
    
    // Find the matching link and add active class
    document.querySelectorAll('.sidebar-link').forEach(link => {
        if (link.getAttribute('href').endsWith(path)) {
            link.classList.add('active');
        }
    });
});
</script> -->
