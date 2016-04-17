<?php
require 'path.php';
init_cobalt();
require 'subclasses/service_doc.php';
$obj_doc = new service_doc;
$obj_doc->auto_doc();