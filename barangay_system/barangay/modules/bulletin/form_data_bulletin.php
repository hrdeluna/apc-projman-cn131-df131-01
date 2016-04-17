<?php
require 'components/get_listview_referrer.php';

require 'subclasses/bulletin.php';
$dbh_bulletin = new bulletin;
$dbh_bulletin->set_where("bulletin_id='" . quote_smart($bulletin_id) . "'");
if($result = $dbh_bulletin->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$bulletin_date);
    if(count($data) == 3)
    {
        $bulletin_date_year = $data[0];
        $bulletin_date_month = $data[1];
        $bulletin_date_day = $data[2];
    }
}

