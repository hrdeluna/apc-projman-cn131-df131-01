<?php
	require 'path.php';
	init_cobalt();
	
	$page_title='Barangay System';
	$stylesheet_link='style';
	
	require 'header1.php';

require 'components/get_listview_referrer.php';

$username = $_SESSION['user'];
require_once 'subclasses/citizen.php';
$dbh_citizen = new citizen;
$citizen = $dbh_citizen->execute_query("SELECT citizen_id FROM citizen WHERE username='$username'")->result;
extract($citizen->fetch_assoc());

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/request.php';
    $dbh_request = new request;

    $object_name = 'dbh_request';
    require 'components/create_form_data.php';
    
    extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("documents.php");
    }


    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');
	$dbh_request->fields['date_served']['required'] = FALSE;
	$dbh_request->fields['status']['required'] = FALSE;
        $message .= $dbh_request->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_request->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_request->add($arr_form_data);
            

            redirect("documents.php");
        }
    }
}
require 'subclasses/request_html.php';
$html = new request_html;
$html->draw_header('Add Request', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
$html->fields['date_served']['control_type'] = 'hidden';

if ($citizen_id != '') {
	$html->fields['citizen_id']['extra'] = 'disabled=disabled';
	$html->draw_hidden('citizen_id');
}
	


$html->draw_controls('add');

$html->draw_footer();
?>
<?php
	require 'footer.php';
?>