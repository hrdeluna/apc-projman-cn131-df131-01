<?php
require 'path.php';
init_cobalt();
require 'subclasses/notification_doc.php';
$obj_doc = new notification_doc;
$obj_doc->auto_doc();