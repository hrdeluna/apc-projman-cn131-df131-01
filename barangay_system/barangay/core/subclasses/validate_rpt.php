<?php
require_once 'validate_dd.php';
class validate_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'VALIDATE_REPORT_CUSTOM';
    var $report_title = 'Validate: Custom Reporting Tool';
    var $html_subclass = 'validate_html';
    var $data_subclass = 'validate';
    var $result_page = 'reporter_result_validate.php';
    var $cancel_page = 'listview_validate.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_validate.php';

    function __construct()
    {
        $this->fields        = validate_dd::load_dictionary();
        $this->relations     = validate_dd::load_relationships();
        $this->subclasses    = validate_dd::load_subclass_info();
        $this->table_name    = validate_dd::$table_name;
        $this->tables        = validate_dd::$table_name;
        $this->readable_name = validate_dd::$readable_name;
        $this->get_report_fields();
    }
}
