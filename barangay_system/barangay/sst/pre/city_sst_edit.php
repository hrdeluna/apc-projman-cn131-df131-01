<?php
require 'subclasses/city_sst.php';
$sst = new city_sst;
$sst->auto_test();
$sst_script = $sst->script;