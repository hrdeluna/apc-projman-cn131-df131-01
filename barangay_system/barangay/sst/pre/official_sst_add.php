<?php
require 'subclasses/official_sst.php';
$sst = new official_sst;
$sst->auto_test();
$sst_script = $sst->script;