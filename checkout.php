<?php
  if(isset($_GET)){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Integartion (Stripe)</title>
    <link rel="stylesheet" href="./css/_style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<button type="button" onclick="goback()" class="back">Go Back</button> 
<div class="row">
    <div class="col-md-6">
        <div class="form-container">
            <form autocomplete="off" action="checkout-charge.php" method="POST">
                <div>
                    <input type="text" name="c_name" required/>
                    <label>Customer Name</label>
                </div>
                <div>
                    <input type="text" name="address" required/>
                    <label>Address</label>
                </div>
                <div>
                    <input type="number" id="ph" name="phone" pattern="\d{10}" maxlength="10" required/>
                    <label>Contact number</label>
                </div>
                <div>
                    <input type="text"  name="product_name" value="<?php echo $_GET["item_name"]?>" disabled required/>
                    <label>Product name</label>
                </div>
                <div>
                    <input type="text"  name="price" value="<?php echo $_GET["price"]?>" disabled required/>
                    <label>Price</label>
                </div>
               
                    <input type="hidden" name="amount" value="<?php echo $_GET["price"]?>">
                    <input type="hidden" name="product_name" value="<?php echo $_GET["item_name"]?>">
                
                <script
                src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                data-key="pk_test_51O9cicDTdTaOGMokgrXBJsSnZ1VkHbfBE9cqzIEC0Ya5CNJlV9THe5hDhG3bHEH5yFUnZloZPQwzymHZDtsoUtq400VqJjs3SU"
                data-amount=<?php echo str_replace(",","",$_GET["price"]) * 100?>
                data-name="<?php echo $_GET["item_name"]?>"
                data-description="<?php echo $_GET["item_name"]?>"
                data-image="<?php echo $_GET["image"]?>"
                data-currency="inr"
                data-locale="auto">
                </script>
            </form>
        </div>
    </div>
    <div class="col-md-6">
        <div class="checkout-container">
            <h4>Product Name&nbsp;:&nbsp;<?php echo $_GET["item_name"]?></h4>
            <img src="<?php echo $_GET["image"]?>"/>
            <span>Price &nbsp;:&nbsp;<?php  echo $_GET["price"]?></span>
        </div>
    </div>
</div> 

<?php
  }
?>
<script>
    function goback(){
        window.history.go(-1);
    }

    $('#ph').on('keypress',function(){
         var text = $(this).val().length;
         if(text > 9){
              return false;
         }else{
            $('#ph').text($(this).val());
         }
         
    });
</script>
</body>
</html>