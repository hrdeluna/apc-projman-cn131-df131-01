<?php
require_once 'notification_dd.php';
class notification_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'NOTIFICATION_REPORT_CUSTOM';
    var $report_title = 'Notification: Custom Reporting Tool';
    var $html_subclass = 'notification_html';
    var $data_subclass = 'notification';
    var $result_page = 'reporter_result_notification.php';
    var $cancel_page = 'listview_notification.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_notification.php';

    function __construct()
    {
        $this->fields        = notification_dd::load_dictionary();
        $this->relations     = notification_dd::load_relationships();
        $this->subclasses    = notification_dd::load_subclass_info();
        $this->table_name    = notification_dd::$table_name;
        $this->tables        = notification_dd::$table_name;
        $this->readable_name = notification_dd::$readable_name;
        $this->get_report_fields();
    }
}
