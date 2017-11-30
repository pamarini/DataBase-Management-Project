<?php namespace Helper;

use SlimSession\Helper;

class Cart
{
    public $products;
    public $id;

    public function __construct($id)
    {
        $this->products = [];
        $this->id = $id;
    }

    public function count()
    {
        $count = 0;
        foreach($this->products as $product) $count += $product->quantity;

        return $count;
    }

    public function addItem($productId, $storeId)
    {
        if($existingItem = $this->itemExits($productId, $storeId))
        {
            $existingItem->increaseQuantity();
        } else {
            $this->products[] = new CartObject($productId, 1, $storeId);
        }
    }

    public function removeItem($productId, $storeId)
    {
        foreach($this->products as $key => $product)
        {
            if($product->productId === $productId && $product->storeId === $storeId) unset($this->products[$key]);
        }
    }

    public function itemExits($productId, $storeId)
    {
        foreach($this->products as $product)
        {
            if($product->productId === $productId && $product->storeId === $storeId) return $product;
        }

        return false;
    }

    public function save(Helper $session)
    {
        $session->set('cart_' . $this->id, $this);
    }

    public function clear()
    {
        $this->products = [];
    }


}