<?php

namespace App\Controllers;

use App\Models\StartupResourceModel;

class InitialController extends BaseController
{
    protected $resourceModel;

    public function __construct()
    {
        $this->resourceModel = new StartupResourceModel();
    }

   public function index()
{
    $allResources = $this->resourceModel->getAllResources();
    $popularResources = $this->resourceModel->getMostPopularResources(3); // Limit to 3 resources

    // Exclude popular resources from the other resources
    $popularIds = array_column($popularResources, 'id');
    $otherResources = array_filter($allResources, function ($resource) use ($popularIds) {
        return !in_array($resource['id'], $popularIds);
    });

    $data['popular_resources'] = $popularResources;
    $data['other_resources'] = $otherResources;

    return view('initial', $data);
}



    public function viewResource($id)
    {
        // Increment the view count for the resource
        $this->resourceModel->incrementViewCount($id);

        // Fetch the resource details
        $resource = $this->resourceModel->getResourceById($id);

        // Redirect to the resource's URL
        if ($resource) {
            return redirect()->to($resource['url']);
        }

        return redirect()->to('/resources')->with('error', 'Resource not found.');
    }
}
