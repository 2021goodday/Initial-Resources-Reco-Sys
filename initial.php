<?= $this->extend('layouts/startup_nav.php') ?>

<?= $this->section('content') ?>

<style>
    body {
        background-color: #f4f6f9;
    }

    .dashboard-container {
        padding-top: 30px;
        padding-bottom: 30px;
        padding-left: 30px;
    }

    .dashboard-header h1 {
        text-align: center;
        font-weight: bold;
        font-size: 2.5rem;
        margin-bottom: 20px;
    }

    .section-title {
        font-size: 1.8rem;
        font-weight: bold;
        color: #343a40;
        margin-top: 40px;
        margin-bottom: 20px;
        text-align: center;
    }

    .separator {
        height: 2px;
        background-color: #808080;
        margin: 20px 0;
        width: 80%;
        margin-left: auto;
        margin-right: auto;
    }

    .resource-card {
        border: none;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        margin-bottom: 20px;
        text-align: center;
        background-color: #fff;
        padding: 10px;
    }

    .resource-card a {
        text-decoration: none;
        color: #007bff;
    }

    .resource-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
    }

    .resource-title {
        font-size: 1.25rem;
        font-weight: bold;
        color: #343a40;
    }

    .resource-description {
        color: #6c757d;
        font-size: 0.9rem;
        margin-top: 8px;
    }

    .row {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 15px;
    }
    .resource-card a.btn-custom {
    color: #ffffff; 
    background-color: #007bff; 
    border: 1px solid #007bff;
    padding: 10px 20px;
    border-radius: 5px;
    transition: all 0.3s ease; 
}

.resource-card a.btn-custom:hover {
    color: #ffffff; 
    background-color: #0047AB; 
    border-color: #0047AB; 
    text-decoration: none; 
}

.popular-resources-row {
    display: flex;
    justify-content: space-around; /* Ensure equal spacing between items */
    gap: 20px; /* Add some spacing between items */
    flex-wrap: nowrap; /* Prevent wrapping */
    margin-bottom: 20px;
}

.popular-resources-row .col-md-4 {
    flex: 0 0 calc(33.33% - 20px); /* 3 items per row with spacing */
    max-width: calc(33.33% - 20px); /* Keep each item the same size */
}



</style>

<div class="dashboard-container">
    <div class="dashboard-header">
        <h1>Startup Resources</h1>
        <p class="text-center">Explore a variety of resources available for startups.</p>
    </div>

    <!-- Most Popular Resources Section -->
    <h2 class="section-title">Recommended Popular Resources</h2>
<div class="row popular-resources-row">
    
    <?php if (!empty($popular_resources) && is_array($popular_resources)): ?>
        <?php foreach ($popular_resources as $resource): ?>
            <div class="col-md-4">
                <div class="resource-card">
                    <h2 class="resource-title"><?= esc($resource['title']) ?></h2>
                    <p class="resource-description"><?= esc($resource['description']) ?></p>
                    <a href="<?= site_url('resources/view/' . $resource['id']) ?>" target="_blank" class="btn btn-custom">View Resource</a>
                </div>
            </div>
        <?php endforeach; ?>
    <?php else: ?>
        <div class="col-12">
            <p class="text-center">No popular resources available at this time.</p>
        </div>
    <?php endif; ?>
</div>



    <!-- Separator -->
    <div class="separator"></div>

    <!-- Other Resources Section -->
    <div class="row">
        <h2 class="section-title">Resources</h2>
        <?php if (!empty($other_resources) && is_array($other_resources)): ?>
            <?php foreach ($other_resources as $resource): ?>
                <div class="col-md-4 col-sm-6">
                    <div class="resource-card">
                        <h2 class="resource-title"><?= esc($resource['title']) ?></h2>
                        <p class="resource-description"><?= esc($resource['description']) ?></p>
                        <a href="<?= site_url('resources/view/' . $resource['id']) ?>" target="_blank" class="btn btn-custom">View Resource</a>

                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <div class="col-12">
                <p class="text-center">No other resources available at this time.</p>
            </div>
        <?php endif; ?>
    </div>
</div>

<?= $this->endSection() ?>
