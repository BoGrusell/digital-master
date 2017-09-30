<?php
/**
	contact us.tpl
*/

// div-center

?>
<section>


	<div class="uk-grid">
		<div class="uk-width-1-1">

			<h1>Contact us</h1>

			<p>
			If you would like further information about Digital Guarantee, please fill in the contact form below
			</p>

			<form class="uk-form uk-form-stacked">

				<div class="uk-form-row">
					<label class="uk-form-label" for="lastname">Lastname</label>
					<div class="uk-form-controls">
						<input type="text" id="lastname" placeholder="" class="uk-form-width-large">
					</div>
				</div>
				<div class="uk-form-row">
					<label class="uk-form-label" for="firstname">Firstname</label>
					<div class="uk-form-controls">
						<input type="text" id="firstname" placeholder="" class="uk-form-width-large">
					</div>
				</div>

				<div class="uk-form-row">
					<label class="uk-form-label" for="Organisation">Organisation</label>
					<div class="uk-form-controls">
						<input type="text" id="organisation" placeholder=""class="uk-form-width-large">
					</div>
				</div>

				<div class="uk-form-row">
					<label class="uk-form-label" for="email">E-mail</label>
					<div class="uk-form-controls">
						<input type="email" id="email" placeholder="" class="uk-form-width-large">
					</div>
				</div>

				<div class="uk-form-row">
					<label class="uk-form-label" for="mobile">Mobil</label>
					<div class="uk-form-controls">
						<input type="text" id="mobile" placeholder="Mobile" class="uk-form-width-medium">
					</div>
				</div>

				<!--
				<div class="uk-form-row">
					<label class="uk-form-label" for="contact_type">Ämne</label>
					<div class="uk-form-controls">
						<select id="contact_type" class="uk-form-width-medium">
							<option>Information</option>
							<option>Bli Medlem</option>
							 <option>Annat ämne</option>
						</select>
					</div>
				</div>
				-->

				<div class="uk-form-row mb-10">
					<label class="uk-form-label" for="message">Message</label>
					<div class="uk-form-controls">
						<textarea id="message" cols="30" rows="5" placeholder="" class="uk-form-width-large"></textarea>
					</div>
				</div>

				<button class="uk-width-1-1 uk-button uk-button-primary uk-button-large mb-6" type="button">Send</button>
				<a href="home" class="uk-width-1-1 uk-button uk-button-success uk-button-large" type="button">Back</a>
				<!-- <button onclick="goBack()" class="uk-width-1-1 uk-button uk-button-default uk-button-large" type="button">Tillbaka</button> -->

			</form>


		</div>
	</div>

</div>

<script>

/**
	$(document).ready(function(){

	});
*/

</script>
