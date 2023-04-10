<?php
/* Smarty version 4.3.1, created on 2023-04-10 17:50:13
  from 'F:\wamp64\www\LastUpdateRateStars\content\themes\default\templates\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_64344c5505b875_08145171',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5fc99cb8f9f2289f6d15d6cd05c4bd1d88f4ba8e' => 
    array (
      0 => 'F:\\wamp64\\www\\LastUpdateRateStars\\content\\themes\\default\\templates\\index.tpl',
      1 => 1681144268,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_head.tpl' => 1,
    'file:_header.tpl' => 1,
    'file:_sign_form.tpl' => 1,
    'file:__svg_icons.tpl' => 4,
    'file:_footer.links.tpl' => 1,
    'file:_sidebar.tpl' => 1,
    'file:_announcements.tpl' => 1,
    'file:_publisher.tpl' => 1,
    'file:_boosted_post.tpl' => 1,
    'file:_posts.tpl' => 9,
    'file:__feeds_page.tpl' => 2,
    'file:_no_data.tpl' => 1,
    'file:_ads.tpl' => 1,
    'file:_ads_campaigns.tpl' => 1,
    'file:_widget.tpl' => 1,
    'file:__feeds_user.tpl' => 1,
    'file:__feeds_group.tpl' => 1,
    'file:__feeds_event.tpl' => 1,
    'file:_footer.tpl' => 1,
  ),
),false)) {
function content_64344c5505b875_08145171 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender('file:_head.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
$_smarty_tpl->_subTemplateRender('file:_header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<!-- page content -->
<?php if (!$_smarty_tpl->tpl_vars['user']->value->_logged_in && !$_smarty_tpl->tpl_vars['system']->value['newsfeed_public']) {?>

  <div class="container pt30">
    <div class="index-intro">
      <h1>
        <?php echo __("Welcome to");?>
 <?php echo __($_smarty_tpl->tpl_vars['system']->value['system_title']);?>

      </h1>
      <p>
        <?php echo __($_smarty_tpl->tpl_vars['system']->value['system_description']);?>

      </p>
    </div>
    <div class="row">
      <div class="col-md-6 col-lg-7">
        <img style="width: 100%; max-height: 500px;" class="d-none d-md-block" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->tpl_vars['system']->value['theme'];?>
/images/home/drawkit-nature-man-colour.svg">
      </div>

      <div class="col-md-6 col-lg-5">
        <?php $_smarty_tpl->_subTemplateRender('file:_sign_form.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('do'=>"in"), 0, false);
?>
        <div class="text-center">
          <?php if ($_smarty_tpl->tpl_vars['system']->value['play_store_badge_enabled']) {?>
            <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['play_store_link'];?>
" target="_blank">
              <?php $_smarty_tpl->_subTemplateRender('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"playstore_badge",'height'=>"58px"), 0, false);
?>
            </a>
          <?php }?>
          <?php if ($_smarty_tpl->tpl_vars['system']->value['appgallery_badge_enabled']) {?>
            <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['appgallery_store_link'];?>
" target="_blank">
              <?php $_smarty_tpl->_subTemplateRender('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"appgallery_badge",'height'=>"40px",'class'=>"mr10"), 0, true);
?>
            </a>
          <?php }?>
          <?php if ($_smarty_tpl->tpl_vars['system']->value['app_store_badge_enabled']) {?>
            <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['app_store_link'];?>
" target="_blank">
              <?php $_smarty_tpl->_subTemplateRender('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"appstore_badge",'height'=>"40px"), 0, true);
?>
            </a>
          <?php }?>
        </div>
      </div>
    </div>
  </div>

  <?php $_smarty_tpl->_subTemplateRender('file:_footer.links.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php } else { ?>

  <div class="container mt20 offcanvas">
    <div class="row">

      <!-- side panel -->
      <div class="col-md-4 col-lg-3 offcanvas-sidebar js_sticky-sidebar">
        <?php $_smarty_tpl->_subTemplateRender('file:_sidebar.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
      </div>
      <!-- side panel -->

      <!-- content panel -->
      <div class="col-md-8 col-lg-9 offcanvas-mainbar">
        <div class="row">
          <!-- center panel -->
          <div class="col-lg-8">

            <!-- announcments -->
            <?php $_smarty_tpl->_subTemplateRender('file:_announcements.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
            <!-- announcments -->

            <?php if ($_smarty_tpl->tpl_vars['view']->value == '') {?>

              <?php if ($_smarty_tpl->tpl_vars['user']->value->_logged_in) {?>
                <!-- stories -->
                <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['can_add_stories'] || ($_smarty_tpl->tpl_vars['system']->value['stories_enabled'] && !empty($_smarty_tpl->tpl_vars['stories']->value['array']))) {?>
                  <div class="card">
                    <div class="card-header bg-transparent border-bottom-0">
                      <strong class="text-muted"><?php echo __("Stories");?>
</strong>
                      <?php if ($_smarty_tpl->tpl_vars['has_story']->value) {?>
                        <div class="float-right">
                          <button data-toggle="tooltip" data-placement="top" title='<?php echo __("Delete Your Story");?>
' class="btn btn-sm btn-icon btn-rounded btn-danger js_story-deleter">
                            <i class="fa fa-trash-alt"></i>
                          </button>
                        </div>
                      <?php } else { ?>
                        <div class="d-none d-sm-block text-muted pointer float-right">
                          <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title='<?php echo __("Stories are photos and videos that only last 24 hours");?>
'></i>
                        </div>
                      <?php }?>

                    </div>
                    <div class="card-body pt5 stories-wrapper">
                      <div id="stories" data-json='<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['stories']->value["json"],ENT_QUOTES,'UTF-8');?>
'>
                        <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['can_add_stories']) {?>
                          <div class="add-story" data-toggle="modal" data-url="posts/story.php?do=create">
                            <div class="img" style="background-image:url(<?php echo $_smarty_tpl->tpl_vars['user']->value->_data['user_picture'];?>
);">
                            </div>
                            <div class="add">
                              <i class="fa fa-plus-circle"></i>
                            </div>
                          </div>
                        <?php }?>
                      </div>
                    </div>
                  </div>
                <?php }?>
                <!-- stories -->

                <!-- publisher -->
                <?php $_smarty_tpl->_subTemplateRender('file:_publisher.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_handle'=>"me",'_privacy'=>true), 0, false);
?>
                <!-- publisher -->

                <!-- boosted post -->
                <?php if ($_smarty_tpl->tpl_vars['boosted_post']->value) {?>
                  <?php $_smarty_tpl->_subTemplateRender('file:_boosted_post.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('post'=>$_smarty_tpl->tpl_vars['boosted_post']->value), 0, false);
?>
                <?php }?>
                <!-- boosted post -->
              <?php }?>

              <!-- posts -->
              <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"newsfeed"), 0, false);
?>
              <!-- posts -->

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "popular") {?>
              <!-- popular posts -->
              <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"popular",'_title'=>__("Popular Posts")), 0, true);
?>
              <!-- popular posts -->

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "discover") {?>
              <!-- discover posts -->
              <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"discover",'_title'=>__("Discover Posts")), 0, true);
?>
              <!-- discover posts -->

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "saved") {?>
              <!-- saved posts -->
              <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"saved",'_title'=>__("Saved Posts")), 0, true);
?>
              <!-- saved posts -->

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "memories") {?>
              <!-- page header -->
              <div class="page-header mini rounded mb10">
                <div class="circle-1"></div>
                <div class="circle-2"></div>
                <div class="inner">
                  <h2><?php echo __("Memories");?>
</h2>
                  <p class="text-lg"><?php echo __("Enjoy looking back on your memories");?>
</p>
                </div>
              </div>
              <!-- page header -->

              <!-- memories posts -->
              <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"memories",'_title'=>__("ON THIS DAY"),'_filter'=>"all"), 0, true);
?>
              <!-- memories posts -->

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "articles") {?>
              <!-- articles posts -->
              <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"posts_profile",'_id'=>$_smarty_tpl->tpl_vars['user']->value->_data['user_id'],'_filter'=>"article",'_title'=>__("My Articles")), 0, true);
?>
              <!-- articles posts -->

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "products") {?>
              <!-- products posts -->
              <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"posts_profile",'_id'=>$_smarty_tpl->tpl_vars['user']->value->_data['user_id'],'_filter'=>"product",'_title'=>__("My Products")), 0, true);
?>
              <!-- products posts -->

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "funding_requests") {?>
              <!-- funding posts -->
              <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"posts_profile",'_id'=>$_smarty_tpl->tpl_vars['user']->value->_data['user_id'],'_filter'=>"funding",'_title'=>__("My Funding Requests")), 0, true);
?>
              <!-- funding posts -->

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "boosted_posts") {?>
              <?php if ($_smarty_tpl->tpl_vars['user']->value->_is_admin || $_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                <!-- boosted posts -->
                <?php $_smarty_tpl->_subTemplateRender('file:_posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_get'=>"boosted",'_title'=>__("My Boosted Posts")), 0, true);
?>
                <!-- boosted posts -->
              <?php } else { ?>
                <!-- upgrade -->
                <div class="alert alert-warning">
                  <div class="icon">
                    <i class="fa fa-id-card fa-2x"></i>
                  </div>
                  <div class="text">
                    <strong><?php echo __("Membership");?>
</strong><br>
                    <?php echo __("Choose the Plan That's Right for You");?>
, <?php echo __("Check the package from");?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Here");?>
</a>
                  </div>
                </div>
                <div class="text-center">
                  <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages" class="btn btn-primary"><i class="fa fa-rocket mr5"></i><?php echo __("Upgrade to Pro");?>
</a>
                </div>
                <!-- upgrade -->
              <?php }?>

            <?php } elseif ($_smarty_tpl->tpl_vars['view']->value == "boosted_pages") {?>
              <?php if ($_smarty_tpl->tpl_vars['user']->value->_is_admin || $_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                <div class="card">
                  <div class="card-header">
                    <strong><?php echo __("My Boosted Pages");?>
</strong>
                  </div>
                  <div class="card-body">
                    <?php if ($_smarty_tpl->tpl_vars['boosted_pages']->value) {?>
                      <ul>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['boosted_pages']->value, '_page');
$_smarty_tpl->tpl_vars['_page']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['_page']->value) {
$_smarty_tpl->tpl_vars['_page']->do_else = false;
?>
                          <?php $_smarty_tpl->_subTemplateRender('file:__feeds_page.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list"), 0, true);
?>
                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                      </ul>

                      <?php if (count($_smarty_tpl->tpl_vars['boosted_pages']->value) >= $_smarty_tpl->tpl_vars['system']->value['max_results_even']) {?>
                        <!-- see-more -->
                        <div class="alert alert-info see-more js_see-more" data-get="boosted_pages">
                          <span><?php echo __("See More");?>
</span>
                          <div class="loader loader_small x-hidden"></div>
                        </div>
                        <!-- see-more -->
                      <?php }?>
                    <?php } else { ?>
                      <?php $_smarty_tpl->_subTemplateRender('file:_no_data.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                    <?php }?>
                  </div>
                </div>
              <?php } else { ?>
                <!-- upgrade -->
                <div class="alert alert-warning">
                  <div class="icon">
                    <i class="fa fa-id-card fa-2x"></i>
                  </div>
                  <div class="text">
                    <strong><?php echo __("Membership");?>
</strong><br>
                    <?php echo __("Choose the Plan That's Right for You");?>
, <?php echo __("Check the package from");?>
 <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Here");?>
</a>
                  </div>
                </div>
                <div class="text-center">
                  <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages" class="btn btn-primary"><i class="fa fa-rocket mr5"></i><?php echo __("Upgrade to Pro");?>
</a>
                </div>
                <!-- upgrade -->
              <?php }?>

            <?php }?>
          </div>
          <!-- center panel -->

          <!-- right panel -->
          <div class="col-lg-4 js_sticky-sidebar">

            <!-- pro users -->
            <?php if ($_smarty_tpl->tpl_vars['pro_members']->value) {?>
              <div class="card bg-gradient-indigo border-0">
                <div class="card-header ptb20 bg-transparent border-bottom-0">
                  <?php if ($_smarty_tpl->tpl_vars['system']->value['packages_enabled'] && !$_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                    <div class="float-right">
                      <small><a class="text-white text-underline" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Upgrade");?>
</a></small>
                    </div>
                  <?php }?>
                  <h6 class="pb0"><i class="fa fa-user-shield mr5"></i> <?php echo __("Pro Users");?>
</h6>
                </div>
                <div class="card-body pt0 plr5">
                  <div class="pro-box-wrapper <?php if (count($_smarty_tpl->tpl_vars['pro_members']->value) > 3) {?>js_slick<?php } else { ?>full-opacity<?php }?>">
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['pro_members']->value, '_member');
$_smarty_tpl->tpl_vars['_member']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['_member']->value) {
$_smarty_tpl->tpl_vars['_member']->do_else = false;
?>
                      <a class="user-box text-white" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/<?php echo $_smarty_tpl->tpl_vars['_member']->value['user_name'];?>
">
                        <img alt="" src="<?php echo $_smarty_tpl->tpl_vars['_member']->value['user_picture'];?>
" />
                        <div class="name">
                          <?php if ($_smarty_tpl->tpl_vars['system']->value['show_usernames_enabled']) {?>
                            <?php echo $_smarty_tpl->tpl_vars['_member']->value['user_name'];?>

                          <?php } else { ?>
                            <?php echo $_smarty_tpl->tpl_vars['_member']->value['user_firstname'];?>
 <?php echo $_smarty_tpl->tpl_vars['_member']->value['user_lastname'];?>

                          <?php }?>
                        </div>
                      </a>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                  </div>
                </div>
              </div>
            <?php }?>
            <!-- pro users -->

            <!-- pro pages -->
            <?php if ($_smarty_tpl->tpl_vars['promoted_pages']->value) {?>
              <div class="card bg-gradient-teal border-0">
                <div class="card-header ptb20 bg-transparent border-bottom-0">
                  <?php if ($_smarty_tpl->tpl_vars['system']->value['packages_enabled'] && !$_smarty_tpl->tpl_vars['user']->value->_data['user_subscribed']) {?>
                    <div class="float-right">
                      <small><a class="text-white text-underline" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/packages"><?php echo __("Upgrade");?>
</a></small>
                    </div>
                  <?php }?>
                  <h6 class="pb0"><i class="fa fa-flag-checkered mr5"></i> <?php echo __("Pro Pages");?>
</h6>
                </div>
                <div class="card-body pt0 plr5">
                  <div class="pro-box-wrapper <?php if (count($_smarty_tpl->tpl_vars['promoted_pages']->value) > 3) {?>js_slick<?php } else { ?>full-opacity<?php }?>">
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['promoted_pages']->value, '_page');
$_smarty_tpl->tpl_vars['_page']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['_page']->value) {
$_smarty_tpl->tpl_vars['_page']->do_else = false;
?>
                      <a class="user-box text-white" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/pages/<?php echo $_smarty_tpl->tpl_vars['_page']->value['page_name'];?>
">
                        <img alt="<?php echo $_smarty_tpl->tpl_vars['_page']->value['page_title'];?>
" src="<?php echo $_smarty_tpl->tpl_vars['_page']->value['page_picture'];?>
" />
                        <div class="name" title="<?php echo $_smarty_tpl->tpl_vars['_page']->value['page_title'];?>
">
                          <?php echo $_smarty_tpl->tpl_vars['_page']->value['page_title'];?>

                        </div>
                      </a>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                  </div>
                </div>
              </div>
            <?php }?>
            <!-- pro pages -->

            <!-- trending -->
            <?php if ($_smarty_tpl->tpl_vars['trending_hashtags']->value) {?>
              <div class="card bg-gradient-red border-0">
                <div class="card-header pt20 pb10 bg-transparent border-bottom-0">
                  <h6 class="mb0"><i class="fa fa-fire mr5"></i> <?php echo __("Trending");?>
</h6>
                </div>
                <div class="card-body pt0">
                  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['trending_hashtags']->value, 'hashtag');
$_smarty_tpl->tpl_vars['hashtag']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['hashtag']->value) {
$_smarty_tpl->tpl_vars['hashtag']->do_else = false;
?>
                    <a class="trending-item" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/search/hashtag/<?php echo $_smarty_tpl->tpl_vars['hashtag']->value['hashtag'];?>
">
                      <span class="hash">
                        #<?php echo $_smarty_tpl->tpl_vars['hashtag']->value['hashtag'];?>

                      </span>
                      <span class="frequency">
                        <?php echo $_smarty_tpl->tpl_vars['hashtag']->value['frequency'];?>
 <?php echo __("Posts");?>

                      </span>
                    </a>
                  <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </div>
              </div>
            <?php }?>
            <!-- trending -->

            <?php $_smarty_tpl->_subTemplateRender('file:_ads.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
            <?php $_smarty_tpl->_subTemplateRender('file:_ads_campaigns.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
            <?php $_smarty_tpl->_subTemplateRender('file:_widget.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

            <!-- friend suggestions -->
            <?php if ($_smarty_tpl->tpl_vars['new_people']->value) {?>
              <div class="card">
                <div class="card-header bg-transparent">
                  <div class="float-right">
                    <small><a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/people"><?php echo __("See All");?>
</a></small>
                  </div>
                  <?php echo __("Friend Suggestions");?>

                </div>
                <div class="card-body with-list">
                  <ul>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['new_people']->value, '_user');
$_smarty_tpl->tpl_vars['_user']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['_user']->value) {
$_smarty_tpl->tpl_vars['_user']->do_else = false;
?>
                      <?php $_smarty_tpl->_subTemplateRender('file:__feeds_user.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_connection'=>"add",'_small'=>true), 0, true);
?>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                  </ul>
                </div>
              </div>
            <?php }?>
            <!-- friend suggestions -->

            <!-- suggested pages -->
            <?php if ($_smarty_tpl->tpl_vars['new_pages']->value) {?>
              <div class="card">
                <div class="card-header bg-transparent">
                  <div class="float-right">
                    <small><a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/pages"><?php echo __("See All");?>
</a></small>
                  </div>
                  <?php echo __("Suggested Pages");?>

                </div>
                <div class="card-body with-list">
                  <ul>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['new_pages']->value, '_page');
$_smarty_tpl->tpl_vars['_page']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['_page']->value) {
$_smarty_tpl->tpl_vars['_page']->do_else = false;
?>
                      <?php $_smarty_tpl->_subTemplateRender('file:__feeds_page.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list"), 0, true);
?>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                  </ul>
                </div>
              </div>
            <?php }?>
            <!-- suggested pages -->

            <!-- suggested groups -->
            <?php if ($_smarty_tpl->tpl_vars['new_groups']->value) {?>
              <div class="card">
                <div class="card-header bg-transparent">
                  <div class="float-right">
                    <small><a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/groups"><?php echo __("See All");?>
</a></small>
                  </div>
                  <?php echo __("Suggested Groups");?>

                </div>
                <div class="card-body with-list">
                  <ul>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['new_groups']->value, '_group');
$_smarty_tpl->tpl_vars['_group']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['_group']->value) {
$_smarty_tpl->tpl_vars['_group']->do_else = false;
?>
                      <?php $_smarty_tpl->_subTemplateRender('file:__feeds_group.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list"), 0, true);
?>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                  </ul>
                </div>
              </div>
            <?php }?>
            <!-- suggested groups -->

            <!-- suggested events -->
            <?php if ($_smarty_tpl->tpl_vars['new_events']->value) {?>
              <div class="card">
                <div class="card-header bg-transparent">
                  <div class="float-right">
                    <small><a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/events"><?php echo __("See All");?>
</a></small>
                  </div>
                  <?php echo __("Suggested Events");?>

                </div>
                <div class="card-body with-list">
                  <ul>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['new_events']->value, '_event');
$_smarty_tpl->tpl_vars['_event']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['_event']->value) {
$_smarty_tpl->tpl_vars['_event']->do_else = false;
?>
                      <?php $_smarty_tpl->_subTemplateRender('file:__feeds_event.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_small'=>true), 0, true);
?>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                  </ul>
                </div>
              </div>
            <?php }?>
            <!-- suggested events -->

            <!-- invitation widget -->
            <?php if ($_smarty_tpl->tpl_vars['user']->value->_data['can_invite_users']) {?>
              <div class="card bg-gradient-success">
                <div class="card-body text-center">
                  <div class="mb10">
                    <?php $_smarty_tpl->_subTemplateRender('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"invite_friend",'width'=>"60px",'height'=>"60px"), 0, true);
?>
                  </div>
                  <a class="btn btn-sm btn-primary rounded-pill" href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/settings/invitations"><?php echo __("Invite Your Friends");?>
</a>
                </div>
              </div>
            <?php }?>
            <!-- invitation widget -->

            <!-- mini footer -->
            <div class="mini-footer mtb20 plr10">
              <div class="copyrights dropdown">
                <span class="mr5">&copy; <?php echo date('Y');?>
 <?php echo __($_smarty_tpl->tpl_vars['system']->value['system_title']);?>
</span>
                <!-- language -->
                <a href="#" class="language-dropdown" data-toggle="dropdown">
                  <img width="16" height="16" class="mr10" src="<?php echo $_smarty_tpl->tpl_vars['system']->value['language']['flag'];?>
">
                  <span><?php echo $_smarty_tpl->tpl_vars['system']->value['language']['title'];?>
</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                  <div class="js_scroller">
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['system']->value['languages'], 'language');
$_smarty_tpl->tpl_vars['language']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['language']->value) {
$_smarty_tpl->tpl_vars['language']->do_else = false;
?>
                      <a class="dropdown-item" href="?lang=<?php echo $_smarty_tpl->tpl_vars['language']->value['code'];?>
">
                        <img width="16" height="16" class="mr10" src="<?php echo $_smarty_tpl->tpl_vars['language']->value['flag'];?>
"><?php echo $_smarty_tpl->tpl_vars['language']->value['title'];?>

                      </a>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                  </div>
                </div>
                <!-- language -->
              </div>
              <ul class="links">
                <?php if ($_smarty_tpl->tpl_vars['static_pages']->value) {?>
                  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['static_pages']->value, 'static_page');
$_smarty_tpl->tpl_vars['static_page']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['static_page']->value) {
$_smarty_tpl->tpl_vars['static_page']->do_else = false;
?>
                    <li>
                      <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/static/<?php echo $_smarty_tpl->tpl_vars['static_page']->value['page_url'];?>
">
                        <?php echo __($_smarty_tpl->tpl_vars['static_page']->value['page_title']);?>

                      </a>
                    </li>
                  <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['system']->value['contact_enabled']) {?>
                  <li>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/contacts">
                      <?php echo __("Contact Us");?>

                    </a>
                  </li>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['system']->value['directory_enabled']) {?>
                  <li>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['system']->value['system_url'];?>
/directory">
                      <?php echo __("Directory");?>

                    </a>
                  </li>
                <?php }?>
              </ul>
            </div>
            <!-- mini footer -->

          </div>
          <!-- right panel -->
        </div>
      </div>
      <!-- content panel -->

    </div>
  </div>

<?php }?>
<!-- page content -->

<?php $_smarty_tpl->_subTemplateRender('file:_footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
