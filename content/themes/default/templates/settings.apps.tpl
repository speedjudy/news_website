<div class="card-header with-icon">
  <i class="fa fa-cubes mr10" style="color: #424242;"></i>{__("Apps")}
</div>
<div class="card-body">
  <div class="alert alert-primary">
    <div class="icon">
      <i class="fa fa-cubes fa-2x"></i>
    </div>
    <div class="text">
      <strong>{__("Apps")}</strong><br>
      {__("These are apps you've used to log into. They can receive information you chose to share with them.")}
    </div>
  </div>

  {if $apps}
    {foreach $apps as $app}
      <div class="form-table-row {if $app@last}mb0{/if}">
        <div class="avatar">
          <img class="tbl-image app-icon" src="{$system['system_uploads']}/{$app['app_icon']}">
        </div>
        <div>
          <div class="form-control-label h6 mb5">{$app['app_name']}</div>
          <div class="form-text d-none d-sm-block">{$app['app_description']}</div>
        </div>
        <div class="text-right">
          <button class="btn btn-sm btn-danger js_delete-user-app" data-id="{$app['app_auth_id']}">
            <i class="fas fa-trash mr5"></i>{__("Remove")}
          </button>
        </div>
      </div>
    {/foreach}
  {else}
    {include file='_no_data.tpl'}
  {/if}
</div>