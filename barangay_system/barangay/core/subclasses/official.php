<?php
require_once 'official_dd.php';
class official extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = official_dd::load_dictionary();
        $this->relations  = official_dd::load_relationships();
        $this->subclasses = official_dd::load_subclass_info();
        $this->table_name = official_dd::$table_name;
        $this->tables     = official_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('official_id, official_name, position, term_period_from, term_period_to');
            $this->set_values("?,?,?,?,?");

            $bind_params = array('issss',
                                 &$this->fields['official_id']['value'],
                                 &$this->fields['official_name']['value'],
                                 &$this->fields['position']['value'],
                                 &$this->fields['term_period_from']['value'],
                                 &$this->fields['term_period_to']['value']);

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
            $this->set_update("official_name = ?, position = ?, term_period_from = ?, term_period_to = ?");
            $this->set_where("official_id = ?");

            $bind_params = array('ssssi',
                                 &$this->fields['official_name']['value'],
                                 &$this->fields['position']['value'],
                                 &$this->fields['term_period_from']['value'],
                                 &$this->fields['term_period_to']['value'],
                                 &$this->fields['official_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("official_id = ?");

        $bind_params = array('i',
                             &$this->fields['official_id']['value']);

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
        $this->set_where("official_id = ?");

        $bind_params = array('i',
                             &$this->fields['official_id']['value']);

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
        $this->set_where("official_id = ? AND (official_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['official_id']['value'],
                             &$this->fields['official_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
