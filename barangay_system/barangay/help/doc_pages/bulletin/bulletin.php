<?php
require 'path.php';
init_cobalt();
require 'subclasses/bulletin_doc.php';
$obj_doc = new bulletin_doc;
$obj_doc->auto_doc();