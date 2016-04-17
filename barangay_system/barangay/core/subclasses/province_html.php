<?php
require_once 'province_dd.php';
class province_html extends html
{
    function __construct()
    {
        $this->fields        = province_dd::load_dictionary();
        $this->relations     = province_dd::load_relationships();
        $this->subclasses    = province_dd::load_subclass_info();
        $this->table_name    = province_dd::$table_name;
        $this->readable_name = province_dd::$readable_name;
    }
}
