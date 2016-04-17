<?php
require_once 'request_has_requirement_dd.php';
class request_has_requirement extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = request_has_requirement_dd::load_dictionary();
        $this->relations  = request_has_requirement_dd::load_relationships();
        $this->subclasses = request_has_requirement_dd::load_subclass_info();
        $this->table_name = request_has_requirement_dd::$table_name;
        $this->tables     = request_has_requirement_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('request_has_requirement_id, date_submitted, requirement_document, request_id, status');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issis',
                                 &$this->fields['request_has_requirement_id']['value'],
                                 &$this->fields['date_submitted']['value'],
                                 &$this->fields['requirement_document']['value'],
                                 &$this->fields['request_id']['value'],
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
            $this->set_update("date_submitted = ?, requirement_document = ?, request_id = ?, status = ?");
            $this->set_where("request_has_requirement_id = ?");

            $bind_params = array('ssisi',
                                 &$this->fields['date_submitted']['value'],
                                 &$this->fields['requirement_document']['value'],
                                 &$this->fields['request_id']['value'],
                                 &$this->fields['status']['value'],
                                 &$this->fields['request_has_requirement_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("request_has_requirement_id = ?");

        $bind_params = array('i',
                             &$this->fields['request_has_requirement_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
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
        $this->set_where("request_has_requirement_id = ?");

        $bind_params = array('i',
                             &$this->fields['request_has_requirement_id']['value']);

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
        $this->set_where("request_has_requirement_id = ? AND (request_has_requirement_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['request_has_requirement_id']['value'],
                             &$this->fields['request_has_requirement_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
