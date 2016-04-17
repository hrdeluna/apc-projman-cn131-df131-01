<?php
require 'subclasses/province_sst.php';
$sst = new province_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;