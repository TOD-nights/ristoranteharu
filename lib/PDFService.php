<?php
use Phppot\Config;

ini_set('display_errors', 'On');
error_reporting(E_ALL);

require_once __DIR__ . '/../lib/Config.php';
$config = new Config();

class PDFService {

    function generatePDF($result, $orderItemResult) {
        require_once __DIR__ . '/../vendor/TCPDF-main/tcpdf.php';
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
        $pdf->SetHeaderData('', PDF_HEADER_LOGO_WIDTH, '', '', array(
            0,
            0,
            0
        ), array(
            255,
            255,
            255
        ));
        $pdf->SetTitle('Invoice - ' . $result[0]["orderId"]);
        $pdf->SetMargins(20, 10, 20, true);
        if (@file_exists(dirname(__FILE__) . '/lang/ita.php')) {
            require_once (dirname(__FILE__) . '/lang/ita.php');
            $pdf->setLanguageArray($l);
        }
        $pdf->SetFont('helvetica', '', 11);
        $pdf->AddPage();
        $orderedDate = date('d F Y', strtotime($result[0]["orderDate"]));

        require_once __DIR__ . '/../Template/purchase-invoice-template.php';
        $html = getHTMLPurchaseDataToPDF($result, $orderItemResult, $orderedDate);
        $filename = "Invoice-" . $result[0]["orderId"];
        $pdf->writeHTML($html, true, false, true, false, '');
        ob_end_clean();
        $pdf->Output($filename . '.pdf', 'I');
    }
}

?>