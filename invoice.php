

<?php
use Phppot\Order;

require_once __DIR__ . '/Model/Order.php';

// 创建 Order 类的实例
$orderModel = new Order();

// 获取生成 PDF 所需的值
$result = $orderModel->getPdfGenerateValues($_GET["id"]);

// 获取订单项信息
$orderItemResult = $orderModel->getOrderItems($result[0]["orderId"]);

// 如果结果非空，生成 PDF
if (!empty($result)) {
    // 引入 PDFService 类
    require_once __DIR__ . "/lib/PDFService.php";
    
    // 创建 PDFService 类的实例
    $pdfService = new PDFService();
    
    // 调用 generatePDF 方法生成 PDF
    $pdfService->generatePDF($result, $orderItemResult);
}
