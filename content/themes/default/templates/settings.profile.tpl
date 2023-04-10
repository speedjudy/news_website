{if $sub_view == ""}
  <div class="card-header with-icon">
    <i class="fa fa-user mr10" style="color: #2b53a4;"></i>{__("Basic")}
    <div class="float-right">
      <a target="_blank" href="{$system['system_url']}/{$user->_data['user_name']}" class="btn btn-sm btn-info">
        <i class="fa fa-user"></i><span class="ml5 d-none d-lg-inline-block">{__("View Profile")}</span>
      </a>
    </div>
  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=basic">
    <div class="card-body">
      {if $user->_data['user_verified']}
        <div class="alert alert-warning">
          <div class="icon">
            <i class="fa fa-exclamation-triangle fa-2x"></i>
          </div>
          <div class="text">
            <strong>{__("Attention")}</strong><br>
            {__("Your account is already verified if you changed your name you will lose the verification badge")}
          </div>
        </div>
      {/if}

      <div class="row">
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("First Name")}</label>
          <input type="text" class="form-control" name="firstname" value="{$user->_data['user_firstname']}">
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Last Name")}</label>
          <input type="text" class="form-control" name="lastname" value="{$user->_data['user_lastname']}">
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("I am")}</label>
          <select name="gender" class="form-control">
            <option value="none">{__("Select Sex")}</option>
            {foreach $genders as $gender}
              <option {if $user->_data['user_gender'] == $gender['gender_id']}selected{/if} value="{$gender['gender_id']}">{__($gender['gender_name'])}</option>
            {/foreach}
          </select>
        </div>

        {if $system['relationship_info_enabled']}
          <div class="form-group col-md-6">
            <label class="form-control-label">{__("Relationship Status")}</label>
            <select name="relationship" class="form-control">
              <option value="none">{__("Select Relationship")}</option>
              <option {if $user->_data['user_relationship'] == "single"}selected{/if} value="single">{__("Single")}</option>
              <option {if $user->_data['user_relationship'] == "relationship"}selected{/if} value="relationship">{__("In a relationship")}</option>
              <option {if $user->_data['user_relationship'] == "married"}selected{/if} value="married">{__("Married")}</option>
              <option {if $user->_data['user_relationship'] == "complicated"}selected{/if} value="complicated">{__("It's complicated")}</option>
              <option {if $user->_data['user_relationship'] == "separated"}selected{/if} value="separated">{__("Separated")}</option>
              <option {if $user->_data['user_relationship'] == "divorced"}selected{/if} value="divorced">{__("Divorced")}</option>
              <option {if $user->_data['user_relationship'] == "widowed"}selected{/if} value="widowed">{__("Widowed")}</option>
            </select>
          </div>
        {/if}

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Country")}</label>
          <select name="country" class="form-control">
            <option value="none">{__("Select Country")}</option>
            {foreach $countries as $country}
              <option {if $user->_data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_id']}">{$country['country_name']}</option>
            {/foreach}
          </select>
        </div>

        {if $system['website_info_enabled']}
          <div class="form-group col-md-6">
            <label class="form-control-label">{__("Website")}</label>
            <input type="text" class="form-control" name="website" value="{$user->_data['user_website']}">
            <span class="form-text">
              {__("Website link must start with http:// or https://")}
            </span>
          </div>
        {/if}
      </div>

      <div class="form-group">
        <label class="form-control-label">{__("Birthdate")}</label>
        <div class="form-row">
          <div class="col">
            <select class="form-control" name="birth_month">
              <option value="none">{__("Select Month")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '1'}selected{/if} value="1">{__("Jan")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '2'}selected{/if} value="2">{__("Feb")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '3'}selected{/if} value="3">{__("Mar")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '4'}selected{/if} value="4">{__("Apr")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '5'}selected{/if} value="5">{__("May")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '6'}selected{/if} value="6">{__("Jun")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '7'}selected{/if} value="7">{__("Jul")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '8'}selected{/if} value="8">{__("Aug")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '9'}selected{/if} value="9">{__("Sep")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '10'}selected{/if} value="10">{__("Oct")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '11'}selected{/if} value="11">{__("Nov")}</option>
              <option {if $user->_data['user_birthdate_parsed']['month'] == '12'}selected{/if} value="12">{__("Dec")}</option>
            </select>
          </div>
          <div class="col">
            <select class="form-control" name="birth_day">
              <option value="none">{__("Select Day")}</option>
              {for $i=1 to 31}
                <option {if $user->_data['user_birthdate_parsed']['day'] == $i}selected{/if} value="{$i}">{$i}</option>
              {/for}
            </select>
          </div>
          <div class="col">
            <select class="form-control" name="birth_year">
              <option value="none">{__("Select Year")}</option>
              {for $i=1905 to 2022}
                <option {if $user->_data['user_birthdate_parsed']['year'] == $i}selected{/if} value="{$i}">{$i}</option>
              {/for}
            </select>
          </div>
        </div>
      </div>

      {if $system['biography_info_enabled']}
        <div class="form-group">
          <label class="form-control-label">{__("About Me")}</label>
          <textarea class="form-control" name="biography">{$user->_data['user_biography']}</textarea>
        </div>
      {/if}

      <!-- custom fields -->
      {if $custom_fields['basic']}
        {include file='__custom_fields.tpl' _custom_fields=$custom_fields['basic'] _registration=false}
      {/if}
      <!-- custom fields -->

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

{elseif $sub_view == "work"}
  <div class="card-header with-icon">
    <i class="fa fa-briefcase mr10" style="color: #2b53a4;"></i>{__("Work")}
    <div class="float-right">
      <a target="_blank" href="{$system['system_url']}/{$user->_data['user_name']}" class="btn btn-sm btn-info">
        <i class="fa fa-user"></i><span class="ml5 d-none d-lg-inline-block">{__("View Profile")}</span>
      </a>
    </div>
  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=work">
    <div class="card-body">
      <div class="form-group">
        <label class="form-control-label">{__("Work Title")}</label>
        <input type="text" class="form-control" name="work_title" value="{$user->_data['user_work_title']}">
      </div>

      <div class="row">
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Work Place")}</label>
          <input type="text" class="form-control" name="work_place" value="{$user->_data['user_work_place']}">
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Work Website")}</label>
          <input type="text" class="form-control" name="work_url" value="{$user->_data['user_work_url']}">
          <span class="form-text">
            {__("Website link must start with http:// or https://")}
          </span>
        </div>
      </div>

      <!-- custom fields -->
      {if $custom_fields['work']}
        {include file='__custom_fields.tpl' _custom_fields=$custom_fields['work'] _registration=false}
      {/if}
      <!-- custom fields -->

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

{elseif $sub_view == "location"}
  <div class="card-header with-icon">
    <i class="fa fa-map-marker mr10" style="color: #2b53a4;"></i>{__("Location")}
    <div class="float-right">
      <a target="_blank" href="{$system['system_url']}/{$user->_data['user_name']}" class="btn btn-sm btn-info">
        <i class="fa fa-user"></i><span class="ml5 d-none d-lg-inline-block">{__("View Profile")}</span>
      </a>
    </div>
  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=location">
    <div class="card-body">
      <div class="form-group">
        <label class="form-control-label">{__("Current City")}</label>
        <input type="text" class="form-control js_geocomplete" name="city" value="{$user->_data['user_current_city']}">
      </div>

      <div class="form-group">
        <label class="form-control-label">{__("Hometown")}</label>
        <input type="text" class="form-control js_geocomplete" name="hometown" value="{$user->_data['user_hometown']}">
      </div>

      <!-- custom fields -->
      {if $custom_fields['location']}
        {include file='__custom_fields.tpl' _custom_fields=$custom_fields['location'] _registration=false}
      {/if}
      <!-- custom fields -->

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

{elseif $sub_view == "education"}
  <div class="card-header with-icon">
    <i class="fa fa-graduation-cap mr10" style="color: #2b53a4;"></i>{__("Education")}
    <div class="float-right">
      <a target="_blank" href="{$system['system_url']}/{$user->_data['user_name']}" class="btn btn-sm btn-info">
        <i class="fa fa-user"></i><span class="ml5 d-none d-lg-inline-block">{__("View Profile")}</span>
      </a>
    </div>
  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=education">
    <div class="card-body">
      <div class="form-group">
        <label class="form-control-label">{__("School")}</label>
        <input type="text" class="form-control" name="edu_school" value="{$user->_data['user_edu_school']}">
      </div>

      <div class="row">
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Major")}</label>
          <input type="text" class="form-control" name="edu_major" value="{$user->_data['user_edu_major']}">
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Class")}</label>
          <input type="text" class="form-control" name="edu_class" value="{$user->_data['user_edu_class']}">
        </div>
      </div>

      <!-- custom fields -->
      {if $custom_fields['education']}
        {include file='__custom_fields.tpl' _custom_fields=$custom_fields['education'] _registration=false}
      {/if}
      <!-- custom fields -->

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

{elseif $sub_view == "other"}
  <div class="card-header with-icon">
    <i class="fa fa-plus mr10" style="color: #2b53a4;"></i>{__("Other")}
    <div class="float-right">
      <a target="_blank" href="{$system['system_url']}/{$user->_data['user_name']}" class="btn btn-sm btn-info">
        <i class="fa fa-user"></i><span class="ml5 d-none d-lg-inline-block">{__("View Profile")}</span>
      </a>
    </div>
  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=other">
    <div class="card-body">
      <!-- custom fields -->
      {if $custom_fields['other']}
        {include file='__custom_fields.tpl' _custom_fields=$custom_fields['other'] _registration=false}
      {/if}
      <!-- custom fields -->

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

{elseif $sub_view == "social"}
  <div class="card-header with-icon">
    <i class="fab fa-facebook mr10" style="color: #2b53a4;"></i>{__("Social Links")}
    <div class="float-right">
      <a target="_blank" href="{$system['system_url']}/{$user->_data['user_name']}" class="btn btn-sm btn-info">
        <i class="fa fa-user"></i><span class="ml5 d-none d-lg-inline-block">{__("View Profile")}</span>
      </a>
    </div>
  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=social">
    <div class="card-body">
      <div class="row">
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Facebook Profile URL")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text bg-transparent"><i class="fab fa-facebook fa-lg" style="color: #3B579D"></i></span>
            </div>
            <input type="text" class="form-control" name="facebook" value="{$user->_data['user_social_facebook']}">
          </div>
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Twitter Profile URL")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text bg-transparent"><i class="fab fa-twitter fa-lg" style="color: #55ACEE"></i></span>
            </div>
            <input type="text" class="form-control" name="twitter" value="{$user->_data['user_social_twitter']}">
          </div>
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("YouTube Profile URL")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text bg-transparent"><i class="fab fa-youtube fa-lg" style="color: #E62117"></i></span>
            </div>
            <input type="text" class="form-control" name="youtube" value="{$user->_data['user_social_youtube']}">
          </div>
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Instagram Profile URL")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text bg-transparent"><i class="fab fa-instagram fa-lg" style="color: #3f729b"></i></span>
            </div>
            <input type="text" class="form-control" name="instagram" value="{$user->_data['user_social_instagram']}">
          </div>
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Twitch Profile URL")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text bg-transparent"><i class="fab fa-twitch fa-lg" style="color: #9146ff"></i></span>
            </div>
            <input type="text" class="form-control" name="twitch" value="{$user->_data['user_social_twitch']}">
          </div>
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("LinkedIn Profile URL")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text bg-transparent"><i class="fab fa-linkedin fa-lg" style="color: #1A84BC"></i></span>
            </div>
            <input type="text" class="form-control" name="linkedin" value="{$user->_data['user_social_linkedin']}">
          </div>
        </div>

        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Vkontakte Profile URL")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text bg-transparent"><i class="fab fa-vk fa-lg" style="color: #527498"></i></span>
            </div>
            <input type="text" class="form-control" name="vkontakte" value="{$user->_data['user_social_vkontakte']}">
          </div>
        </div>
      </div>

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

{elseif $sub_view == "design"}
  <div class="card-header with-icon">
    <i class="fa fa-paint-brush mr10" style="color: #2b53a4;"></i>{__("Design")}
    <div class="float-right">
      <a target="_blank" href="{$system['system_url']}/{$user->_data['user_name']}" class="btn btn-sm btn-info">
        <i class="fa fa-user"></i><span class="ml5 d-none d-lg-inline-block">{__("View Profile")}</span>
      </a>
    </div>
  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=design">
    <div class="card-body">
      <div class="form-group form-row">
        <label class="col-md-3 form-control-label">
          {__("Profile Background")}
        </label>
        <div class="col-md-9">
          {if $user->_data['user_profile_background'] == ''}
            <div class="x-image">
              <button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
                <span>×</span>
              </button>
              <div class="x-image-loader">
                <div class="progress x-progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
              <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
              <input type="hidden" class="js_x-image-input" name="user_profile_background" value="">
            </div>
          {else}
            <div class="x-image" style="background-image: url('{$system['system_uploads']}/{$user->_data['user_profile_background']}')">
              <button type="button" class="close js_x-image-remover" title='{__("Remove")}'>
                <span>×</span>
              </button>
              <div class="x-image-loader">
                <div class="progress x-progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
              <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
              <input type="hidden" class="js_x-image-input" name="user_profile_background" value="{$user->_data['user_profile_background']}">
            </div>
          {/if}
        </div>
      </div>

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

{/if}