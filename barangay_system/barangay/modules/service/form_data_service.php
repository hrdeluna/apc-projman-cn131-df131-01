<?php
require 'components/get_listview_referrer.php';

require 'subclasses/service.php';
$dbh_service = new service;
$dbh_service->set_where("service_id='" . quote_smart($service_id) . "'");
if($result = $dbh_service->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_offered);
    if(count($data) == 3)
    {
        $date_offered_year = $data[0];
        $date_offered_month = $data[1];
        $date_offered_day = $data[2];
    }
}

