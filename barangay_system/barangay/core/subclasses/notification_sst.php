<?php
require_once 'sst_class.php';
require_once 'notification_dd.php';
class notification_sst extends sst
{
    function __construct()
    {
        $this->fields        = notification_dd::load_dictionary();
        $this->relations     = notification_dd::load_relationships();
        $this->subclasses    = notification_dd::load_subclass_info();
        $this->table_name    = notification_dd::$table_name;
        $this->readable_name = notification_dd::$readable_name;
        parent::__construct();
    }
}
