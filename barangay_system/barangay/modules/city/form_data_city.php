<?php
require 'components/get_listview_referrer.php';

require 'subclasses/city.php';
$dbh_city = new city;
$dbh_city->set_where("city_id='" . quote_smart($city_id) . "'");
if($result = $dbh_city->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

