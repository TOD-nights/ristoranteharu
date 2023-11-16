<?php
use Phppot\Order;
require_once __DIR__ . '/../Model/Order.php';
function getHTMLPurchaseDataToPDF($result, $orderItemResult, $orderedDate)
{
ob_start();
?>
<html>
<head>Ricevuta id ordine- <?php  echo $result[0]["orderId"]; ?>
</head>
<body>
<div style="text-align:right;">
        <b>Sender:</b> Ristorante Haru
    </div>
    <div style="text-align: left;border-top:1px solid #000;">
        <div style="font-size: 24px;color: #666;">INVOICE</div>
    </div>
<table style="line-height: 1.5;">
    <tr><td><b>Invoice:</b> #<?php echo $result[0]["orderId"]; ?>
        </td>
        <td style="text-align:right;"><b>Receiver:</b></td>
    </tr>
    <tr>
        <td><b>Date:</b> <?php echo $orderedDate; ?></td>
        <td style="text-align:right;"><?php echo $result[0]["phoneNo"]; ?></td>
    </tr>
    
    <tr>
        
        <td style="text-align:right;"><b>userId:</b><?php echo $result[0]["userId"]; ?></td>
    </tr>
<tr>
<td></td>
<td style="text-align:right;"><?php echo $result[0]["address"]; ?></td>
</tr>
</table>

<div></div>
    <div style="border-bottom:1px solid #000;">
        <table style="line-height: 2;">
            <tr style="font-weight: bold;border:1px solid #cccccc;background-color:#f2f2f2;">
                <td style="border:1px solid #cccccc;width:200px;">Item Description</td>
                <!-- <td style = "text-align:right;border:1px solid #cccccc;width:85px">Price</td> -->
                <td style = "text-align:right;border:1px solid #cccccc;width:75px;">Quantity</td>
                <td style = "text-align:right;border:1px solid #cccccc;">Subtotal</td>
            </tr>


<?php
$total = 0;
$productModel = new Order();

foreach ($orderItemResult as $k => $orderItem) {
    // Get product information for the current order item
    $productResult = $productModel->getProduct($orderItem["foodId"]);

    // Check if product information is available
    if ($productResult && is_array($productResult) && count($productResult) > 0) {
        // Calculate price for the current order item
        $price = $productResult[0]["foodPrice"] * $orderItem["itemQuantity"];

        // Update the total
        $total += $price;

        // Display the row in the table
        echo '<tr>';
        echo '<td style="border:1px solid #cccccc;">' . $productResult[0]["foodName"] . '</td>';
      /*   echo '<td style="text-align:right; border:1px solid #cccccc;">' . number_format($productResult[0]["foodPrice"], 2) . '</td>'; */
        echo '<td style="text-align:right; border:1px solid #cccccc;">' . $orderItem["itemQuantity"] . '</td>';
        echo '<td style="text-align:right; border:1px solid #cccccc;">' . number_format($price, 2) . '</td>';
        echo '</tr>';
    } else {
        // Handle the case where product information is not available
        echo '<tr>';
        echo '<td colspan="4">Product information not found</td>';
        echo '</tr>';
    }
}


?>


<tr style = "font-weight: bold;">
    <td></td><td></td>
    <td style = "text-align:right;">Total (€)</td>
    <td style = "text-align:right;"><?php echo number_format($total, 2); ?></td>
</tr>
</table></div>
<p><u>Kindly make your payment to</u>:<br/>
<br/>
A/C: <br/>
BIC:<br/>
</p>
<p><i>Note email t</i></p>
</body>
</html>

<?php
return ob_get_clean();
}
?>