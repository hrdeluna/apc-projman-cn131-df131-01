<?php
require 'path.php';
init_cobalt();
require 'subclasses/request_has_requirement_doc.php';
$obj_doc = new request_has_requirement_doc;
$obj_doc->auto_doc();