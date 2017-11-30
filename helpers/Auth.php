<?php namespace Helper;

use SlimSession\Helper;

class Auth
{

    protected $isAuthenticated;
    protected $user;

    /**
     * Auth constructor.
     */
    public function __construct(Database $databaseConnection, Helper $session)
    {
        $this->user = null;
        $this->isAuthenticated = false;

        if ($session->get('user_id')) {
            $dbUser = $databaseConnection->select('users', ['id', 'email', 'role'], ['id' => $session->get('user_id')]);
            if (\count($dbUser) > 0) {
                $dbUser = $dbUser[0];
                $this->user = new User($dbUser['id'], $dbUser['email'], $dbUser['role'], $session);
                $this->isAuthenticated = true;
            }
        }
    }

    public static function login(String $email, String $password, Database $databaseConnection, Helper $session)
    {
        $dbUser = $databaseConnection->select('users', ['id', 'email', 'role'],
            [
                'email' => $email,
                'password' => $password,
            ]
        );

        if (\count($dbUser) > 0) {
            $session->set('user_id', $dbUser[0]['id']);
            return true;
        }

        return false;
    }

    public static function logout(Helper $session)
    {
        $session->set('user_id', null);
    }

    /**
     * @return mixed
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * @return mixed
     */
    public function authenticated()
    {
        return $this->isAuthenticated;
    }
}