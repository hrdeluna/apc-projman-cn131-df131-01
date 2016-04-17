<?php
require 'path.php';
init_cobalt();
require 'subclasses/province_doc.php';
$obj_doc = new province_doc;
$obj_doc->auto_doc();