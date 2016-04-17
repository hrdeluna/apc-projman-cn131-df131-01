<?php
require 'subclasses/request_sst.php';
$sst = new request_sst;
$sst->auto_test();
$sst_script = $sst->script;