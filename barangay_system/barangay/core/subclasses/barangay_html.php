<?php
require_once 'barangay_dd.php';
class barangay_html extends html
{
    function __construct()
    {
        $this->fields        = barangay_dd::load_dictionary();
        $this->relations     = barangay_dd::load_relationships();
        $this->subclasses    = barangay_dd::load_subclass_info();
        $this->table_name    = barangay_dd::$table_name;
        $this->readable_name = barangay_dd::$readable_name;
    }
}
