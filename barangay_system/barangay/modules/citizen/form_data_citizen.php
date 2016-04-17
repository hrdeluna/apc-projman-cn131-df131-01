<?php
require 'components/get_listview_referrer.php';

require 'subclasses/citizen.php';
$dbh_citizen = new citizen;
$dbh_citizen->set_where("citizen_id='" . quote_smart($citizen_id) . "'");
if($result = $dbh_citizen->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$birth_date);
    if(count($data) == 3)
    {
        $birth_date_year = $data[0];
        $birth_date_month = $data[1];
        $birth_date_day = $data[2];
    }
    $data = explode('-',$date_registered);
    if(count($data) == 3)
    {
        $date_registered_year = $data[0];
        $date_registered_month = $data[1];
        $date_registered_day = $data[2];
    }
}

require_once 'subclasses/validate.php';
$dbh_citizen = new validate;
$dbh_citizen->set_fields('proof_of_id, proof_of_address, status');
$dbh_citizen->set_where("citizen_id='" . quote_smart($citizen_id) . "'");
if($result = $dbh_citizen->make_query()->result)
{
    $num_validate = $dbh_citizen->num_rows;
    for($a=0; $a<$num_validate; $a++)
    {
        $data = $result->fetch_row();
        $cf_validate_proof_of_id[$a] = $data[0];
        $cf_validate_proof_of_address[$a] = $data[1];
        $cf_validate_status[$a] = $data[2];
    }
}

