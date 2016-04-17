<?php
require 'subclasses/service_sst.php';
$sst = new service_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;