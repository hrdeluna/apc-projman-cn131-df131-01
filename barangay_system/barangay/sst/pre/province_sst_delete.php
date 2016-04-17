<?php
require 'subclasses/province_sst.php';
$sst = new province_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;