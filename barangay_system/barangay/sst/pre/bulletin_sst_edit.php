<?php
require 'subclasses/bulletin_sst.php';
$sst = new bulletin_sst;
$sst->auto_test();
$sst_script = $sst->script;