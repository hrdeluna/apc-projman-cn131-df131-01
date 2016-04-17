<?php
require_once 'request_dd.php';
class request_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'REQUEST_REPORT_CUSTOM';
    var $report_title = 'Request: Custom Reporting Tool';
    var $html_subclass = 'request_html';
    var $data_subclass = 'request';
    var $result_page = 'reporter_result_request.php';
    var $cancel_page = 'listview_request.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_request.php';

    function __construct()
    {
        $this->fields        = request_dd::load_dictionary();
        $this->relations     = request_dd::load_relationships();
        $this->subclasses    = request_dd::load_subclass_info();
        $this->table_name    = request_dd::$table_name;
        $this->tables        = request_dd::$table_name;
        $this->readable_name = request_dd::$readable_name;
        $this->get_report_fields();
    }
}
