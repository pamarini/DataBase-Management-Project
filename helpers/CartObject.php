<?php namespace Helper;

class CartObject
{
    public $productId;
    public $storeId;
    public $quantity;
    public $productData;
    public $storeData;

    /**
     * CartObject constructor.
     * @param $productId
     * @param $quantity
     */
    public function __construct($productId, $quantity, $storeId)
    {
        $this->productId = $productId;
        $this->quantity = $quantity;
        $this->storeId = $storeId;
    }

    public function increaseQuantity()
    {
        $this->quantity++;
    }

    public function getItemData(Database $database)
    {
        $query = 'SELECT * FROM products
                    INNER JOIN brands
                    ON products.brand_id = brands.id
                    WHERE upc = ' . $this->productId . ';';
        $this->productData = $database->custom($query)[0];

        $this->storeData = $database->select('stores', '*', [
            'id' => $this->storeId
        ])[0];
    }
}