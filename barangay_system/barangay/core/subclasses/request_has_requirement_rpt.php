<?php
require_once 'request_has_requirement_dd.php';
class request_has_requirement_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'REQUEST_HAS_REQUIREMENT_REPORT_CUSTOM';
    var $report_title = 'Request Has Requirement: Custom Reporting Tool';
    var $html_subclass = 'request_has_requirement_html';
    var $data_subclass = 'request_has_requirement';
    var $result_page = 'reporter_result_request_has_requirement.php';
    var $cancel_page = 'listview_request_has_requirement.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_request_has_requirement.php';

    function __construct()
    {
        $this->fields        = request_has_requirement_dd::load_dictionary();
        $this->relations     = request_has_requirement_dd::load_relationships();
        $this->subclasses    = request_has_requirement_dd::load_subclass_info();
        $this->table_name    = request_has_requirement_dd::$table_name;
        $this->tables        = request_has_requirement_dd::$table_name;
        $this->readable_name = request_has_requirement_dd::$readable_name;
        $this->get_report_fields();
    }
}
