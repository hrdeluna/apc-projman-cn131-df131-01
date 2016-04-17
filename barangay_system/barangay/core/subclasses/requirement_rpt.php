<?php
require_once 'requirement_dd.php';
class requirement_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'REQUIREMENT_REPORT_CUSTOM';
    var $report_title = 'Requirement: Custom Reporting Tool';
    var $html_subclass = 'requirement_html';
    var $data_subclass = 'requirement';
    var $result_page = 'reporter_result_requirement.php';
    var $cancel_page = 'listview_requirement.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_requirement.php';

    function __construct()
    {
        $this->fields        = requirement_dd::load_dictionary();
        $this->relations     = requirement_dd::load_relationships();
        $this->subclasses    = requirement_dd::load_subclass_info();
        $this->table_name    = requirement_dd::$table_name;
        $this->tables        = requirement_dd::$table_name;
        $this->readable_name = requirement_dd::$readable_name;
        $this->get_report_fields();
    }
}
