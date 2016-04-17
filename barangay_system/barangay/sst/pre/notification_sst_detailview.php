<?php
require 'subclasses/notification_sst.php';
$sst = new notification_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;