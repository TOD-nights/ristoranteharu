<?php
	require_once "stripe-php-master/init.php";

	$stripeDetails = array(
		"secretKey" => "sk_test",
		"publishableKey" => "pk_test_"
	);

	// Set your secret key: remember to change this to your live secret key in production
	// See your keys here: https://dashboard.stripe.com/account/apikeys
	\Stripe\Stripe::setApiKey($stripeDetails['secretKey']);
?>
