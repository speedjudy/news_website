<div class="card">
  <div class="card-header with-icon">
    <i class="fa fa-comment-dollar mr5"></i>{__("Content Monetization")}
    {if $sub_view == "payments"} &rsaquo; {__("Payment Requests")}{/if}
  </div>

  {if $sub_view == ""}

    <form class="js_ajax-forms" data-url="admin/monetization.php?do=settings">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            {include file='__svg_icons.tpl' icon="paid_content" width="40px" height="40px"}
          </div>
          <div>
            <div class="form-control-label h6">{__("Content Monetization Enabled")}</div>
            <div class="form-text d-none d-sm-block">
              {__("Enable content monetization to enable your users to earn money from their content")}<br>
              {__("Make sure you have configured")} <a href="{$system['system_url']}/{$control_panel['url']}/settings/payments">{__("Payments Settings")}</a>
            </div>
          </div>
          <div class="text-right">
            <label class="switch" for="monetization_enabled">
              <input type="checkbox" name="monetization_enabled" id="monetization_enabled" {if $system['monetization_enabled']}checked{/if}>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Who Can Monetize Content")}
          </label>
          <div class="col-md-9">
            <select class="form-control selectpicker" name="monetization_permission">
              <option value="admins" {if $system['monetization_permission'] == "admins"}selected{/if} data-content="<div class='option'><div class='icon'><i class='fa fa-lock fa-lg fa-fw'></i></div><div class='text'><b>{__("Admins")}</b><span class='d-none d-md-inline'><br>{__("Only Admins and Moderators")}</span></div></div>">{__("Admins")}</option>
              <option value="pro" {if $system['monetization_permission'] == "pro"}selected{/if} data-content="<div class='option'><div class='icon'><i class='fa fa-rocket fa-lg fa-fw'></i></div><div class='text'><b>{__("Pro Users")}</b><span class='d-none d-md-inline'><br>{__("Only Admins, Moderators and Pro Users")}</span></div></div>">{__("Pro Users")}</option>
              <option value="verified" {if $system['monetization_permission'] == "verified"}selected{/if} data-content="<div class='option'><div class='icon'><i class='fa fa-check-circle fa-lg fa-fw'></i></div><div class='text'><b>{__("Verified Users")}</b><span class='d-none d-md-inline'><br>{__("Only Admins, Moderators, Pro and Verified Users")}</span></div></div>">{__("Verified Users")}</option>
              <option value="everyone" {if $system['monetization_permission'] == "everyone"}selected{/if} data-content="<div class='option'><div class='icon'><i class='fa fa-globe fa-lg fa-fw'></i></div><div class='text'><b>{__("Everyone")}</b><span class='d-none d-md-inline'><br>{__("Any user in the system can")}</span></div></div>">{__("Everyone")}</option>
            </select>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            {include file='__svg_icons.tpl' icon="wallet" width="40px" height="40px"}
          </div>
          <div>
            <div class="form-control-label h6">{__("Users Can Subscribe Via Wallet Balance")}</div>
            <div class="form-text d-none d-sm-block">
              {__("Enable users to subscribe via their wallet balance")}<br>
              {__("Make sure you have enabled")} <a href="{$system['system_url']}/{$control_panel['url']}/wallet">{__("Wallet System")}</a>
            </div>
          </div>
          <div class="text-right">
            <label class="switch" for="monetization_wallet_payment_enabled">
              <input type="checkbox" name="monetization_wallet_payment_enabled" id="monetization_wallet_payment_enabled" {if $system['monetization_wallet_payment_enabled']}checked{/if}>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            {include file='__svg_icons.tpl' icon="withdrawal" width="40px" height="40px"}
          </div>
          <div>
            <div class="form-control-label h6">{__("Users Can Withdraw Earned Money")}</div>
            <div class="form-text d-none d-sm-block">{__("If enabled users will be able to withdraw earned money")}</div>
          </div>
          <div class="text-right">
            <label class="switch" for="monetization_money_withdraw_enabled">
              <input type="checkbox" name="monetization_money_withdraw_enabled" id="monetization_money_withdraw_enabled" {if $system['monetization_money_withdraw_enabled']}checked{/if}>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Payment Method")}
          </label>
          <div class="col-md-9">
            <div class="custom-control custom-checkbox custom-control-inline">
              <input type="checkbox" class="custom-control-input" name="method_paypal" id="method_paypal" {if in_array("paypal", $system['monetization_payment_method_array'])}checked{/if}>
              <label class="custom-control-label" for="method_paypal">{__("PayPal")}</label>
            </div>
            <div class="custom-control custom-checkbox custom-control-inline">
              <input type="checkbox" class="custom-control-input" name="method_skrill" id="method_skrill" {if in_array("skrill", $system['monetization_payment_method_array'])}checked{/if}>
              <label class="custom-control-label" for="method_skrill">{__("Skrill")}</label>
            </div>
            <div class="custom-control custom-checkbox custom-control-inline">
              <input type="checkbox" class="custom-control-input" name="method_bank" id="method_bank" {if in_array("bank", $system['monetization_payment_method_array'])}checked{/if}>
              <label class="custom-control-label" for="method_bank">{__("Bank Transfer")}</label>
            </div>
            <div class="custom-control custom-checkbox custom-control-inline" id="js_custome-withdrawal">
              <input type="checkbox" class="custom-control-input" name="method_custom" id="method_custom" {if in_array("custom", $system['monetization_payment_method_array'])}checked{/if}>
              <label class="custom-control-label" for="method_custom">{__("Custom Method")}</label>
            </div>
            <span class="form-text">
              {__("Users can send withdrawal requests via any of these methods")}
            </span>
          </div>
        </div>

        <div id="js_custome-withdrawal-name" {if !in_array("custom", $system['monetization_payment_method_array'])}class="x-hidden" {/if}>
          <div class="form-group form-row">
            <label class="col-md-3 form-control-label">
              {__("Custom Method Name")}
            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="monetization_payment_method_custom" value="{$system['monetization_payment_method_custom']}">
              <span class="form-text">
                {__("Set the name of your custom withdrawal payment method")}
              </span>
            </div>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Minimum Withdrawal Request")} ({$system['system_currency']})
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="monetization_min_withdrawal" value="{$system['monetization_min_withdrawal']}">
            <span class="form-text">
              {__("The minimum amount of money so user can send a withdrawal request")}
            </span>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            {include file='__svg_icons.tpl' icon="wallet" width="40px" height="40px"}
          </div>
          <div>
            <div class="form-control-label h6">{__("Users Can Transfer Earned Money To Wallet")}</div>
            <div class="form-text d-none d-sm-block">
              {__("If wallet enabled users will be able to transfer earned money to their wallet")}<br>
              {__("Make sure you have enabled")} <a href="{$system['system_url']}/{$control_panel['url']}/wallet">{__("Wallet System")}</a>
            </div>
          </div>
          <div class="text-right">
            <label class="switch" for="monetization_money_transfer_enabled">
              <input type="checkbox" name="monetization_money_transfer_enabled" id="monetization_money_transfer_enabled" {if $system['monetization_money_transfer_enabled']}checked{/if}>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Commission")} (%)
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="monetization_commission" value="{$system['monetization_commission']}">
            <span class="form-text">
              {__("Leave it 0 if you don't want to get any commissions")}
            </span>
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

  {elseif $sub_view == "payments"}

    <div class="card-body">
      <div class="alert alert-primary">
        <div class="icon">
          <i class="fa fa-money-check-alt fa-2x"></i>
        </div>
        <div class="text">
          <strong>{__("Payment Requests")}</strong><br>
          {__("You will need to make the payments from your Paypal, Skrill, Bank Account... etc")}.<br>
          {__("After making the payment you can mark the payment request as paid")}.
        </div>
      </div>
      <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover js_dataTable">
          <thead>
            <tr>
              <th>{__("ID")}</th>
              <th>{__("User")}</th>
              <th>{__("Amount")}</th>
              <th>{__("Method")}</th>
              <th>{__("Transfer To")}</th>
              <th>{__("Actions")}</th>
            </tr>
          </thead>
          <tbody>
            {foreach $rows as $row}
              <tr>
                <td>{$row['payment_id']}</td>
                <td>
                  <a target="_blank" href="{$system['system_url']}/{$row['user_name']}">
                    <img class="tbl-image" src="{$row['user_picture']}">
                    {if $system['show_usernames_enabled']}{$row['user_name']}{else}{$row['user_firstname']} {$row['user_lastname']}{/if}
                  </a>
                </td>
                <td>{print_money($row['amount']|number_format:2)}</td>
                <td>
                  <span class="badge badge-pill badge-lg badge-{$row['method_color']}">
                    {$row['method']|ucfirst}
                  </span>
                </td>
                <td>{$row['method_value']}</td>
                <td>
                  <button data-toggle="tooltip" data-placement="top" title='{__("Mark as Paid")}' class="btn btn-sm btn-icon btn-rounded btn-success js_admin-withdraw" data-type="monetization" data-handle="approve" data-id="{$row['payment_id']}">
                    <i class="fa fa-check"></i>
                  </button>
                  <button data-toggle="tooltip" data-placement="top" title='{__("Decline")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-withdraw" data-type="monetization" data-handle="decline" data-id="{$row['payment_id']}">
                    <i class="fa fa-times"></i>
                  </button>
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>

  {/if}
</div>