<?php
namespace Phppot;

use Phppot\DataSource;

class Order
{

    private $ds;

    function __construct()
    {
        

        require_once(__DIR__ . '/../lib/DataSource.php');

        $this->ds = new DataSource();
    }

    function getAllOrders()
    {
        $query = "SELECT * FROM orders";
        $result = $this->ds->select($query);
        return $result;
    }

    function getPdfGenerateValues($id)
    {
        $query = "SELECT * FROM orders WHERE orderId='" . $id . "'";
        $result = $this->ds->select($query);
        return $result;
    }

    function getOrderItems($orderId)
    {
        $sql = "SELECT orderitems.*,food.foodName FROM orderitems
                JOIN food ON orderitems.foodId=food.foodId WHERE orderitems.orderId='" . $orderId . "'";
        $query = "SELECT * FROM orderitems WHERE orderId='" . $orderId . "'";
        $result = $this->ds->select($query);
        return $result;
    }

    function getProduct($foodId)
    {
        $query = "SELECT * FROM food WHERE foodId='" . $foodId . "'";
        $result = $this->ds->select($query);
        return $result;
    }
}
