<?php
require 'subclasses/barangay_sst.php';
$sst = new barangay_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;