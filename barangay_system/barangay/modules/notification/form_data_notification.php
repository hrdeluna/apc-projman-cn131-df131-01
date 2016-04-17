<?php
require 'components/get_listview_referrer.php';

require 'subclasses/notification.php';
$dbh_notification = new notification;
$dbh_notification->set_where("notification_id='" . quote_smart($notification_id) . "'");
if($result = $dbh_notification->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

