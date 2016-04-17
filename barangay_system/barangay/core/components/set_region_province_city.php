<?php

init_var($chosen_region);
init_var($chosen_province);
init_var($chosen_city);
init_var($chosen_barangay);

if ($chosen_region == "")
{
	$html->fields['province']['control_type'] = 'hidden';
	$html->fields['city']['control_type'] = 'hidden';
	$html->fields['barangay']['control_type'] = 'hidden';
	$html->fields['district']['control_type'] = 'hidden';
}
else
{
	$html->fields['province']['list_settings']['query'] = "SELECT province.province_id AS `Queried_province_id`, province.province_name FROM province WHERE province.region_id = $chosen_region ORDER BY province_name ASC";
		
if ($chosen_province == "")
{
			
	$html->fields['city']['control_type'] = 'hidden';
	$html->fields['barangay']['control_type'] = 'hidden';
	$html->fields['district']['control_type'] = 'hidden';
}
else
{
	$html->fields['city']['list_settings']['query'] = "SELECT city.city_id AS `Queried_city_id`, city.city_name FROM city WHERE city.province_id = $chosen_province ORDER BY city_name ASC";
		
			
}
if ($chosen_city == "")
{
	$html->fields['barangay']['control_type'] = 'hidden';
	$html->fields['district']['control_type'] = 'hidden';
}
else
{
	$html->fields['barangay']['list_settings']['query'] = "SELECT barangay.barangay_id AS `Queried_barangay_id`, barangay.barangay_name FROM barangay WHERE barangay.city_id = $chosen_city ORDER BY barangay_name ASC";


if ($chosen_barangay == "")
{
	$html->fields['district']['control_type'] = 'hidden';
}
else
{
	$html->fields['district']['list_settings']['query'] = "SELECT barangay.barangay_id AS `Queried_barangay_id`, barangay.district_number FROM barangay WHERE barangay.barangay_id = $chosen_barangay ORDER BY district_number ASC";
		
			
}		
			
}
		
}