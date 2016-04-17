<?php
require_once 'official_dd.php';
class official_html extends html
{
    function __construct()
    {
        $this->fields        = official_dd::load_dictionary();
        $this->relations     = official_dd::load_relationships();
        $this->subclasses    = official_dd::load_subclass_info();
        $this->table_name    = official_dd::$table_name;
        $this->readable_name = official_dd::$readable_name;
    }
}
