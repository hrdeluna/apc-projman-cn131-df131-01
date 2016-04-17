<?php
require 'components/get_listview_referrer.php';

require 'subclasses/barangay.php';
$dbh_barangay = new barangay;
$dbh_barangay->set_where("barangay_id='" . quote_smart($barangay_id) . "'");
if($result = $dbh_barangay->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

