<?php

include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';
include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/security/crypting.php';
include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/groups/get_group_info.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/users/get_user_info.php';
include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/security/cookies.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/security/logs.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/groups/products.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/users/authenticate_user.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/users/create_user.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/groups/create_group.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/dashboard/get_stats.php';
include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/keys/keys.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/groups/group_invites.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/loader_users/l_users.php';

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/support/support_requests.php';

//include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth_admin/backend/dashboard/message_of_the_day.php';

?>