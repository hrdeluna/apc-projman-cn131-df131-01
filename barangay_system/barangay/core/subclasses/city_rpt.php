<?php
require_once 'city_dd.php';
class city_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CITY_REPORT_CUSTOM';
    var $report_title = 'City: Custom Reporting Tool';
    var $html_subclass = 'city_html';
    var $data_subclass = 'city';
    var $result_page = 'reporter_result_city.php';
    var $cancel_page = 'listview_city.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_city.php';

    function __construct()
    {
        $this->fields        = city_dd::load_dictionary();
        $this->relations     = city_dd::load_relationships();
        $this->subclasses    = city_dd::load_subclass_info();
        $this->table_name    = city_dd::$table_name;
        $this->tables        = city_dd::$table_name;
        $this->readable_name = city_dd::$readable_name;
        $this->get_report_fields();
    }
}
