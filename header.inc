<!DOCTYPE html>
<html lang="sv">

<!-- <html lang="en-gb" dir="ltr"> -->
<head>

	<meta charset="UTF-8">

	<title>Digital Master</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <link rel="stylesheet" href="css/jquery.mobile-1.4.5.css" /> -->
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon-precomposed" href="images/apple-touch-icon.png">

	<link rel="stylesheet" href="css/uikit.almost-flat.min.css">

	<link rel="stylesheet" href="css/styles.css?<?php echo  uniqid(); ?>">
	<link rel="stylesheet" type="text/css" href="css/slick.css"/>
	<link rel="stylesheet" type="text/css" href="css/slick-theme.css"/>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/uikit.min.js"></script>

	<script src="js/validate.js?<?php echo  uniqid(); ?>"></script>
	<script type="text/javascript" src="js/slick.min.js"></script>
	<script type="text/javascript" src="settings/config.js"></script>
	<script>
		 function goBack() {
			 window.history.back();
		}
		$( document ).on( 'click', '#signin-ok', function (event) {
			event.preventDefault();
			//alert('signin OK');
			//window.location.href = "http://dev.bappnet.se/dm/app/";
			window.location.href = "http://localhost/dm/app/";
		});

	</script>

	<style>
		.header { background-color: #5E9DC8}
		.uk-button-primary { background: #5E9DC8!important}
		h3 { background-color: #ffffff!important}
	</style>

</head>
<body>
	<div id="page">
		<div class="uk-grid">
			<div class="uk-width-1-1 header text-center">
				<a href="home"><img id="header-logo" src="images/dm-header.png"> </a>
			</div>
		</div>
		<?php
			if (isset($message)) {
				echo '<div id="message-bar" class="uk-width-1-1 text-center" style="background-color: #c00000; color: #fff; padding:4px 0;">';
					echo $message;
				echo '</div>';
			}
		?>
