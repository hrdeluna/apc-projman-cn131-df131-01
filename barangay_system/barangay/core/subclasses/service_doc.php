<?php
require_once 'documentation_class.php';
require_once 'service_dd.php';
class service_doc extends documentation
{
    function __construct()
    {
        $this->fields        = service_dd::load_dictionary();
        $this->relations     = service_dd::load_relationships();
        $this->subclasses    = service_dd::load_subclass_info();
        $this->table_name    = service_dd::$table_name;
        $this->readable_name = service_dd::$readable_name;
        parent::__construct();
    }
}
