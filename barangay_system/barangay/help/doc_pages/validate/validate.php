<?php
require 'path.php';
init_cobalt();
require 'subclasses/validate_doc.php';
$obj_doc = new validate_doc;
$obj_doc->auto_doc();