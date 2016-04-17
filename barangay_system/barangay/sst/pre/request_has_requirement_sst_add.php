<?php
require 'subclasses/request_has_requirement_sst.php';
$sst = new request_has_requirement_sst;
$sst->auto_test();
$sst_script = $sst->script;