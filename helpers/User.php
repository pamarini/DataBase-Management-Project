<?php namespace Helper;

class User
{
    protected $id;
    protected $email;
    protected $role;

    /**
     * User constructor.
     * @param $email
     * @param $role
     */
    public function __construct($id, $email, $role)
    {
        $this->id = $id;
        $this->email = $email;
        $this->role = $role;
    }
}