<?php
require 'components/get_listview_referrer.php';

require 'subclasses/region.php';
$dbh_region = new region;
$dbh_region->set_where("region_id='" . quote_smart($region_id) . "'");
if($result = $dbh_region->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

