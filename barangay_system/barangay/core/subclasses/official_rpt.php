<?php
require_once 'official_dd.php';
class official_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'OFFICIAL_REPORT_CUSTOM';
    var $report_title = 'Official: Custom Reporting Tool';
    var $html_subclass = 'official_html';
    var $data_subclass = 'official';
    var $result_page = 'reporter_result_official.php';
    var $cancel_page = 'listview_official.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_official.php';

    function __construct()
    {
        $this->fields        = official_dd::load_dictionary();
        $this->relations     = official_dd::load_relationships();
        $this->subclasses    = official_dd::load_subclass_info();
        $this->table_name    = official_dd::$table_name;
        $this->tables        = official_dd::$table_name;
        $this->readable_name = official_dd::$readable_name;
        $this->get_report_fields();
    }
}
