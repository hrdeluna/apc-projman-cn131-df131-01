<?php
require_once 'sst_class.php';
require_once 'region_dd.php';
class region_sst extends sst
{
    function __construct()
    {
        $this->fields        = region_dd::load_dictionary();
        $this->relations     = region_dd::load_relationships();
        $this->subclasses    = region_dd::load_subclass_info();
        $this->table_name    = region_dd::$table_name;
        $this->readable_name = region_dd::$readable_name;
        parent::__construct();
    }
}
