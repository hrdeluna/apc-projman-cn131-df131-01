<?php
require 'components/get_listview_referrer.php';

require 'subclasses/request.php';
$dbh_request = new request;
$dbh_request->set_where("request_id='" . quote_smart($request_id) . "'");
if($result = $dbh_request->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$date_filed);
    if(count($data) == 3)
    {
        $date_filed_year = $data[0];
        $date_filed_month = $data[1];
        $date_filed_day = $data[2];
    }
    $data = explode('-',$date_served);
    if(count($data) == 3)
    {
        $date_served_year = $data[0];
        $date_served_month = $data[1];
        $date_served_day = $data[2];
    }
}

require_once 'subclasses/request_has_requirement.php';
$dbh_request = new request_has_requirement;
$dbh_request->set_fields('date_submitted, requirement_document, status');
$dbh_request->set_where("request_id='" . quote_smart($request_id) . "'");
if($result = $dbh_request->make_query()->result)
{
    $num_request_has_requirement = $dbh_request->num_rows;
    for($a=0; $a<$num_request_has_requirement; $a++)
    {
        $data = $result->fetch_row();
        $data_temp_cf_date = explode('-',$data[0]);
        $cf_request_has_requirement_date_submitted_year[$a] = $data_temp_cf_date[0];
        $cf_request_has_requirement_date_submitted_month[$a] = $data_temp_cf_date[1];
        $cf_request_has_requirement_date_submitted_day[$a] = $data_temp_cf_date[2];
        $cf_request_has_requirement_requirement_document[$a] = $data[1];
        $cf_request_has_requirement_status[$a] = $data[2];
    }
}

