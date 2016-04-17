<?php
require_once 'validate_dd.php';
class validate extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = validate_dd::load_dictionary();
        $this->relations  = validate_dd::load_relationships();
        $this->subclasses = validate_dd::load_subclass_info();
        $this->table_name = validate_dd::$table_name;
        $this->tables     = validate_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('validate_id, proof_of_id, proof_of_address, citizen_id, status');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issis',
                                 &$this->fields['validate_id']['value'],
                                 &$this->fields['proof_of_id']['value'],
                                 &$this->fields['proof_of_address']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['status']['value']);

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
            $this->set_update("proof_of_id = ?, proof_of_address = ?, citizen_id = ?, status = ?");
            $this->set_where("validate_id = ?");

            $bind_params = array('ssisi',
                                 &$this->fields['proof_of_id']['value'],
                                 &$this->fields['proof_of_address']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['status']['value'],
                                 &$this->fields['validate_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("validate_id = ?");

        $bind_params = array('i',
                             &$this->fields['validate_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
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
        $this->set_where("validate_id = ?");

        $bind_params = array('i',
                             &$this->fields['validate_id']['value']);

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
        $this->set_where("validate_id = ? AND (validate_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['validate_id']['value'],
                             &$this->fields['validate_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
