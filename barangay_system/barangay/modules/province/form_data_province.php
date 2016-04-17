<?php
require 'components/get_listview_referrer.php';

require 'subclasses/province.php';
$dbh_province = new province;
$dbh_province->set_where("province_id='" . quote_smart($province_id) . "'");
if($result = $dbh_province->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

