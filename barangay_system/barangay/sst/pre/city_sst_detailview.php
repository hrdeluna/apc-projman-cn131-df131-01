<?php
require 'subclasses/city_sst.php';
$sst = new city_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;