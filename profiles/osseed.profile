<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

 // Implements hook_install_tasks.
 function osseed_install_tasks(&$install_state) {
  $tasks = array();
  $tasks['osseed_default_user_blogger'] = array();
  return $tasks;
 }

 /**
 *  Function for creating default users.
 */
 function osseed_default_user_blogger() {
  $user = \Drupal\user\Entity\User::create();
  $user->setPassword('blogger');
  $user->enforceIsNew();
  $user->setEmail('blogger@gmail.com');
  $user->setUsername('blogger');
  $user->addRole('blogger');
  $user->set("status", 1);
  $res = $user->save();
 }
