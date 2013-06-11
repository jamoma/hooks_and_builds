<?php
require_once('class.GitHubHook.php');

// Initiate the GitHub Deployment Hook
$hook = new GitHubHook;

// Enable the debug log, kindly make `log/hook.log` writable
$hook->enableDebug();

// branch we will listen in order to deploy
// name of the release, for log file
// path to be send to the build script
$hook->addBranch('master', 'release', "first parameter the php will pass to the build script, we'ree not using this. generally used for path of the build script");

// Deploy the commits
$hook->deploy();
