<?php
require_once 'province_dd.php';
class province extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = province_dd::load_dictionary();
        $this->relations  = province_dd::load_relationships();
        $this->subclasses = province_dd::load_subclass_info();
        $this->table_name = province_dd::$table_name;
        $this->tables     = province_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('province_id, province_name, nscb_code, region_id');
            $this->set_values("?,?,?,?");

            $bind_params = array('isii',
                                 &$this->fields['province_id']['value'],
                                 &$this->fields['province_name']['value'],
                                 &$this->fields['nscb_code']['value'],
                                 &$this->fields['region_id']['value']);

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
            $this->set_update("province_name = ?, nscb_code = ?, region_id = ?");
            $this->set_where("province_id = ?");

            $bind_params = array('siii',
                                 &$this->fields['province_name']['value'],
                                 &$this->fields['nscb_code']['value'],
                                 &$this->fields['region_id']['value'],
                                 &$this->fields['province_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("province_id = ?");

        $bind_params = array('i',
                             &$this->fields['province_id']['value']);

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
        $this->set_where("province_id = ?");

        $bind_params = array('i',
                             &$this->fields['province_id']['value']);

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
        $this->set_where("province_id = ? AND (province_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['province_id']['value'],
                             &$this->fields['province_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
