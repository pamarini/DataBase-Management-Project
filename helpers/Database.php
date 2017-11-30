<?php namespace Helper;

use PDO;

class Database
{
    protected $connection;
    protected $lastId;

    public function __construct(Array $connectionSettings)
    {
        $connectionString = 'mysql:host=' . $connectionSettings['host'];
        $connectionString .= ';port=' . $connectionSettings['port'];
        $connectionString .= ';dbname=' . $connectionSettings['database'];
        $connectionString .= ';charset=utf8mb4';

        $options = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false,
        ];

        $this->connection = new PDO($connectionString, $connectionSettings['username'], $connectionSettings['password'], $options);
    }

    public function select(String $table, $rows = '*', Array $filters = []): array
    {
        $rows = is_array($rows) ? implode(',', $rows) : '*';
        $queryString = "SELECT $rows FROM $table";

        if(count($filters) > 0) {
            $joinedArray = [];
            foreach($filters as $key => $value) {
                $joinedArray[] = "`$key` = '$value'";
            }
            $queryString .= ' WHERE ' . implode(' AND ', $joinedArray);
        }

        return $this->connection->query($queryString)->fetchAll();
    }

    public function store(String $table, Array $values)
    {
        $keys = array_keys($values);
        $inputs = implode(', ', $keys);
        $questionsMarks = implode(', ', array_fill(0, count($keys), '?'));

        $this->executeQuery(
            "INSERT INTO $table " .
            "($inputs) ".
            "VALUES ($questionsMarks)",
            array_values($values)
        );

        return $this->lastId;
    }

    public function update(String $table, String $updateKey, String $updateColumn = 'ID', Array $values): bool
    {
        $keys = [];
        foreach($values as $key => $value) {
            $keys[] = "`$key` = ?";
        }
        $values[] = $updateKey;

        $queryString = "UPDATE $table SET " .
            implode(', ', $keys) .
            " WHERE $updateColumn = ?";

        return $this->executeQuery($queryString, array_values($values));
    }

    public function delete(String $table, String $deleteKey, String $deleteColumn = 'ID'): bool
    {
        return $this->executeQuery(
            "DELETE FROM $table WHERE $deleteColumn = ?",
            [
                $deleteKey
            ]
        );
    }

    public function custom(String $queryString)
    {
        return $this->connection->query($queryString)->fetchAll();
    }

    private function executeQuery(String $query, Array $params)
    {
        $prepared = $this->connection->prepare($query);
        $result =  $prepared->execute($params);
        $this->lastId = $this->connection->lastInsertId();
        return $result;
    }

    /**
     * @return PDO
     */
    public function getConnection(): PDO
    {
        return $this->connection;
    }



}