<?php

/**
 * ajax -> payments -> bank
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// user access
user_access(true, true);

// check if bank transfers enabled
if (!$system['bank_transfers_enabled']) {
  modal("MESSAGE", __("Error"), __("This feature has been disabled by the admin"));
}

try {

  switch ($_POST['handle']) {
    case 'packages':
      // valid inputs
      if (!isset($_POST['bank_receipt']) || is_empty($_POST['bank_receipt'])) {
        throw new Exception(__("Please attach your bank receipt"));
      }
      if (!isset($_POST['id']) || !is_numeric($_POST['id'])) {
        _error(400);
      }

      // get package
      $package = $user->get_package($_POST['id']);
      if (!$package) {
        _error(400);
      }
      /* check if user already subscribed to this package */
      if ($user->_data['user_subscribed'] && $user->_data['user_package'] == $package['package_id']) {
        modal("SUCCESS", __("Subscribed"), __("You already subscribed to this package, Please select different package"));
      }

      // process
      $db->query(sprintf("INSERT INTO bank_transfers (user_id, handle, package_id, bank_receipt, time) VALUES (%s, 'packages', %s, %s, %s)", secure($user->_data['user_id'], 'int'), secure($_POST['id'], 'int'), secure($_POST['bank_receipt']), secure($date))) or _error("SQL_ERROR_THROWEN");

      // send notification to admins
      $user->notify_system_admins("bank_transfer");

      // return
      modal("SUCCESS", __("Thanks"), __("Your request has been successfully sent, we will notify you once it's approved"));
      break;

    case 'wallet':
      // valid inputs
      if (!isset($_POST['bank_receipt']) || is_empty($_POST['bank_receipt'])) {
        throw new Exception(__("Please attach your bank receipt"));
      }
      if (!isset($_POST['price']) || !is_numeric($_POST['price'])) {
        _error(400);
      }

      // process
      $db->query(sprintf("INSERT INTO bank_transfers (user_id, handle, price, bank_receipt, time) VALUES (%s, 'wallet', %s, %s, %s)", secure($user->_data['user_id'], 'int'), secure($_POST['price']), secure($_POST['bank_receipt']), secure($date))) or _error("SQL_ERROR_THROWEN");

      // send notification to admins
      $user->notify_system_admins("bank_transfer");

      // return
      modal("SUCCESS", __("Thanks"), __("Your request has been successfully sent, we will notify you once it's approved"));
      break;

    case 'donate':
      // valid inputs
      if (!isset($_POST['bank_receipt']) || is_empty($_POST['bank_receipt'])) {
        throw new Exception(__("Please attach your bank receipt"));
      }
      if (!isset($_POST['id']) || !is_numeric($_POST['id'])) {
        _error(400);
      }
      if (!isset($_POST['price']) || !is_numeric($_POST['price'])) {
        _error(400);
      }

      // process
      $db->query(sprintf("INSERT INTO bank_transfers (user_id, handle, post_id, price, bank_receipt, time) VALUES (%s, 'donate', %s, %s, %s, %s)", secure($user->_data['user_id'], 'int'), secure($_POST['id'], 'int'), secure($_POST['price']), secure($_POST['bank_receipt']), secure($date))) or _error("SQL_ERROR_THROWEN");

      // send notification to admins
      $user->notify_system_admins("bank_transfer");

      // return
      modal("SUCCESS", __("Thanks"), __("Your request has been successfully sent, we will notify you once it's approved"));
      break;

    case 'subscribe':
      // valid inputs
      if (!isset($_POST['bank_receipt']) || is_empty($_POST['bank_receipt'])) {
        throw new Exception(__("Please attach your bank receipt"));
      }
      if (!isset($_POST['id']) || !is_numeric($_POST['id'])) {
        _error(400);
      }

      // get node
      switch ($_POST['node']) {
        case 'user':
          // get user
          $node = $user->get_user($_POST['id']);
          if (!$node) {
            _error(400);
          }
          $price = $node['user_monetization_price'];
          break;

        case 'page':
          // get page
          $node = $user->get_page($_POST['id']);
          if (!$node) {
            _error(400);
          }
          $price = $node['page_monetization_price'];
          break;

        case 'group':
          // get group
          $node = $user->get_group($_POST['id']);
          if (!$node) {
            _error(400);
          }
          $price = $node['group_monetization_price'];
          break;

        default:
          _error(400);
          break;
      }
      /* check if user already subscribed to this node */
      if ($user->is_subscribed($_POST['id'], $_POST['node'])) {
        modal("SUCCESS", __("Subscribed"), __("You already subscribed to this") . " " . __($_POST['node']));
      }

      // process
      $db->query(sprintf("INSERT INTO bank_transfers (user_id, handle, node_id, node_type, price, bank_receipt, time) VALUES (%s, 'subscribe', %s, %s, %s, %s, %s)", secure($user->_data['user_id'], 'int'), secure($_POST['id'], 'int'), secure($_POST['node']), secure($_POST['price']), secure($_POST['bank_receipt']), secure($date))) or _error("SQL_ERROR_THROWEN");

      // send notification to admins
      $user->notify_system_admins("bank_transfer");

      // return
      modal("SUCCESS", __("Thanks"), __("Your request has been successfully sent, we will notify you once it's approved"));
      break;

    default:
      _error(400);
      break;
  }
} catch (Exception $e) {
  return_json(array('error' => true, 'message' => $e->getMessage()));
}
