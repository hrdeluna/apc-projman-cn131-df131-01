<?php
require 'components/get_listview_referrer.php';

require 'subclasses/requirement.php';
$dbh_requirement = new requirement;
$dbh_requirement->set_where("requirement_id='" . quote_smart($requirement_id) . "'");
if($result = $dbh_requirement->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

