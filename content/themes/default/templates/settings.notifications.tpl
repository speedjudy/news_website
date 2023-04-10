<div class="card-header with-icon">
  <i class="fa fa-bell fa-fw mr10" style="color: #673ab7;"></i>{__("Notifications")}
</div>
<form class="js_ajax-forms" data-url="users/settings.php?edit=notifications">
  <div class="card-body">
    <!-- System Notifications -->
    <div class="heading-small mb20">
      {__("System Notifications")}
    </div>
    <div class="pl-md-4">
      <div class="form-table-row">
        <div class="avatar">
          {include file='__svg_icons.tpl' icon="chat_bell" width="40px" height="40px"}
        </div>
        <div>
          <div class="form-control-label h6">{__("Chat Message Sound")}</div>
          <div class="form-text d-none d-sm-block">{__("A sound will be played each time you receive a new message on an inactive chat window")}</div>
        </div>
        <div class="text-right">
          <label class="switch" for="chat_sound_settings">
            <input type="checkbox" name="chat_sound" id="chat_sound_settings" {if $user->_data['chat_sound']}checked{/if}>
            <span class="slider round"></span>
          </label>
        </div>
      </div>

      <div class="form-table-row">
        <div class="avatar">
          {include file='__svg_icons.tpl' icon="notification_bell" width="40px" height="40px"}
        </div>
        <div>
          <div class="form-control-label h6">{__("Notifications Sound")}</div>
          <div class="form-text d-none d-sm-block">{__("A sound will be played each time you receive a new activity notification")}</div>
        </div>
        <div class="text-right">
          <label class="switch" for="notifications_sound_settings">
            <input type="checkbox" name="notifications_sound" id="notifications_sound_settings" {if $user->_data['notifications_sound']}checked{/if}>
            <span class="slider round"></span>
          </label>
        </div>
      </div>
    </div>
    <!-- System Notifications -->

    <!-- Email Notifications -->
    {if $email_notifications_enabled}
      <div class="divider"></div>
      <div class="heading-small mb20">
        {__("Email Notifications")}
      </div>
      <div class="pl-md-4">
        <div class="form-group form-row">
          <label class="col-md-2 form-control-label">{__("Email Me When")}</label>
          <div class="col-md-10">
            {if $system['email_post_likes']}
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="email_post_likes" id="email_post_likes" {if $user->_data['email_post_likes']}checked{/if}>
                <label class="custom-control-label" for="email_post_likes">{__("Someone liked my post")}</label>
              </div>
            {/if}
            {if $system['email_post_comments']}
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="email_post_comments" id="email_post_comments" {if $user->_data['email_post_comments']}checked{/if}>
                <label class="custom-control-label" for="email_post_comments">{__("Someone commented on my post")}</label>
              </div>
            {/if}
            {if $system['email_post_shares']}
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="email_post_shares" id="email_post_shares" {if $user->_data['email_post_shares']}checked{/if}>
                <label class="custom-control-label" for="email_post_shares">{__("Someone shared my post")}</label>
              </div>
            {/if}
            {if $system['email_wall_posts']}
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="email_wall_posts" id="email_wall_posts" {if $user->_data['email_wall_posts']}checked{/if}>
                <label class="custom-control-label" for="email_wall_posts">{__("Someone posted on my timeline")}</label>
              </div>
            {/if}
            {if $system['email_mentions']}
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="email_mentions" id="email_mentions" {if $user->_data['email_mentions']}checked{/if}>
                <label class="custom-control-label" for="email_mentions">{__("Someone mentioned me")}</label>
              </div>
            {/if}
            {if $system['email_profile_visits']}
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="email_profile_visits" id="email_profile_visits" {if $user->_data['email_profile_visits']}checked{/if}>
                <label class="custom-control-label" for="email_profile_visits">{__("Someone visited my profile")}</label>
              </div>
            {/if}
            {if $system['email_friend_requests']}
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="email_friend_requests" id="email_friend_requests" {if $user->_data['email_friend_requests']}checked{/if}>
                <label class="custom-control-label" for="email_friend_requests">{__("Someone sent me/accepted my friend requset")}</label>
              </div>
            {/if}
          </div>
        </div>
      </div>
    {/if}
    <!-- Email Notifications -->

    <!-- success -->
    <div class="alert alert-success mb0 x-hidden"></div>
    <!-- success -->

    <!-- error -->
    <div class="alert alert-danger mb0 x-hidden"></div>
    <!-- error -->
  </div>
  <div class="card-footer text-right">
    <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
  </div>
</form>