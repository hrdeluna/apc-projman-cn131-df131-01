<?php
require_once 'sst_class.php';
require_once 'citizen_dd.php';
class citizen_sst extends sst
{
    function __construct()
    {
        $this->fields        = citizen_dd::load_dictionary();
        $this->relations     = citizen_dd::load_relationships();
        $this->subclasses    = citizen_dd::load_subclass_info();
        $this->table_name    = citizen_dd::$table_name;
        $this->readable_name = citizen_dd::$readable_name;
        parent::__construct();
    }
}
