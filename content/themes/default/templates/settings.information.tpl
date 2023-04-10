<div class="card-header with-icon">
  <i class="fa fa-file-invoice mr10" style="color: #28a745;"></i>{__("Download Your Information")}
</div>
<form class="js_ajax-forms" data-url="users/information.php">
  <div class="card-body">
    <div class="alert alert-primary">
      <div class="icon">
        <i class="fa fa-file-invoice fa-2x"></i>
      </div>
      <div class="text">
        <strong>{__("Download Your Information")}</strong><br>
        {__("You can download all of it at once, or you can select only the types of information you want")}
      </div>
    </div>
    <div class="h5 mb20 text-center">
      {__("Select which information you would like to download")}
    </div>
    <!-- download options -->
    <div class="text-center">
      <!-- Information -->
      <input class="x-hidden input-label" type="checkbox" name="download_information" id="download_information" />
      <label class="button-label" for="download_information">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="personal_info" width="32px" height="32px"}
        </div>
        <div class="title">{__("Info")}</div>
      </label>
      <!-- Information -->
      <!-- Friends -->
      <input class="x-hidden input-label" type="checkbox" name="download_friends" id="download_friends" />
      <label class="button-label" for="download_friends">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="friends" width="32px" height="32px"}
        </div>
        <div class="title">{__("Friends")}</div>
      </label>
      <!-- Friends -->
      <!-- Followings -->
      <input class="x-hidden input-label" type="checkbox" name="download_followings" id="download_followings" />
      <label class="button-label" for="download_followings">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="followings" width="32px" height="32px"}
        </div>
        <div class="title">{__("Followings")}</div>
      </label>
      <!-- Followings -->
      <!-- Followers -->
      <input class="x-hidden input-label" type="checkbox" name="download_followers" id="download_followers" />
      <label class="button-label" for="download_followers">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="followers" width="32px" height="32px"}
        </div>
        <div class="title">{__("Followers")}</div>
      </label>
      <!-- Followers -->
    </div>
    <div class="text-center">
      <!-- Pages -->
      <input class="x-hidden input-label" type="checkbox" name="download_pages" id="download_pages" />
      <label class="button-label" for="download_pages">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="pages" width="32px" height="32px"}
        </div>
        <div class="title">{__("Pages")}</div>
      </label>
      <!-- Pages -->
      <!-- Groups -->
      <input class="x-hidden input-label" type="checkbox" name="download_groups" id="download_groups" />
      <label class="button-label" for="download_groups">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="groups" width="32px" height="32px"}
        </div>
        <div class="title">{__("Groups")}</div>
      </label>
      <!-- Groups -->
      <!-- Events -->
      <input class="x-hidden input-label" type="checkbox" name="download_events" id="download_events" />
      <label class="button-label" for="download_events">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="events" width="32px" height="32px"}
        </div>
        <div class="title">{__("Events")}</div>
      </label>
      <!-- Events -->
      <!-- Posts -->
      <input class="x-hidden input-label" type="checkbox" name="download_posts" id="download_posts" />
      <label class="button-label" for="download_posts">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="newsfeed" width="32px" height="32px"}
        </div>
        <div class="title">{__("Posts")}</div>
      </label>
      <!-- Posts -->
    </div>
    <!-- download options -->

    <!-- error -->
    <div class="alert alert-danger mb0 mt20 x-hidden"></div>
    <!-- error -->

  </div>
  <div class="card-footer text-right">
    <button type="submit" class="btn btn-danger"><i class="fa fa-bolt mr10"></i>{__("Create File")}</button>
  </div>
</form>