<?php

/**
 * ajax -> users -> started
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// user access
user_access(true);

try {

  switch ($_GET['do']) {
    case 'update':
      // update user info
      $user->settings('started', $_POST);

      // return
      return_json(array('success' => true, 'message' => __("Your info has been updated")));
      break;

    case 'finish':
      // check if there is any required data
      if ($system['getting_started_profile_image_required'] || $system['getting_started_location_required'] || $system['getting_started_education_required'] || $system['getting_started_work_required']) {
        $user_info = $user->get_user($user->_data['user_id']);
        /* check if profile image required */
        if ($system['getting_started_profile_image_required'] && is_empty($user_info['user_picture'])) {
          throw new Exception(__("You must upload your profile image"));
        }
        /* check if location data required */
        if ($system['getting_started_location_required'] && (is_empty($user_info['user_country']) || is_empty($user_info['user_current_city']) || is_empty($user_info['user_hometown']))) {
          throw new Exception(__("You must enter your location info"));
        }
        /* check if work data required */
        if ($system['getting_started_work_required'] && (is_empty($user_info['user_work_title']) || is_empty($user_info['user_work_place']) || is_empty($user_info['user_work_url']))) {
          throw new Exception(__("You must enter your work info"));
        }
        /* check if education data required */
        if ($system['getting_started_education_required'] && (is_empty($user_info['user_edu_major']) || is_empty($user_info['user_edu_school']) || is_empty($user_info['user_edu_class']))) {
          throw new Exception(__("You must enter your education info"));
        }
      }

      // update user info
      $db->query(sprintf("UPDATE users SET user_started = '1' WHERE user_id = %s", secure($user->_data['user_id'], 'int'))) or _error("SQL_ERROR_THROWEN");

      // auto connect (custom country)
      $user->auto_friend($user->_data['user_id'], $user->_data['user_country']);
      $user->auto_follow($user->_data['user_id'], $user->_data['user_country']);
      $user->auto_like($user->_data['user_id'], $user->_data['user_country']);
      $user->auto_join($user->_data['user_id'], $user->_data['user_country']);

      // return
      return_json(array('callback' => 'window.location = "' . $system['system_url'] . '";'));
      break;

    default:
      _error(400);
      break;
  }
} catch (Exception $e) {
  return_json(array('error' => true, 'message' => $e->getMessage()));
}
