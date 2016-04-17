<?php
require 'subclasses/notification_sst.php';
$sst = new notification_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;