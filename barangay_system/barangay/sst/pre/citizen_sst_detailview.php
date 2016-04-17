<?php
require 'subclasses/citizen_sst.php';
$sst = new citizen_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;