<?php

global $project;
$project = 'mysite';

global $database;
$database = 'diocese-survey';

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');

//CMSMenu::remove_menu_item('ParishAdmin');
//CMSMenu::remove_menu_item('Help'); doesn't work, see http://www.silverstrip.es/blog/remove-help-menu-item/
