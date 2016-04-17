<?php
require 'path.php';
init_cobalt();
require 'subclasses/city_doc.php';
$obj_doc = new city_doc;
$obj_doc->auto_doc();