<?php
require 'subclasses/official_sst.php';
$sst = new official_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;