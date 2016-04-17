<?php
require 'path.php';
init_cobalt();
require 'subclasses/citizen_doc.php';
$obj_doc = new citizen_doc;
$obj_doc->auto_doc();