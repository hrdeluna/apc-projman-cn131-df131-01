<?php
require 'path.php';
init_cobalt();
require 'subclasses/region_doc.php';
$obj_doc = new region_doc;
$obj_doc->auto_doc();