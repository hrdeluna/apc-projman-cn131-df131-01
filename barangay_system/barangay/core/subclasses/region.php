<?php
require_once 'region_dd.php';
class region extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = region_dd::load_dictionary();
        $this->relations  = region_dd::load_relationships();
        $this->subclasses = region_dd::load_subclass_info();
        $this->table_name = region_dd::$table_name;
        $this->tables     = region_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('region_id, region_name, nscb_code');
            $this->set_values("?,?,?");

            $bind_params = array('isi',
                                 &$this->fields['region_id']['value'],
                                 &$this->fields['region_name']['value'],
                                 &$this->fields['nscb_code']['value']);

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
            $this->set_update("region_name = ?, nscb_code = ?");
            $this->set_where("region_id = ?");

            $bind_params = array('sii',
                                 &$this->fields['region_name']['value'],
                                 &$this->fields['nscb_code']['value'],
                                 &$this->fields['region_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("region_id = ?");

        $bind_params = array('i',
                             &$this->fields['region_id']['value']);

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
        $this->set_where("region_id = ?");

        $bind_params = array('i',
                             &$this->fields['region_id']['value']);

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
        $this->set_where("region_id = ? AND (region_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['region_id']['value'],
                             &$this->fields['region_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
