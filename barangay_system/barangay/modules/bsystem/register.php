<?php

	
require 'path.php';
init_cobalt();

$page_title='Barangay System';
    $stylesheet_link='style';

		require 'header.php';

      $data_con = new data_abstraction;
$data_con->set_fields('skin_name, header, footer, master_css, colors_css, fonts_css, override_css, icon_set');
$data_con->set_table('system_skins');
$data_con->set_where("skin_id=1");
$data_con->exec_fetch('single');
if($data_con->num_rows==1)
{
    extract($data_con->dump);
    $_SESSION['header']       = $header;
    $_SESSION['footer']       = $footer;
    $_SESSION['skin']         = $skin_name;
    $_SESSION['master_css']   = $master_css;
    $_SESSION['colors_css']   = $colors_css;
    $_SESSION['fonts_css']    = $fonts_css;
    $_SESSION['override_css'] = $override_css;
    $_SESSION['icon_set']     = $icon_set;
    if(trim($_SESSION['icon_set'] == ''))
    {
        $_SESSION['icon_set'] = 'cobalt';
    }
}
$data_con->close_db();

require 'components/get_listview_referrer.php';

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_submit']);
    require 'components/query_string_standard.php';
    require 'subclasses/citizen.php';
    $dbh_citizen = new citizen;

    $object_name = 'dbh_citizen';
    require 'components/create_form_data_with_upload.php';
    
	extract($arr_form_data);

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_citizen.php?$query_string");
    }
	$file_upload_control_name="cf_validate_proof_of_id";
	$mf_upload_counter_name="validate_count";
	require 'components/upload_generic_mf.php';
	
	$file_upload_control_name="cf_validate_proof_of_address";
	$mf_upload_counter_name="validate_count";
	require 'components/upload_generic_mf.php';

    if($_POST['btn_submit'])
    {
        log_action('Pressed submit button');
		$dbh_citizen->fields['is_citizen']['required'] = FALSE;
		$dbh_citizen->fields['is_official']['required'] = FALSE;
		$dbh_citizen->fields['telephone_number']['required'] = FALSE;
		$dbh_citizen->fields['email_address']['required'] = FALSE;
		$dbh_citizen->fields['cellphone_number']['required'] = FALSE;

		 $message .= $dbh_citizen->sanitize($arr_form_data)->lst_error;
        extract($arr_form_data);

        if($dbh_citizen->check_uniqueness($arr_form_data)->is_unique)
        {
            //Good, no duplicate in database
        }
        else
        {
            $message = "Record already exists with the same primary identifiers!";
        }

        if($message=="")
        {
            $dbh_citizen->add($arr_form_data);
            $citizen_id = $dbh_citizen->auto_id;
            require_once 'subclasses/validate.php';
            $dbh_citizen = new validate;
            for($a=0; $a<$validate_count;$a++)
            {
                
                $param = array(
                               'proof_of_id'=>$cf_validate_proof_of_id[$a],
                               'proof_of_address'=>$cf_validate_proof_of_address[$a],
                               'citizen_id'=>$citizen_id,
                               'status'=>$cf_validate_status[$a]
                              );
                $dbh_citizen->add($param);
            }
	require_once 'subclasses/person.php';
			$dbh_person = new person;
			$dbh_person->add($arr_form_data);
			$person_id = $dbh_person->auto_id;
			$arr_form_data['person_id'] = $person_id;
			
            require 'password_crypto.php';
            //Hash the password using default Cobalt password hashing technique
            $hashed_password = cobalt_password_hash('NEW',$password, $username, $new_salt, $new_iteration, $new_method);

            $arr_form_data['password'] = $hashed_password;
            $arr_form_data['salt'] = $new_salt;
            $arr_form_data['iteration'] = $new_iteration;
            $arr_form_data['method'] = $new_method;
            $arr_form_data['role_id'] = 3;
            $arr_form_data['skin_id'] = 1;
			
			require_once 'subclasses/user.php';
			$dbh_user = new user;
			$dbh_user->add($arr_form_data);

            //Permissions from role, if role was chosen
            if($arr_form_data['role_id']!='')
            {
                $db = new data_abstraction();
                $db->execute_query("INSERT `user_passport` SELECT '" . quote_smart($username) . "', `link_id` FROM user_role_links WHERE role_id='" . quote_smart($arr_form_data['role_id']) . "'");
            }

            redirect("listview_citizen.php?$query_string");
        }
    }
		if ($arr_form_data['region'] != "")
	{
		$chosen_region = $arr_form_data['region'];
	}
	
	if ($arr_form_data['province'] != "")
	{
		$chosen_province = $arr_form_data['province'];
	}
	if ($arr_form_data['city'] != "")
	{
		$chosen_city = $arr_form_data['city'];
	}
	if ($arr_form_data['barangay'] != "")
	{
		$chosen_barangay = $arr_form_data['barangay'];
	}
}
?>
<main>
	<div class="register_layout">
	<?php
require 'subclasses/citizen_html.php';
$html = new citizen_html;
$html->draw_header('Add Citizen', $message, $message_type,TRUE,TRUE);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);
require 'components/set_region_province_city.php';

$html->fields['date_registered']['control_type'] = 'hidden';
$html->fields['is_official']['control_type'] = 'hidden';

$html->draw_controls('add');

$html->draw_footer();
	?>
	</div>

</main>

<?php
	require 'footer.php';
?>