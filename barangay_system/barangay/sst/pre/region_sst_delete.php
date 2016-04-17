<?php
require 'subclasses/region_sst.php';
$sst = new region_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;