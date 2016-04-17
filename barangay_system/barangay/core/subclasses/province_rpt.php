<?php
require_once 'province_dd.php';
class province_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'PROVINCE_REPORT_CUSTOM';
    var $report_title = 'Province: Custom Reporting Tool';
    var $html_subclass = 'province_html';
    var $data_subclass = 'province';
    var $result_page = 'reporter_result_province.php';
    var $cancel_page = 'listview_province.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_province.php';

    function __construct()
    {
        $this->fields        = province_dd::load_dictionary();
        $this->relations     = province_dd::load_relationships();
        $this->subclasses    = province_dd::load_subclass_info();
        $this->table_name    = province_dd::$table_name;
        $this->tables        = province_dd::$table_name;
        $this->readable_name = province_dd::$readable_name;
        $this->get_report_fields();
    }
}
