<?php
require_once 'bulletin_dd.php';
class bulletin extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = bulletin_dd::load_dictionary();
        $this->relations  = bulletin_dd::load_relationships();
        $this->subclasses = bulletin_dd::load_subclass_info();
        $this->table_name = bulletin_dd::$table_name;
        $this->tables     = bulletin_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('bulletin_id, bulletin_name, bulletin_description, bulletin_date, file_document, category, is_show');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('issssss',
                                 &$this->fields['bulletin_id']['value'],
                                 &$this->fields['bulletin_name']['value'],
                                 &$this->fields['bulletin_description']['value'],
                                 &$this->fields['bulletin_date']['value'],
                                 &$this->fields['file_document']['value'],
                                 &$this->fields['category']['value'],
                                 &$this->fields['is_show']['value']);

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
            $this->set_update("bulletin_name = ?, bulletin_description = ?, bulletin_date = ?, file_document = ?, category = ?, is_show = ?");
            $this->set_where("bulletin_id = ?");

            $bind_params = array('ssssssi',
                                 &$this->fields['bulletin_name']['value'],
                                 &$this->fields['bulletin_description']['value'],
                                 &$this->fields['bulletin_date']['value'],
                                 &$this->fields['file_document']['value'],
                                 &$this->fields['category']['value'],
                                 &$this->fields['is_show']['value'],
                                 &$this->fields['bulletin_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("bulletin_id = ?");

        $bind_params = array('i',
                             &$this->fields['bulletin_id']['value']);

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
        $this->set_where("bulletin_id = ?");

        $bind_params = array('i',
                             &$this->fields['bulletin_id']['value']);

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
        $this->set_where("bulletin_id = ? AND (bulletin_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['bulletin_id']['value'],
                             &$this->fields['bulletin_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
