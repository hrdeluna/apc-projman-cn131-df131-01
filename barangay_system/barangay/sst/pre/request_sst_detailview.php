<?php
require 'subclasses/request_sst.php';
$sst = new request_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;