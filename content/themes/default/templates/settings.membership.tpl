<div class="card-header with-icon">
  <i class="fa fa-id-card mr10" style="color: #009688;"></i>{__("Membership")}
</div>
<div class="card-body">
  <div class="alert alert-primary">
    <div class="icon">
      <i class="fa fa-id-card fa-2x"></i>
    </div>
    <div class="text">
      <strong>{__("Membership")}</strong><br>
      {__("Choose the Plan That's Right for You")}, {__("Check the package from")} <a class="alert-link" href="{$system['system_url']}/packages">{__("Here")}</a>
    </div>
  </div>

  <form>
    {if $user->_data['user_subscribed']}
      <div class="heading-small mb20">
        {__("Package Details")}
      </div>
      <div class="pl-md-4">
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Package")}
          </label>
          <div class="col-md-9">
            <p class="form-control-plaintext">
              {__($user->_data['package_name'])} ({print_money($user->_data['price'])}
              {if $user->_data['period'] == "life"}{__("Life Time")}{else}{__("per")} {if $user->_data['period_num'] != '1'}{$user->_data['period_num']}{/if} {__($user->_data['period']|ucfirst)}{/if})
            </p>
          </div>
        </div>
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Subscription Date")}
          </label>
          <div class="col-md-9">
            <p class="form-control-plaintext">
              {$user->_data['user_subscription_date']|date_format:"%e %B %Y"}
            </p>
          </div>
        </div>
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Expiration Date")}
          </label>
          <div class="col-md-9">
            <p class="form-control-plaintext">
              {if $user->_data['period'] == "life"}
                {__("Life Time")}
              {else}
                {$user->_data['subscription_end']|date_format:"%e %B %Y"} ({if $user->_data['subscription_timeleft'] > 0}{__("Remaining")} {$user->_data['subscription_timeleft']} {__("Days")}{else}{__("Expired")}{/if})
              {/if}
            </p>
          </div>
        </div>
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Boosted Posts")}
          </label>
          <div class="col-md-9">
            <p class="form-control-plaintext">
              {$user->_data['user_boosted_posts']}/{$user->_data['boost_posts']} (<a href="{$system['system_url']}/boosted/posts">{__("Manage")}</a>)
            </p>

            <div class="progress mb5">
              <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="{if $user->_data['boost_posts'] == 0}0{else}{($user->_data['user_boosted_posts']/$user->_data['boost_posts'])*100}{/if}" aria-valuemin="0" aria-valuemax="100" style="width: {if $user->_data['boost_posts'] == 0}0{else}{($user->_data['user_boosted_posts']/$user->_data['boost_posts'])*100}{/if}%"></div>
            </div>
          </div>
        </div>
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Boosted Pages")}
          </label>
          <div class="col-md-9">
            <p class="form-control-plaintext">
              {$user->_data['user_boosted_pages']}/{$user->_data['boost_pages']} (<a href="{$system['system_url']}/boosted/pages">{__("Manage")}</a>)
            </p>

            <div class="progress mb5">
              <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="{if $user->_data['boost_pages'] == 0}0{else}{($user->_data['user_boosted_pages']/$user->_data['boost_pages'])*100}{/if}" aria-valuemin="0" aria-valuemax="100" style="width: {if $user->_data['boost_pages'] == 0}0{else}{($user->_data['user_boosted_pages']/$user->_data['boost_pages'])*100}{/if}%"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="divider"></div>
      <div class="heading-small mb20">
        {__("Upgrade Package")}
      </div>
      <div class="pl-md-4">
        <div class="text-center">
          <a href="{$system['system_url']}/packages" class="btn btn-md btn-success"><i class="fa fa-rocket mr10"></i>{__("Upgrade Package")}</a>
        </div>
      </div>
    {else}
      <div class="text-center">
        <a href="{$system['system_url']}/packages" class="btn btn-md btn-success"><i class="fa fa-rocket mr10"></i>{__("Upgrade to Pro")}</a>
      </div>
    {/if}
  </form>
</div>