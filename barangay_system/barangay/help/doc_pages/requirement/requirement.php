<?php
require 'path.php';
init_cobalt();
require 'subclasses/requirement_doc.php';
$obj_doc = new requirement_doc;
$obj_doc->auto_doc();