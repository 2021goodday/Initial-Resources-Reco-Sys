<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Guest::index');

// Guest page - christian polishing controllers/routes, date: 10.7.2024
$routes->get('guest', 'Guest::index');
$routes->get('about', 'Guest::about');
$routes->get('startup_intro', 'Guest::startup_intro');
$routes->get('investor_intro', 'Guest::investor_intro');


// User Login page - christian polishing controllers/routes, date: 10.7.2024
$routes->get('login', 'Login::index'); 
$routes->post('/login', 'Login::login');
$routes->get('logout', 'Login::logout');

$routes->get('investor_signup', 'Login::investor_signup'); //login signup
$routes->post('/investor_signup', 'Login::investor_database');

$routes->get('startup_signup', 'Login::startup_signup'); //startup signup
$routes->post('/startup_signup', 'Login::startup_database');

// email verification link upon signup activity - Gerard, Oct 31, 2024
$routes->get('verify-email/(:any)', 'Login::verifyEmail/$1');


$routes->get('roles', 'Login::roles'); // choosing roles

$routes->get('validate', 'Login::validateForm'); //validation form
$routes->post('validate', 'Login::submitDocuments');


// $routes->get('forgot_password', 'Login::forgot_password');
// $routes->post('forgot_password', 'Login::forgot_password');

// Forgot Password Routes
$routes->get('forgot-password', 'Login::forgot_password'); // Show forgot password form
$routes->post('forgot-password/process', 'Login::processForgotPassword'); // Process forgot password form

// Reset Password Routes
$routes->get('reset-password', 'Login::ResetPassword'); // Show reset password form with token
$routes->post('reset-password/update', 'Login::updatePassword'); // Handle password update




//IDEA DASHBOARD  - christian polishing controllers/routes, date: 10.12.2024
$routes->get('idea', 'Idea::index');
$routes->get('pitch', 'Idea::pitch');
$routes->post('pitch', 'Idea::submitPitch'); //christian date: 10.14.2024
//chat for request - christian, Date: 11/16/2024
$routes->get('idea/fetchMessages', 'Idea::fetchMessages');
$routes->post('idea/sendMessage', 'Idea::sendMessage');






// invest_dashboard for investor - christian polish controllers, date: 10.14.2024
$routes->get('invest_dashboard', 'InvestDashboard::index');
$routes->get('ecommerce', 'InvestDashboard::ecommerce');
$routes->get('beverage', 'InvestDashboard::beverage');
$routes->get('technology', 'InvestDashboard::technology');
$routes->get('InvestDashboard/deletePitch/(:num)', 'InvestDashboard::deletePitch/$1'); 
$routes->get('edit/(:num)', 'InvestDashboard::edit/$1');


$routes->get('invest_dashboard/handleRequest/(:num)/(:alpha)', 'InvestDashboard::handleRequest/$1/$2');

//chat for request - christian, Date: 11/16/2024
$routes->post('invest_dashboard/sendMessage', 'InvestDashboard::sendMessage');
$routes->get('invest_dashboard/fetchMessages', 'InvestDashboard::fetchMessages');






//UNPOLISHED CONTROLLERS AND ROUTES: 

// Collaboration startup
//$routes->get('collab', 'Collab::index');

// Mentor startup
$routes->get('mentoring', 'Mentoring::index');
$routes->get('/find/search', 'Mentoring::search'); //Christian - date: 10/25/2024


//Christian - date: 10/28/2024
$routes->get('find', 'Mentoring::find');
$routes->get('find', 'Mentoring::findInvestor'); 
$routes->get('mentoring/mentors', 'Mentoring::getAllMentorsAndInvestors');
$routes->get('mentoring/search', 'Mentoring::search');
$routes->get('collab', 'Mentoring::collab');
$routes->get('mentoring/collab/(:num)', 'Mentoring::collab/$1');
$routes->get('mentoring/collab/(:any)', 'Mentoring::collab/$1');
//chat - christian, Date: 11/16/2024
$routes->get('mentoring/fetchMessages', 'Mentoring::fetchMessages');
$routes->post('mentoring/sendMessage', 'Mentoring::sendMessage');

//$routes->post('mentoring/scheduleMeeting', 'Mentoring::scheduleMeeting');
//$routes->get('mentoring/getMeetings', 'Mentoring::getMeetings');







// Route for base URL: localhost/venturevortex/mentor
$routes->get('mentor', 'Mentor::index');
//chat - christian, Date: 11/16/2024
$routes->get('mentor/fetchMessages', 'Mentor::fetchMessages');
$routes->post('mentor/sendMessage', 'Mentor::sendMessage');

