<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Delete bulletin');

if(isset($_GET['bulletin_id']))
{
    $bulletin_id = urldecode($_GET['bulletin_id']);
    require_once 'form_data_bulletin.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_bulletin.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/bulletin.php';
        $dbh_bulletin = new bulletin;

        $object_name = 'dbh_bulletin';
        require 'components/create_form_data.php';

        $dbh_bulletin->delete($arr_form_data);


        redirect("listview_bulletin.php?$query_string");
    }
}
require 'subclasses/bulletin_html.php';
$html = new bulletin_html;
$html->draw_header('Delete Bulletin', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('bulletin_id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();