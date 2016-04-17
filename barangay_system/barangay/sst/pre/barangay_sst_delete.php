<?php
require 'subclasses/barangay_sst.php';
$sst = new barangay_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;