// Initial module
$routes->get('initial', 'InitialController::index');

// Investor profile
$routes->get('investor', 'InvestorController::index');
$routes->post('investor/uploadImage', 'InvestorController::uploadImage'); 
$routes->post('investor/updateProfile', 'InvestorController::updateProfile'); //christian date: 10.14.2024 
$routes->post('investor/addProject', 'InvestorController::addProject'); // christian date 10.14.2024 
$routes->get('investor_profile/(:num)', 'InvestorController::profile/$1'); // christian date 10/25/2024
$routes->get('investor/sendStartupRequest/(:num)/(:any)', 'InvestorController::sendStartupRequest/$1/$2');
$routes->get('/investor/sendStartupRequest/(:num)/(:alpha)/(:num)', 'InvestorController::sendStartupRequest/$1/$2/$3');



// Transaction reports
$routes->get('investor_trans', 'InvestorTrans::index');
// Lendering reports
$routes->get('investor_lender', 'Lender::index');
// Transaction reports for startups - christian, date: 10.31.2024
$routes->get('transaction', 'TransactionController::index');
$routes->post('transaction/add', 'TransactionController::add'); 
$routes->post('transaction/update', 'TransactionController::update');
$routes->get('transaction/delete/(:num)', 'TransactionController::delete/$1');


// Transaction for investor
$routes->get('trans', 'TransController::index');

// Startup profile 
$routes->get('startup', 'StartupController::index');
$routes->post('startup/uploadImage', 'StartupController::uploadImage'); 
$routes->post('startup/updateProfile', 'StartupController::updateProfile');//christian date: 10.14.2024 
$routes->get('startup_profile/(:num)', 'StartupController::profile/$1');



//startup loaned projects  
$routes->get('loaned_projects', 'LoanedProjects::index');
//startup transaction  
$routes->get('startup_trans', 'StartupTrans::index');

//viewing startup for investors 
$routes->get('view', 'View::index');
$routes->get('view/(:num)', 'View::index/$1');
//$routes->get('view/(:num)', 'View::view/$1');
$routes->post('send-request', 'View::sendRequest');

//progress report - elly, Date: 10.5.2024
// Admin profile
$routes->get('adminprof', 'AdminProf::index');

// Admin management
$routes->get('adminacc', 'AdminAcc::index');
// adrielle - Form submission route for Account Management
$routes->post('user/updateAccount', 'AdminAcc::updateAccount');
// adrielle - Account Deactivation in Account Management
$routes->post('user/deactivateAccount', 'AdminAcc::deactivateAccount');


// Admin startup account management 
$routes->get('adminSAV', 'AdminSAV::index');

$routes->post('adminSAV/approve/(:num)', 'AdminSAV::approve/$1'); //CHRISTIAN - 10.6.2024
$routes->post('adminSAV/reject/(:num)', 'AdminSAV::reject/$1'); //CHRISTIAN - 10.6.2024

// Admin investor account management 
$routes->get('adminIAV', 'AdminIAV::index');


$routes->post('adminIAV/approve/(:num)', 'AdminIAV::approve/$1'); //CHRISTIAN - 10.6.2024
$routes->post('adminIAV/reject/(:num)', 'AdminIAV::reject/$1'); //CHRISTIAN - 10.6.2024


// Admin transaction history
$routes->get('admintranshistory', 'AdminTransHistory::index');

//Admin maintenance and update
$routes->get('adminmaintenance', 'AdminMaintenance::index'); // Displays the maintenance tasks page
$routes->post('adminmaintenance/perform', 'AdminMaintenance::perform'); // Handles performing maintenance tasks
$routes->get('adminmaintenance/update-system', 'AdminMaintenance::updateSystem'); // Create new report
$routes->post('adminmaintenance/update-report/(:num)', 'AdminMaintenance::updateReport/$1'); // Edit report
$routes->post('adminmaintenance/complete-report/(:num)', 'AdminMaintenance::markReportCompleted/$1'); // Mark report as completed
$routes->post('adminmaintenance/editStatus/(:num)', 'AdminMaintenance::editStatus/$1');

// Admin report ELLY 11/6/24
// $routes->get('adminreport', 'AdminReport::index');
$routes->get('adminreport', 'AdminReport::index'); // Displays the report list 
$routes->post('adminreport/generate', 'AdminReport::generateReport'); // To generate a report
$routes->get('adminreport/print/(:num)', 'AdminReport::printReport/$1'); // Print a specific report by ID


