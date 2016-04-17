<?php
require_once 'service_dd.php';
class service_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SERVICE_REPORT_CUSTOM';
    var $report_title = 'Service: Custom Reporting Tool';
    var $html_subclass = 'service_html';
    var $data_subclass = 'service';
    var $result_page = 'reporter_result_service.php';
    var $cancel_page = 'listview_service.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_service.php';

    function __construct()
    {
        $this->fields        = service_dd::load_dictionary();
        $this->relations     = service_dd::load_relationships();
        $this->subclasses    = service_dd::load_subclass_info();
        $this->table_name    = service_dd::$table_name;
        $this->tables        = service_dd::$table_name;
        $this->readable_name = service_dd::$readable_name;
        $this->get_report_fields();
    }
}
