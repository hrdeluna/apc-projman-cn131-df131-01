<?php
require 'path.php';
init_cobalt();
require 'subclasses/official_doc.php';
$obj_doc = new official_doc;
$obj_doc->auto_doc();