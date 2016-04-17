<?php
require 'subclasses/validate_sst.php';
$sst = new validate_sst;
$sst->auto_test();
$sst_script = $sst->script;