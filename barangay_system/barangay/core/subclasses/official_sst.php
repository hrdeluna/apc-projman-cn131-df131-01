<?php
require_once 'sst_class.php';
require_once 'official_dd.php';
class official_sst extends sst
{
    function __construct()
    {
        $this->fields        = official_dd::load_dictionary();
        $this->relations     = official_dd::load_relationships();
        $this->subclasses    = official_dd::load_subclass_info();
        $this->table_name    = official_dd::$table_name;
        $this->readable_name = official_dd::$readable_name;
        parent::__construct();
    }
}
