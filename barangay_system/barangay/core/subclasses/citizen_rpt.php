<?php
require_once 'citizen_dd.php';
class citizen_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'CITIZEN_REPORT_CUSTOM';
    var $report_title = 'Citizen: Custom Reporting Tool';
    var $html_subclass = 'citizen_html';
    var $data_subclass = 'citizen';
    var $result_page = 'reporter_result_citizen.php';
    var $cancel_page = 'listview_citizen.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_citizen.php';

    function __construct()
    {
        $this->fields        = citizen_dd::load_dictionary();
        $this->relations     = citizen_dd::load_relationships();
        $this->subclasses    = citizen_dd::load_subclass_info();
        $this->table_name    = citizen_dd::$table_name;
        $this->tables        = citizen_dd::$table_name;
        $this->readable_name = citizen_dd::$readable_name;
        $this->get_report_fields();
    }
}
