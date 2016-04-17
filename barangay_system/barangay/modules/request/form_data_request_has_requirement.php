<?php
require 'components/get_listview_referrer.php';

require 'subclasses/request_has_requirement.php';
$dbh_request_has_requirement = new request_has_requirement;
$dbh_request_has_requirement->set_where("request_has_requirement_id='" . quote_smart($request_has_requirement_id) . "'");
if($result = $dbh_request_has_requirement->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_submitted);
    if(count($data) == 3)
    {
        $date_submitted_year = $data[0];
        $date_submitted_month = $data[1];
        $date_submitted_day = $data[2];
    }
}

