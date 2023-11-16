<?php

require __DIR__ . "/vendor/autoload.php";

$stripe_secret_key = "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";

\Stripe\Stripe::setApiKey($stripe_secret_key);

/*
$contact_name = $_POST["c_name"];
$token_card_type = $_POST["stripeTokenType"];
$phone           = $_POST["phone"];
$email           = $_POST["stripeEmail"];
$address         = $_POST["address"];
$amount          = $_POST["amount"]; 
$desc            = $_POST["product_name"]; */


$checkout_session = \Stripe\Checkout\Session::create([
    "mode" => "payment",
    "success_url" => "http://success.php",
    "cancel_url" => "http://index.php",
    "locale" => "auto",
    "line_items" => [
        [
            "quantity" => 1,
            "price_data" => [
                "currency" => "eur",
                /* "amount" => str_replace(",","",$amount) * 100, */
                "unit_amount" =>  100,
                
                "product_data" => [
                    "name" => "riso"
                ]
            ]
        ],
        [
            "quantity" => 2,
            "price_data" => [
                "currency" => "eur",
                "unit_amount" => 100,
                "product_data" => [
                    "name" => "acqua"
                ]
            ]
        ]        
    ]
]);

if($checkout_session){
    header("Location:success.php?amount=$amount");
  }

http_response_code(303);
header("Location: " . $checkout_session->url);