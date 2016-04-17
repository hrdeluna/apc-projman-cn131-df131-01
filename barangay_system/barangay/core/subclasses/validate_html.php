<?php
require_once 'validate_dd.php';
class validate_html extends html
{
    function __construct()
    {
        $this->fields        = validate_dd::load_dictionary();
        $this->relations     = validate_dd::load_relationships();
        $this->subclasses    = validate_dd::load_subclass_info();
        $this->table_name    = validate_dd::$table_name;
        $this->readable_name = validate_dd::$readable_name;
    }
}
