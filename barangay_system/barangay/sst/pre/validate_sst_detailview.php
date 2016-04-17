<?php
require 'subclasses/validate_sst.php';
$sst = new validate_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;