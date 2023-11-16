<?php
	require_once "stripe-php-master/init.php";

	$stripeDetails = array(
		"secretKey" => "sk_test_51O9cicDTdTaOGMokDABWA0xXaVa3XXtGtqlKDkqeQ2ou4kACIuvRzI4PKiL3s7Zc1QlkK49VRiuWgY5WXeCq9t0t00foDpL4b4",
		"publishableKey" => "pk_test_51O9cicDTdTaOGMokgrXBJsSnZ1VkHbfBE9cqzIEC0Ya5CNJlV9THe5hDhG3bHEH5yFUnZloZPQwzymHZDtsoUtq400VqJjs3SU"
	);
//"secretKey" => "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",
//"publishableKey" => "pk_live_51O9cicDTdTaOGMokSjyyYRbTfBYfgFxf4MoHn8Dsj8y8MRdkJbkbjN0mcyfR4MWaAfnTakuGxWEBMaNod7qMq12h00ZYmVQr5z"

	// Set your secret key: remember to change this to your live secret key in production
	// See your keys here: https://dashboard.stripe.com/account/apikeys
	\Stripe\Stripe::setApiKey($stripeDetails['secretKey']);
?>
