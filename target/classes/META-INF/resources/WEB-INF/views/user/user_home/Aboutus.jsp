<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Payment Successful</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Raleway');

@import
	url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	border-collapse: collapse;
	font-family: 'Montserrat', sans-serif;
}

html, body {
	height: 100%;
	width: 100%;
	background-image: url("/images/payment.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	vertical-align: middle;
	background-attachment: fixed;
	display: flex;
	flex-direction: column;
}

  header {
/*             background-image: linear-gradient(to right, rgba(46, 46, 224, 0.7), rgba(0, 255, 255, 0.18)); */
/*             background-color: rgb(139, 69, 19); */
/*             box-shadow: 0 15px 30px -10px grey; */
/*             border-bottom-left-radius: 50px; */
/*             border-bottom-right-radius: 50px; */
            padding: 2rem;
            font-family: Raleway, serif;
            text-align: center;
            font-size: 120%;
            color: black;
            height: 7%;
            display: grid;
            place-items: center;
        }

.content {
	flex: 2;
	display: flex;
	height: max-content;
	flex-direction: column;
	justify-content: space-evenly;
	align-items: center;
	color: darkslategrey;
}

.card {
	background-color: rgba(255, 255, 255, 0.7);
	padding: 2rem;
	margin: 2rem 4rem 0 4rem;
	border-radius: 10px;
	box-shadow: 0 15px 30px -10px grey;
	width: min-content;
}

.container {
	width: 25vw;
	text-align: center;
}

.container * {
	padding: 1rem;
	display: grid;
	place-items: center;
}

.submit-btn {
	font-size: large;
	padding: 0.5rem 1rem;
	background-color: #8b4513;
	border: none;
	outline: none;
	color: white;
	border-radius: 4px;
}

a {
	text-decoration: none;
}

footer {
	margin-bottom: 2rem;
}
</style>

</head>
<body>
<header>
    <h1>About Us</h1>
</header>
	<div class="content">
		<div class="card">
			<div class="container">
				<h2>Gayam Srikanth Reddy</h2>
				<h3>Team Leader</h3>
				<h3>+919989XXX500</h3>
				<h3>919983@cognizant.com</h3>
			</div>
		</div>
		<div class="card">
			<div class="container">
				<h2>Narendra Reddy Yannam</h2>
				<h3>Team Member</h3>
				<h3>+919182XXX575</h3>
				<h3>919326@cognizant.com</h3>
			</div>
		</div>
		<div class="card">
			<div class="container">
				<h2>Challa Jagadeesh kumar</h2>
				<h3>Team Member</h3>
				<h3>+918500XXX367</h3>
				<h3>919985@cognizant.com</h3>
			</div>
		</div>
		<div class="card">
			<div class="container">
				<h2>Ankireddy Asmitha Reddy</h2>
				<h3>Team Member</h3>
				<h3>+919440XXX757</h3>
				<h3>919960@cognizant.com</h3>
			</div>
		</div>
		<div class="card">
			<div class="container">
				<h2>Padyala Pravallika</h2>
				<h3>Team Member</h3>
				<h3>+918555xxx666</h3>
				<h3>919330@cognizant.com</h3>
			</div>
		</div>
		<br><br>

		<a href="<c:url value="/user/user-home"/>">
					<button class="submit-btn">Home</button>
				</a>
	</div>
	<footer></footer>
</body>
</html>
