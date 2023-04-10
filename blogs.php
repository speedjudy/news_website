<?php

/**
 * blogs
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootloader
require('bootloader.php');

// blogs enabled
if (!$system['blogs_enabled']) {
  _error(404);
}

// user access
if ($user->_logged_in || !$system['system_public']) {
  user_access();
}

try {

  // get view content
  switch ($_GET['view']) {
    case '':
      // page header
      page_header(__($system['system_title']) . ' - ' . __("Blogs"), __($system['system_description_blogs']));

      // get articles
      $articles = $user->get_articles();
      /* assign variables */
      $smarty->assign('articles', $articles);
      break;

    case 'category':
      // check category
      $category = $user->get_category("blogs_categories", $_GET['category_id']);
      if (!$category) {
        _error(404);
      }
      /* assign variables */
      $smarty->assign('category', $category);

      // page header
      page_header(__($system['system_title']) . ' - ' . __("Blogs") . ' - ' . __($category['category_name']), __($category['category_description']));

      // get articles
      $articles = $user->get_articles(array("category" => $_GET['category_id']));
      /* assign variables */
      $smarty->assign('articles', $articles);

      // get blogs categories (sub-categories & only parents)
      $blogs_categories = $user->get_categories("blogs_categories", $_GET['category_id'], false, true);
      /* assign variables */
      $smarty->assign('blogs_categories', $blogs_categories);

      // get latest articles
      $latest_articles = $user->get_articles(array('random' => "true", 'results' => 5));
      /* assign variables */
      $smarty->assign('latest_articles', $latest_articles);

      // get ads
      $ads = $user->ads('article');
      /* assign variables */
      $smarty->assign('ads', $ads);

      // get widgets
      $widgets = $user->widgets('article');
      /* assign variables */
      $smarty->assign('widgets', $widgets);
      break;

    case 'article':
      // get article
      $article = $user->get_post($_GET['post_id']);
      if (!$article) {
        _error(404);
      }
      /* assign variables */
      $smarty->assign('article', $article);

      // page header
      page_header($article['og_title'], $article['og_description'], $article['og_image']);

      // get blogs categories (only parents)
      $blogs_categories = $user->get_categories("blogs_categories", 0, false, true);
      /* assign variables */
      $smarty->assign('blogs_categories', $blogs_categories);

      // get latest articles
      $latest_articles = $user->get_articles(array('random' => "true", 'results' => 5));
      /* assign variables */
      $smarty->assign('latest_articles', $latest_articles);

      // update views counter
      $user->update_article_views($article['article']['article_id']);

      // get ads
      $ads = $user->ads('article');
      $ads_footer = $user->ads('article_footer');
      /* assign variables */
      $smarty->assign('ads', $ads);
      $smarty->assign('ads_footer', $ads_footer);

      // get widgets
      $widgets = $user->widgets('article');
      /* assign variables */
      $smarty->assign('widgets', $widgets);
      break;

    case 'edit':
      // user access
      user_access();

      // check blogs permission
      if (!$user->_data['can_write_articles']) {
        _error(404);
      }

      // page header
      page_header(__("Edit Article"), __($system['system_description_blogs']));

      // get article
      $article = $user->get_post($_GET['post_id']);
      if (!$article) {
        _error(404);
      }
      /* assign variables */
      $smarty->assign('article', $article);

      // get blogs categories
      $blogs_categories = $user->get_categories("blogs_categories");
      /* assign variables */
      $smarty->assign('blogs_categories', $blogs_categories);
      break;

    case 'new':
      // user access
      user_access();

      // check blogs permission
      if (!$user->_data['can_write_articles']) {
        _error(404);
      }

      // page header
      page_header(__("Write New Article"), __($system['system_description_blogs']));

      // prepare publisher
      /* publish-to options */
      $share_to = "timeline";
      if (isset($_GET['page'])) {
        $share_to = "page";
        $share_to_page_id = (int) $_GET['page'];
        $smarty->assign('share_to_page_id', $share_to_page_id);
      } elseif (isset($_GET['group'])) {
        $share_to = "group";
        $share_to_group_id = (int) $_GET['group'];
        $smarty->assign('share_to_group_id', $share_to_group_id);
      } elseif (isset($_GET['event'])) {
        $share_to = "event";
        $share_to_event_id = (int) $_GET['event'];
        $smarty->assign('share_to_event_id', $share_to_event_id);
      }
      $smarty->assign('share_to', $share_to);
      /* get user pages */
      $pages = $user->get_pages(array('managed' => true, 'user_id' => $user->_data['user_id']));
      $smarty->assign('pages', $pages);
      /* get user groups */
      $groups = $user->get_groups(array('get_all' => true, 'user_id' => $user->_data['user_id']));
      $smarty->assign('groups', $groups);
      /* get user events */
      $events = $user->get_events(array('get_all' => true, 'user_id' => $user->_data['user_id']));
      $smarty->assign('events', $events);

      // get blogs categories
      $blogs_categories = $user->get_categories("blogs_categories");
      /* assign variables */
      $smarty->assign('blogs_categories', $blogs_categories);
      break;

    default:
      _error(404);
      break;
  }
  /* assign variables */
  $smarty->assign('view', $_GET['view']);
} catch (Exception $e) {
  _error(__("Error"), $e->getMessage());
}

// page footer
page_footer("blogs");
