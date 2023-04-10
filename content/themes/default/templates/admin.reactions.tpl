<div class="card">
  <div class="card-header with-icon">
    {if $sub_view == "edit"}
      <div class="float-right">
        <a href="{$system['system_url']}/{$control_panel['url']}/reactions" class="btn btn-sm btn-light">
          <i class="fa fa-arrow-circle-left mr5"></i>{__("Go Back")}
        </a>
      </div>
    {/if}
    <i class="fa fa-grin-tears mr10"></i>{__("Reactions")}
    {if $sub_view == "edit"} &rsaquo; {__("Edit Reaction")}{/if}
  </div>

  {if $sub_view == ""}

    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover js_dataTable">
          <thead>
            <tr>
              <th>{__("ID")}</th>
              <th>{__("Action")}</th>
              <th>{__("Title")}</th>
              <th>{__("Image")}</th>
              <th>{__("Actions")}</th>
            </tr>
          </thead>
          <tbody>
            {foreach $rows as $row}
              <tr>
                <td>{$row['reaction_id']}</td>
                <td>{$row['reaction']}</td>
                <td><span class="badge badge-pill badge-lg badge-light" style="color: {$row['color']};">{$row['title']}</span></td>
                <td><img class="img-thumbnail table-img-thumbnail" src="{$system['system_uploads']}/{$row['image']}" width="38px" height="38px"></td>
                <td>
                  <a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/{$control_panel['url']}/reactions/edit/{$row['reaction_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
                    <i class="fa fa-pencil-alt"></i>
                  </a>
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>

  {elseif $sub_view == "edit"}

    <form class="js_ajax-forms" data-url="admin/reactions.php?do=edit&id={$data['reaction_id']}">
      <div class="card-body">
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Action")}
          </label>
          <div class="col-md-9">
            <span class="badge badge-pill badge-lg badge-success">{$data['reaction']}</span>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Title")}
          </label>
          <div class="col-md-9">
            <input class="form-control" name="title" value="{$data['title']}">
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Color")}
          </label>
          <div class="col-md-9">
            <div class="input-group js_colorpicker">
              <input type="text" class="form-control" name="color" value="{$data['color']}" />
              <span class="input-group-append">
                <span class="input-group-text colorpicker-input-addon"><i></i></span>
              </span>
            </div>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Image")}
          </label>
          <div class="col-md-9">
            {if $data['image'] == ''}
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
                <input type="hidden" class="js_x-image-input" name="image" value="">
              </div>
            {else}
              <div class="x-image" style="background-image: url('{$system['system_uploads']}/{$data['image']}')">
                <button type="button" class="close js_x-image-remover" title='{__("Remove")}'>
                  <span>×</span>
                </button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-image-input" name="image" value="{$data['image']}">
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
</div>