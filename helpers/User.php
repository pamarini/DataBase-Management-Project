<?php namespace Helper;

use SlimSession\Helper;

class User
{
    public $id;
    public $email;
    public $role;
    public $cart;

    /**
     * User constructor.
     * @param $email
     * @param $role
     */
    public function __construct($id, $email, $role, Helper $session)
    {
        $this->id = $id;
        $this->email = $email;
        $this->role = $role;

        $this->cart = $session->get('cart_' . $this->id);
    }

    public function getCart(Helper $session): Cart
    {
        $cartId = 'cart_' . $this->id;
        return $session->get($cartId) ?: new Cart($this->id);
    }
}