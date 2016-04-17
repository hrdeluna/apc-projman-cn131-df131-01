<?php
require_once 'notification_dd.php';
class notification extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = notification_dd::load_dictionary();
        $this->relations  = notification_dd::load_relationships();
        $this->subclasses = notification_dd::load_subclass_info();
        $this->table_name = notification_dd::$table_name;
        $this->tables     = notification_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('notification_id, request_id, citizen_id, notification_letter');
            $this->set_values("?,?,?,?");

            $bind_params = array('iiis',
                                 &$this->fields['notification_id']['value'],
                                 &$this->fields['request_id']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['notification_letter']['value']);

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
            $this->set_update("request_id = ?, citizen_id = ?, notification_letter = ?");
            $this->set_where("notification_id = ?");

            $bind_params = array('iisi',
                                 &$this->fields['request_id']['value'],
                                 &$this->fields['citizen_id']['value'],
                                 &$this->fields['notification_letter']['value'],
                                 &$this->fields['notification_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("notification_id = ?");

        $bind_params = array('i',
                             &$this->fields['notification_id']['value']);

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
        $this->set_where("notification_id = ?");

        $bind_params = array('i',
                             &$this->fields['notification_id']['value']);

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
        $this->set_where("notification_id = ? AND (notification_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['notification_id']['value'],
                             &$this->fields['notification_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
