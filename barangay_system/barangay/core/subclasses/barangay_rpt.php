<?php
require_once 'barangay_dd.php';
class barangay_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'BARANGAY_REPORT_CUSTOM';
    var $report_title = 'Barangay: Custom Reporting Tool';
    var $html_subclass = 'barangay_html';
    var $data_subclass = 'barangay';
    var $result_page = 'reporter_result_barangay.php';
    var $cancel_page = 'listview_barangay.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_barangay.php';

    function __construct()
    {
        $this->fields        = barangay_dd::load_dictionary();
        $this->relations     = barangay_dd::load_relationships();
        $this->subclasses    = barangay_dd::load_subclass_info();
        $this->table_name    = barangay_dd::$table_name;
        $this->tables        = barangay_dd::$table_name;
        $this->readable_name = barangay_dd::$readable_name;
        $this->get_report_fields();
    }
}
