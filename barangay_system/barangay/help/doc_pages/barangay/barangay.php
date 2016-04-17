<?php
require 'path.php';
init_cobalt();
require 'subclasses/barangay_doc.php';
$obj_doc = new barangay_doc;
$obj_doc->auto_doc();