<div class="card-header with-icon">
  <i class="fa fa-comment-dollar mr10" style="color: #e91e63;"></i>{__("Monetization")}
</div>
<div class="card-body">
  {if $sub_view == ""}

    <div class="alert alert-primary">
      <div class="icon">
        <i class="fa fa-comment-dollar fa-2x"></i>
      </div>
      <div class="text">
        <strong>{__("Content Monetization")}</strong><br>
        {__("Now you can earn money from your content. Set your own price and your users pay for it.")}
        <br>
        {if $system['monetization_commission'] > 0}
          {__("There is commission")} <strong><span class="badge badge-pill badge-warning">{$system['monetization_commission']}%</span></strong> {__("will be deducted")}.
          <br>
        {/if}
        {if $system['monetization_money_withdraw_enabled']}
          {__("You can")} <a class="alert-link" href="{$system['system_url']}/settings/monetization/payments" target="_blank">{__("withdraw your money")}</a>
        {/if}
        {if $system['monetization_money_transfer_enabled']}
          {if $system['monetization_money_withdraw_enabled']}{__("or")} {/if}
          {__("You can transfer your money to your")} <a class="alert-link" href="{$system['system_url']}/wallet" target="_blank"><i class="fa fa-wallet"></i> {__("wallet")}</a>
        {/if}
      </div>
    </div>

    <div class="heading-small mb20">
      {__("Monetization Settings")}
    </div>
    <div class="pl-md-4">
      <form class="js_ajax-forms" data-url="users/settings.php?edit=monetization">
        <div class="form-table-row">
          <div class="avatar">
            {include file='__svg_icons.tpl' icon="paid_content" width="40px" height="40px"}
          </div>
          <div>
            <div class="form-control-label h6">{__("Content Monetization")}</div>
            <div class="form-text d-none d-sm-block">{__("Enable or disable monetization for your content")}</div>
          </div>
          <div class="text-right">
            <label class="switch" for="user_monetization_enabled">
              <input type="checkbox" name="user_monetization_enabled" id="user_monetization_enabled" {if $user->_data['user_monetization_enabled']}checked{/if}>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Monthly Price")} ({$system['system_currency']})
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="user_monetization_price" value="{$user->_data['user_monetization_price']}">
            <span class="form-text">
              {__("Set your monthly price for your content. You can change it anytime.")}
            </span>
          </div>
        </div>

        <div class="form-group form-row">
          <div class="col-md-9 offset-md-3">
            <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mb0 x-hidden"></div>
        <!-- error -->
      </form>
    </div>

    <div class="divider"></div>

    <div class="heading-small mb20">
      {__("Monetization Balance")}
    </div>
    <div class="pl-md-4">
      <div class="row">
        <!-- subscribers -->
        <div class="col-sm-6">
          <div class="section-title mb20">
            <i class="fas fa-users mr10"></i>{__("Profile Subscribers")}
          </div>
          <div class="stat-panel bg-gradient-info">
            <div class="stat-cell">
              <i class="fa fas fa-users bg-icon"></i>
              <div class="h3 mtb10">
                {$subscribers_count}
              </div>
            </div>
          </div>
        </div>
        <!-- subscribers -->

        <!-- money balance -->
        <div class="col-sm-6">
          <div class="section-title mb20">
            <i class="fa fa-donate mr10"></i>{__("Monetization Money Balance")}
          </div>
          <div class="stat-panel bg-gradient-primary">
            <div class="stat-cell">
              <i class="fa fa-donate bg-icon"></i>
              <div class="h3 mtb10">
                {print_money($user->_data['user_monetization_balance']|number_format:2)}
              </div>
            </div>
          </div>
        </div>
        <!-- monetization balance -->
      </div>
    </div>
  {elseif $sub_view == "payments"}
    <div class="heading-small mb20">
      {__("Withdrawal Request")}
    </div>
    <div class="pl-md-4">
      <form class="js_ajax-forms" data-url="users/withdraw.php?type=monetization">
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Your Balance")}
          </label>
          <div class="col-md-9">
            <h6>
              <span class="badge badge-lg badge-info">
                {print_money($user->_data['user_monetization_balance']|number_format:2)}
              </span>
            </h6>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Amount")} ({$system['system_currency']})
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="amount">
            <span class="form-text">
              {__("The minimum withdrawal request amount is")} {print_money($system['monetization_min_withdrawal'])}
            </span>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Payment Method")}
          </label>
          <div class="col-md-9">
            {if in_array("paypal", $system['monetization_payment_method_array'])}
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" name="method" id="method_paypal" value="paypal" class="custom-control-input">
                <label class="custom-control-label" for="method_paypal">{__("PayPal")}</label>
              </div>
            {/if}
            {if in_array("skrill", $system['monetization_payment_method_array'])}
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" name="method" id="method_skrill" value="skrill" class="custom-control-input">
                <label class="custom-control-label" for="method_skrill">{__("Skrill")}</label>
              </div>
            {/if}
            {if in_array("bank", $system['monetization_payment_method_array'])}
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" name="method" id="method_bank" value="bank" class="custom-control-input">
                <label class="custom-control-label" for="method_bank">{__("Bank Transfer")}</label>
              </div>
            {/if}
            {if in_array("custom", $system['monetization_payment_method_array'])}
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" name="method" id="method_custom" value="custom" class="custom-control-input">
                <label class="custom-control-label" for="method_custom">{__($system['monetization_payment_method_custom'])}</label>
              </div>
            {/if}
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Transfer To")}
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="method_value">
          </div>
        </div>

        <div class="form-group form-row">
          <div class="col-md-9 offset-md-3">
            <button type="submit" class="btn btn-primary">{__("Make a withdrawal")}</button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mb0 x-hidden"></div>
        <!-- error -->
      </form>
    </div>

    <div class="divider"></div>

    <div class="heading-small mb20">
      {__("Withdrawal History")}
    </div>
    <div class="pl-md-4">
      {if $payments}
        <div class="table-responsive mt20">
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th>{__("ID")}</th>
                <th>{__("Amount")}</th>
                <th>{__("Method")}</th>
                <th>{__("Transfer To")}</th>
                <th>{__("Time")}</th>
                <th>{__("Status")}</th>
              </tr>
            </thead>
            <tbody>
              {foreach $payments as $payment}
                <tr>
                  <td>{$payment@iteration}</td>
                  <td>{print_money($payment['amount']|number_format:2)}</td>
                  <td>
                    {if $payment['method'] == "custom"}
                      {$system['monetization_payment_method_custom']}
                    {else}
                      {$payment['method']|ucfirst}
                    {/if}
                  </td>
                  <td>{$payment['method_value']}</td>
                  <td>
                    <span class="js_moment" data-time="{$payment['time']}">{$payment['time']}</span>
                  </td>
                  <td>
                    {if $payment['status'] == '0'}
                      <span class="badge badge-pill badge-lg badge-warning">{__("Pending")}</span>
                    {elseif $payment['status'] == '1'}
                      <span class="badge badge-pill badge-lg badge-success">{__("Approved")}</span>
                    {else}
                      <span class="badge badge-pill badge-lg badge-danger">{__("Declined")}</span>
                    {/if}
                  </td>
                </tr>
              {/foreach}
            </tbody>
          </table>
        </div>
      {else}
        {include file='_no_transactions.tpl'}
      {/if}
    </div>
  {/if}
</div>