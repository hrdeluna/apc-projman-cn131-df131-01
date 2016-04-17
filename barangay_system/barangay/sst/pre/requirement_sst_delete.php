<?php
require 'subclasses/requirement_sst.php';
$sst = new requirement_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;