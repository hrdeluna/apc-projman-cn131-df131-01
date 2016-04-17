<?php
require_once 'citizen_dd.php';
class citizen extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = citizen_dd::load_dictionary();
        $this->relations  = citizen_dd::load_relationships();
        $this->subclasses = citizen_dd::load_subclass_info();
        $this->table_name = citizen_dd::$table_name;
        $this->tables     = citizen_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('citizen_id, first_name, middle_name, last_name, gender, birth_date, birth_place, weight, height, civil_status, occupation, cellphone_number, telephone_number, region, province, city, district, barangay, zip_code, street, house_number, nationality, username, password, email_address, father_first_name, father_middle_name, father_last_name, mother_first_name, mother_middle_name, mother_last_name, is_citizen, date_registered, is_official');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isssssssissiisssssisssssssssssssss',
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['first_name']['value'],
                                 &$this->fields['middle_name']['value'],
                                 &$this->fields['last_name']['value'],
                                 &$this->fields['gender']['value'],
                                 &$this->fields['birth_date']['value'],
                                 &$this->fields['birth_place']['value'],
                                 &$this->fields['weight']['value'],
                                 &$this->fields['height']['value'],
                                 &$this->fields['civil_status']['value'],
                                 &$this->fields['occupation']['value'],
                                 &$this->fields['cellphone_number']['value'],
                                 &$this->fields['telephone_number']['value'],
                                 &$this->fields['region']['value'],
                                 &$this->fields['province']['value'],
                                 &$this->fields['city']['value'],
                                 &$this->fields['district']['value'],
                                 &$this->fields['barangay']['value'],
                                 &$this->fields['zip_code']['value'],
                                 &$this->fields['street']['value'],
                                 &$this->fields['house_number']['value'],
                                 &$this->fields['nationality']['value'],
                                 &$this->fields['username']['value'],
                                 &$this->fields['password']['value'],
                                 &$this->fields['email_address']['value'],
                                 &$this->fields['father_first_name']['value'],
                                 &$this->fields['father_middle_name']['value'],
                                 &$this->fields['father_last_name']['value'],
                                 &$this->fields['mother_first_name']['value'],
                                 &$this->fields['mother_middle_name']['value'],
                                 &$this->fields['mother_last_name']['value'],
                                 &$this->fields['is_citizen']['value'],
                                 &$this->fields['date_registered']['value'],
                                 &$this->fields['is_official']['value']);

            $this->stmt_prepare($bind_params);
        }

        $this->stmt_execute();
        return $this;
    }

    function edit($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("first_name = ?, middle_name = ?, last_name = ?, gender = ?, birth_date = ?, birth_place = ?, weight = ?, height = ?, civil_status = ?, occupation = ?, cellphone_number = ?, telephone_number = ?, region = ?, province = ?, city = ?, district = ?, barangay = ?, zip_code = ?, street = ?, house_number = ?, nationality = ?, username = ?, password = ?, email_address = ?, father_first_name = ?, father_middle_name = ?, father_last_name = ?, mother_first_name = ?, mother_middle_name = ?, mother_last_name = ?, is_citizen = ?, date_registered = ?, is_official = ?");
            $this->set_where("citizen_id = ?");

            $bind_params = array('sssssssissiisssssisssssssssssssssi',
                                 &$this->fields['first_name']['value'],
                                 &$this->fields['middle_name']['value'],
                                 &$this->fields['last_name']['value'],
                                 &$this->fields['gender']['value'],
                                 &$this->fields['birth_date']['value'],
                                 &$this->fields['birth_place']['value'],
                                 &$this->fields['weight']['value'],
                                 &$this->fields['height']['value'],
                                 &$this->fields['civil_status']['value'],
                                 &$this->fields['occupation']['value'],
                                 &$this->fields['cellphone_number']['value'],
                                 &$this->fields['telephone_number']['value'],
                                 &$this->fields['region']['value'],
                                 &$this->fields['province']['value'],
                                 &$this->fields['city']['value'],
                                 &$this->fields['district']['value'],
                                 &$this->fields['barangay']['value'],
                                 &$this->fields['zip_code']['value'],
                                 &$this->fields['street']['value'],
                                 &$this->fields['house_number']['value'],
                                 &$this->fields['nationality']['value'],
                                 &$this->fields['username']['value'],
                                 &$this->fields['password']['value'],
                                 &$this->fields['email_address']['value'],
                                 &$this->fields['father_first_name']['value'],
                                 &$this->fields['father_middle_name']['value'],
                                 &$this->fields['father_last_name']['value'],
                                 &$this->fields['mother_first_name']['value'],
                                 &$this->fields['mother_middle_name']['value'],
                                 &$this->fields['mother_last_name']['value'],
                                 &$this->fields['is_citizen']['value'],
                                 &$this->fields['date_registered']['value'],
                                 &$this->fields['is_official']['value'],
                                 &$this->fields['citizen_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("citizen_id = ?");

        $bind_params = array('i',
                             &$this->fields['citizen_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("");

        $bind_params = array('',
                             );

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function select()
    {
        $this->set_query_type('SELECT');
        $this->exec_fetch('array');
        return $this;
    }

    function check_uniqueness($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('SELECT');
        $this->set_where("citizen_id = ?");

        $bind_params = array('i',
                             &$this->fields['citizen_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }

    function check_uniqueness_for_editing($param)
    {
        $this->set_parameters($param);


        $this->set_query_type('SELECT');
        $this->set_where("citizen_id = ? AND (citizen_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['citizen_id']['value'],
                             &$this->fields['citizen_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
