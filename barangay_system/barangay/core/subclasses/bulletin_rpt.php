<?php
require_once 'bulletin_dd.php';
class bulletin_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'BULLETIN_REPORT_CUSTOM';
    var $report_title = 'Bulletin: Custom Reporting Tool';
    var $html_subclass = 'bulletin_html';
    var $data_subclass = 'bulletin';
    var $result_page = 'reporter_result_bulletin.php';
    var $cancel_page = 'listview_bulletin.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_bulletin.php';

    function __construct()
    {
        $this->fields        = bulletin_dd::load_dictionary();
        $this->relations     = bulletin_dd::load_relationships();
        $this->subclasses    = bulletin_dd::load_subclass_info();
        $this->table_name    = bulletin_dd::$table_name;
        $this->tables        = bulletin_dd::$table_name;
        $this->readable_name = bulletin_dd::$readable_name;
        $this->get_report_fields();
    }
}
