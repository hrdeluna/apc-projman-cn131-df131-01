<?php
require_once 'region_dd.php';
class region_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'REGION_REPORT_CUSTOM';
    var $report_title = 'Region: Custom Reporting Tool';
    var $html_subclass = 'region_html';
    var $data_subclass = 'region';
    var $result_page = 'reporter_result_region.php';
    var $cancel_page = 'listview_region.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_region.php';

    function __construct()
    {
        $this->fields        = region_dd::load_dictionary();
        $this->relations     = region_dd::load_relationships();
        $this->subclasses    = region_dd::load_subclass_info();
        $this->table_name    = region_dd::$table_name;
        $this->tables        = region_dd::$table_name;
        $this->readable_name = region_dd::$readable_name;
        $this->get_report_fields();
    }
}