//Admin content managment 
$routes->get('content', 'Content::index');  // This displays the resource page
$routes->post('admin/content/add', 'Content::create');  // This handles the form submission to add a new resource
$routes->get('admin/content/edit/(:num)', 'Content::edit/$1');  // Edit resource
$routes->post('content/update/(:num)', 'Content::update/$1');  // Update resource
$routes->get('admin/content/delete/(:num)', 'Content::delete/$1');  // Delete resource


// Admin security management
$routes->get('security', 'Security::index');
$routes->post('security/getAccountInfo', 'Security::getAccountInfo'); // Route for AJAX request


// validateCreds for investor
$routes->get('validate_creds', 'ValidateCreds::index');





//Prorgress report 
//$routes->get('progress', 'Progress::index');
//$routes->get('progform', 'ProgForm::index');

$routes->get('/progress_report', 'ProgressReportController::index');
$routes->get('/progress_report/create', 'ProgressReportController::create');
$routes->post('/progress_report/store', 'ProgressReportController::store');
$routes->get('/progress_report/edit/(:num)', 'ProgressReportController::edit/$1');
$routes->post('/progress_report/update/(:num)', 'ProgressReportController::update/$1');
$routes->get('/progress_report/delete/(:num)', 'ProgressReportController::delete/$1');



//send request - christian, Date: 10.17.2024
$routes->post('invest_dashboard/sendRequest', 'InvestDashboard::sendRequest');
$routes->get('idea/handleRequest/(:num)/(:alpha)', 'Idea::handleRequest/$1/$2');
$routes->get('idea/requests', 'Idea::getRequestsForStartup');
$routes->post('idea/sendRequest', 'Idea::sendRequest');
$routes->get('startup/(:num)', 'StartupController::profile/$1'); //11/9/2024

// Chat-related routes for startup side
$routes->get('idea/fetchMessages', 'InvestDashboard::fetchMessages'); // Reuse the fetchMessages method from InvestDashboard for chat
$routes->post('idea/sendMessage', 'InvestDashboard::sendMessage');

$routes->get('nda/index/(:num)', 'NdaController::index/$1');
$routes->get('nda/accept/(:num)', 'NdaController::accept/$1');
$routes->get('nda/decline/(:num)', 'NdaController::decline/$1');




//resources - christian, Date: 10.21.2024
$routes->get('resources', 'Resources::index');

//$routes->post('quiz/submit', 'Quiz::submit');

$routes->get('investments', 'InvestmentController::index');
$routes->post('investments/sendMessage', 'InvestmentController::sendMessage');
$routes->get('investments/fetchMessages', 'InvestmentController::fetchMessages');


//chat - christian, Date: 11/16/2024
$routes->get('investment/fetchMessages', 'InvestmentController::fetchMessages');
$routes->post('investment/sendMessage', 'InvestmentController::sendMessage');

//$routes->get('startup_dashboard/idea', 'InvestDashboard::getRequestsForStartup');
//$routes->get('startup_dashboard/requests', 'InvestDashboard::getRequestsForStartup');



//Admin login and signup
$routes->get('admin_login', 'AdminAuth::login');
$routes->get('admin_signup', 'AdminAuth::signup');
$routes->post('admin_login', 'AdminAuth::processLogin');
$routes->post('admin_signup', 'AdminAuth::processSignup');



$routes->get('/progress_module', 'ProgressModule::index');
$routes->get('progress_module', 'ProgressModule::index');
$routes->get('progress_module/view_pdf/(:num)', 'ProgressModule::view_pdf/$1');
$routes->get('progress_module/(:num)', 'ProgressModule::index/$1');


$routes->get('resources/view/(:num)', 'InitialController::viewResource/$1');










//this is only for testing web page designs. Will be removed in the future
$routes->get('test', 'Test::index');


$routes->get('/chat', 'ChatController::index');
$routes->post('/chat/send', 'ChatController::sendMessage');
$routes->get('/chat/fetch', 'ChatController::fetchMessages');
//$routes->get('/chat/(:num)', 'ChatController::index/$1');

$routes->get('chat/(:num)', 'ChatController::index/$1');
$routes->get('chat/(:num)', 'ChatController::chat/$1');
$routes->post('chat/sendMessage', 'ChatController::sendMessage');
$routes->get('chat/fetchMessages', 'ChatController::fetchMessages');

//$routes->get('/mentoring/chat/(:num)', 'Mentoring::chat/$1');








