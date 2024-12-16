<?php

namespace App\Models;

use CodeIgniter\Model;

class StartupResourceModel extends Model
{
    protected $table = 'startup_resources';
    protected $primaryKey = 'id';
    protected $allowedFields = ['title', 'url', 'description'];

    public function addResource($data)
    {
        return $this->insert($data);
    }

    public function getAllResources()
    {
        return $this->findAll(); 
    }

    public function getResourceById($id)
    {
        return $this->find($id); 
    }

    public function updateResource($id, $data)
    {
        return $this->update($id, $data); 
    }

    public function deleteResource($id)
    {
        return $this->delete($id); 
    }
    
   public function incrementViewCount($id)
{
    return $this->db->table($this->table)
        ->set('views', 'views + 1', false) // The `false` flag ensures this is treated as raw SQL.
        ->where('id', $id)
        ->update();
}


public function getMostPopularResources($limit = 5)
{
    return $this->orderBy('views', 'DESC')->findAll($limit);
}

}
