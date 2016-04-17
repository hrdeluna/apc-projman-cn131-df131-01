<?php
require 'components/get_listview_referrer.php';

require 'subclasses/official.php';
$dbh_official = new official;
$dbh_official->set_where("official_id='" . quote_smart($official_id) . "'");
if($result = $dbh_official->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$term_period_from);
    if(count($data) == 3)
    {
        $term_period_from_year = $data[0];
        $term_period_from_month = $data[1];
        $term_period_from_day = $data[2];
    }
    $data = explode('-',$term_period_to);
    if(count($data) == 3)
    {
        $term_period_to_year = $data[0];
        $term_period_to_month = $data[1];
        $term_period_to_day = $data[2];
    }
}

