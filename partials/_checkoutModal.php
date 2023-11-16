<!-- Checkout Modal -->
<?php
include(__DIR__ . '/../mail-generator/send-email.php');
?>

<div class="modal fade" id="checkoutModal" tabindex="-1" role="dialog" aria-labelledby="checkoutModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="checkoutModal">compila form:</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            
            <form id="checkoutForm" action="partials/_manageCart.php" method="post">

            
        


<div class="form-group col-md-10 mb-1" >
    <b><label for="paymentMode">Payment Mode:</label></b>
    <select class="form-control" id="paymentMode" name="paymentMode">
        <option value="3" >consegna a casa e pago in bancomat</option>
        <option value="2" >consegna a casa e pago in contanti</option>
        <option value="1" selected>ritiro al ristorante</option>
        <option value="0">ho gia pagato online</option>
    </select>
</div>

    
<!-- 
<script>
    // 添加点击事件处理程序，用于提交按钮
    document.getElementById("checkoutModalSubmit").addEventListener("click", function() {
        var selectedValue = document.querySelector('input[name="flexRadioDefault"]:checked').value;
        document.querySelector('input[name="paymentMode"]').value = selectedValue;
    });
</script> -->


<div class="form-group col-md-6 mb-1" id="indirizzo">
    <b><label for="address">indirizzo:</label></b>
    <input class="form-control" id="address" name="address" placeholder="via cimarosa 1 " type="text" maxlength="500">
</div>


                
                <div class="form-group col-md-6 mb-1" id="cap">
                    <b><label for="zipcode">CAP:</label></b>
                    <input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="20092 per cinisello"  pattern="[0-9]{5}" maxlength="5">                    
                </div>


                <div class="form-group col-md-10 mb-1" id="indirizzo1" >
                <b><label for="address1">citofono,scala,piano:</label></b>
                    <input class="form-control" id="address1" name="address1" placeholder="citofono:23 scala:D quinto piano" type="text">
                </div>
                <!-- <div class="form-row col-md-6 mb-0"> -->
                    <div class="form-group col-md-6 mb-1">
                        <b><label for="phone">numero di telefono:</label></b>
                        <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon">+39</span>
                        </div>
                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="xxxxxxxxxx" required pattern="[0-9]{9-10}" maxlength="10">
                        </div>
                    </div>
                    
                


<!-- 获取amount输入框 -->
<input type="text" name="amount" id="amountInput" value="<?php echo $spedizione; ?>" readonly>
<span id="basic-addon">€</span>

                <div class="modal-footer">
                    
                <input type="hidden" name="amount" value="<?php echo $spedizione;?>">
                <!--  <input type="hidden" name="product_name" value="<?php echo $_GET["item_name"]?>"> -->

                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Anulla</button>

                    
                    <button type="submit" id="checkoutModalSubmit" name="checkout" class="btn btn-success">invia ordine</button>
                </div>
            </form>


            <!-- <div class="modal-footer">
            <form method="post" action="checkout-CHARGE.php">
                    <button class="btn btn-success" >Pagamento online</button> </form>
                </div> -->
        </div>
        </div>
    </div>
</div>


<script>
// 获取 paymentMode 下拉选择框
var paymentModeSelect = document.getElementById("paymentMode");

// 获取 indirizzo 字段和 amount 输入框
var indirizzoField = document.getElementById("indirizzo");
var indirizzo1Field = document.getElementById("indirizzo1");
var capField = document.getElementById("cap");
var amountInput = document.getElementById("amountInput");

// 获取提交按钮
var checkoutButton = document.getElementById("checkoutModalSubmit");

// 添加 onchange 事件处理程序
paymentModeSelect.addEventListener("change", function () {
    updateFormState();
});

// 更新表单状态的函数
function updateFormState() {
    var selectedPaymentMode = paymentModeSelect.value;
    var shippingCost = parseFloat(amountInput.value);

    // 更新 indirizzo 字段和 amount 输入框
    if (selectedPaymentMode === "1") {
        indirizzoField.style.display = "none";
        indirizzo1Field.style.display = "none";
        capField.style.display = "none";
        amountInput.value = "<?php echo $prezzosconto; ?>";
        
        checkoutButton.disabled = true;
    } else {
        indirizzoField.style.display = "block";
        indirizzo1Field.style.display = "block";
        capField.style.display = "block";
        amountInput.value = "<?php echo $spedizione; ?>";
    }

    // 检查支付模式和运费条件
    if ((selectedPaymentMode === "2" || selectedPaymentMode === "3") && shippingCost < 15) {
        // 运费小于15元，禁用按钮
        checkoutButton.disabled = true;
        // 提示用户
        alert("consegna minima 15€");
    } else {
        // 启用按钮
        checkoutButton.disabled = false;
    }
}

// 初始化时检查选择的值以确定初始表单状态
updateFormState();

</script>



<script>
document.getElementById("checkoutModalSubmit").addEventListener("click", function(event) {
    // 阻止默认的表单提交行为
    /* event.preventDefault();  */

    // 收集表单数据
    var formData = new FormData(document.getElementById("checkoutForm"));

    // 使用 AJAX 将数据发送到 sendmail.php
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "send-email.php", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            // 处理响应，如果需要的话
            console.log(xhr.responseText);

            // 手动提交表单
            document.getElementById("checkoutForm").submit();

            // 可以在这里添加页面跳转或其他处理
            window.location.href = "sent.html";
        }
    };
    xhr.send(formData);
});
</script>