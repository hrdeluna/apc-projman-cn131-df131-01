<?php
require_once 'bulletin_dd.php';
class bulletin_html extends html
{
    function __construct()
    {
        $this->fields        = bulletin_dd::load_dictionary();
        $this->relations     = bulletin_dd::load_relationships();
        $this->subclasses    = bulletin_dd::load_subclass_info();
        $this->table_name    = bulletin_dd::$table_name;
        $this->readable_name = bulletin_dd::$readable_name;
    }
}
