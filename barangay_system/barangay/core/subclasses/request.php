<?php
require_once 'request_dd.php';
class request extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = request_dd::load_dictionary();
        $this->relations  = request_dd::load_relationships();
        $this->subclasses = request_dd::load_subclass_info();
        $this->table_name = request_dd::$table_name;
        $this->tables     = request_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('request_id, service_id, citizen_id, date_filed, date_served');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('iiiss',
                                 &$this->fields['request_id']['value'],
                                 &$this->fields['service_id']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['date_filed']['value'],
                                 &$this->fields['date_served']['value']);

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
            $this->set_update("service_id = ?, citizen_id = ?, date_filed = ?, date_served = ?");
            $this->set_where("request_id = ?");

            $bind_params = array('iissi',
                                 &$this->fields['service_id']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['date_filed']['value'],
                                 &$this->fields['date_served']['value'],
                                 &$this->fields['request_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("request_id = ?");

        $bind_params = array('i',
                             &$this->fields['request_id']['value']);

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
        $this->set_where("request_id = ?");

        $bind_params = array('i',
                             &$this->fields['request_id']['value']);

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
        $this->set_where("request_id = ? AND (request_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['request_id']['value'],
                             &$this->fields['request_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
