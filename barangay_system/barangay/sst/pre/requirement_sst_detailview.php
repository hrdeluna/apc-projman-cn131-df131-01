<?php
require 'subclasses/requirement_sst.php';
$sst = new requirement_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;