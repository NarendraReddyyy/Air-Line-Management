<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Forget Password</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway');
        @import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');

        * {
            margin: 0;
            padding: 0;
            border-collapse: collapse;
            font-family: 'Montserrat', sans-serif;
        }

        html, body {
            height: 100%;
            width: 100%;
            background-image: url("/images/Forgot Password.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            vertical-align: middle;
            background-attachment: fixed;
            display: flex;
            flex-direction: column;
        }

        header {
           /*  background-image: linear-gradient(to right, rgba(46, 46, 224, 0.7), rgba(0, 255, 255, 0.18));
            background-color: rgb(139, 69, 19);
            box-shadow: 0 15px 30px -10px grey;
            border-bottom-left-radius: 50px;
            border-bottom-right-radius: 50px; */
            padding: 2rem;
            font-family: Raleway, serif;
            text-align: center;
            color: white;
            font-size: 120%;
            height: 7%;
            display: grid;
            place-items: center;
        }

        .content {
            flex: 2;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            align-items: center;
            color: darkslategrey;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 2rem;
            margin: 1rem 4rem 0.5rem 4rem;
            border-radius: 10px;
            box-shadow: 0 15px 30px -10px grey;
            width: min-content;
        }

        nav {
            padding: 1rem;
            display: flex;
            flex-direction: row;
            justify-content: space-evenly;
            align-items: center;
            font-size: large;
        }

        nav a {
            display: inline;
            text-decoration: none;
            color: darkslategrey;
            font-weight: bold;
            padding: 1.5rem 1.5rem;
            border-radius: 10px;
            background-color: #cce5ff;
        }

        nav a:hover {
            padding: 1.5rem 1.5rem;
            background-color: rgba(255, 255, 255, 0.7);
            box-shadow: 0 15px 30px -10px grey;
        }

        .submit-btn {
            font-size: large;
            margin: 1rem 2rem;
            padding: 0.5rem 1rem;
            background-color: dodgerblue;
            border: none;
            outline: none;
            color: white;
            border-radius: 4px;
            background-color: #8b4513;
        }

        .news-feed {
            width: 50vw;
        }

        .news-feed table {
            width: 100%;
        }

        .news-feed table caption {
            font-size: x-large;
            font-weight: bold;
            padding-bottom: 1rem;
        }

        .news-feed td:nth-child(even) {
            padding: 1rem;
            background-color: #eeeeee;
        }

        .container {
            width: 75vw;
        }

        form {
            display: grid;
            place-items: center;
            font-size: medium;
        }

        form * {
            width: 100%;
            text-align: center;
        }

        label {
            margin: 0.25rem 1rem 0.5rem 1rem;
            font-size: x-large;
            color: darkslategrey;
            font-weight: bold;
        }

        input, select, option {
            margin: 0.5rem 1rem;
            font-size: medium;
            border: none;
            outline: none;
            background-color: #dddddd;
            color: darkslategrey;
            padding: 0.5rem;
            text-align-last: center;
            border-radius: 4px;
        }

        .error-text {
            font-family: monospace;
            color: tomato;
            display: block;
        }

        a {
            text-decoration: none;
            color: forestgreen;
            text-align: center;
            padding: 0.25rem;
            display: inline;
        }

        .container-1 {
            display: flex;
            justify-content: space-evenly;
        }

        .grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            place-items: center;
        }

        .box {
            margin: 1rem;
            padding: 1rem;
            display: grid;
            place-items: center;
        }

        .box input, select {
            width: 90%;
        }

        footer {
            margin-bottom: 2rem;
        }
    </style>
</head>
<body>
<header>
    <h1>Password Recovery</h1>
</header>
<nav>
    <a href="<c:url value="/"/>">Back</a>
</nav>
<div class="content">
    <div class="card">
        <div class="container">
            <%--@elvariable id="userForgetPassword" type="com.cognizant.airline_ticket_reservation_system.model.UserForgetPassword"--%>
            <form:form action="/user/forget-password" method="post" modelAttribute="userForgetPassword">
                <div class="box">
                    <form:label path="id">
                        <spring:message code="label.user.id"/>
                    </form:label>
                    <form:input path="id" type="number" placeholder="Enter User Id"/>
                    <form:errors path="id" cssClass="error-text"/>
                </div>
                <div class="grid">
                    <div class="box">
                        <form:label path="secretQuestion">
                            <spring:message code="label.user.secretQuestion"/>
                        </form:label>
                        <form:select path="secretQuestion" items="${ secretQuestions }"/>
                        <form:errors path="secretQuestion" cssClass="error-text"/>
                    </div>
                    <div class="box">
                        <form:label path="answer">
                            <spring:message code="label.user.answer"/>
                        </form:label>
                        <form:input path="answer" placeholder="Answer of the secret quetion"/>
                        <form:errors path="answer" cssClass="error-text"/>
                    </div>
                    <div class="box">
                        <from:label path="email">
                            <spring:message code="label.user.email"/>
                        </from:label>
                        <form:input path="email" placeholder="Enter Email"/>
                        <form:errors path="email" cssClass="error-text"/>
                    </div>
                    <div class="box">
                        <form:label path="phone">
                            <spring:message code="label.user.phone"/>
                        </form:label>
                        <form:input path="phone" placeholder="Enter Phone Number"/>
                        <form:errors path="phone" cssClass="error-text"/>
                    </div>
                    <div class="box">
                        <form:label path="newPassword">
                            <spring:message code="label.userChangePassword.newPassword"/>
                        </form:label>
                        <form:password path="newPassword" placeholder="Enter New Password"/>
                        <form:errors path="newPassword" cssClass="error-text"/>
                    </div>
                    <div class="box">
                        <form:label path="confirmPassword">
                            <spring:message code="label.userChangePassword.confirmPassword"/>
                        </form:label>
                        <form:password path="confirmPassword" placeholder="Re-enter Password"/>
                        <form:errors path="confirmPassword" cssClass="error-text"/>
                    </div>
                </div>
                <input type="submit" value="Submit" class="submit-btn">
            </form:form>
        </div>
    </div>
</div>
<footer></footer>
</body>
</html>