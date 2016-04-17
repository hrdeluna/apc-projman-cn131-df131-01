<?php
require 'subclasses/region_sst.php';
$sst = new region_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;