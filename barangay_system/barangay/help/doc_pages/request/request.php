<?php
require 'path.php';
init_cobalt();
require 'subclasses/request_doc.php';
$obj_doc = new request_doc;
$obj_doc->auto_doc();