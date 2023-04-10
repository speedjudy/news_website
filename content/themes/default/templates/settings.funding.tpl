<div class="card-header with-icon">
  <i class="fa fa-hand-holding-usd mr10" style="color: #4caf50;"></i>{__("Funding")}
</div>
<div class="card-body">
  <div class="alert alert-primary">
    <div class="icon">
      <i class="fa fa-hand-holding-usd fa-2x"></i>
    </div>
    <div class="text">
      <strong>{__("Funding System")}</strong><br>
      {if $system['funding_money_withdraw_enabled']}
        {__("You can withdraw your money")}
      {/if}
      {if $system['funding_money_transfer_enabled']}
        {if $system['funding_money_withdraw_enabled']}{__("or")} {/if}
        {__("You can transfer your money to your")} <a class="alert-link" href="{$system['system_url']}/wallet" target="_blank"><i class="fa fa-wallet"></i> {__("wallet")}</a>
      {/if}
    </div>
  </div>

  {if $system['funding_money_withdraw_enabled']}
    <div class="heading-small mb20">
      {__("Withdrawal Request")}
    </div>
    <div class="pl-md-4">
      <form class="js_ajax-forms" data-url="users/withdraw.php?type=funding">
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Your Balance")}
          </label>
          <div class="col-md-9">
            <h6>
              <span class="badge badge-lg badge-info">
                {print_money($user->_data['user_funding_balance']|number_format:2)}
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
              {__("The minimum withdrawal request amount is")} {print_money($system['funding_min_withdrawal'])}
            </span>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Payment Method")}
          </label>
          <div class="col-md-9">
            {if in_array("paypal", $system['funding_payment_method_array'])}
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" name="method" id="method_paypal" value="paypal" class="custom-control-input">
                <label class="custom-control-label" for="method_paypal">{__("PayPal")}</label>
              </div>
            {/if}
            {if in_array("skrill", $system['funding_payment_method_array'])}
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" name="method" id="method_skrill" value="skrill" class="custom-control-input">
                <label class="custom-control-label" for="method_skrill">{__("Skrill")}</label>
              </div>
            {/if}
            {if in_array("bank", $system['funding_payment_method_array'])}
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" name="method" id="method_bank" value="bank" class="custom-control-input">
                <label class="custom-control-label" for="method_bank">{__("Bank Transfer")}</label>
              </div>
            {/if}
            {if in_array("custom", $system['funding_payment_method_array'])}
              <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" name="method" id="method_custom" value="custom" class="custom-control-input">
                <label class="custom-control-label" for="method_custom">{__($system['funding_payment_method_custom'])}</label>
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
                      {$system['affiliate_payment_method_custom']}
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
  {else}
    <div class="row justify-content-center">
      <!-- money balance -->
      <div class="col-sm-6">
        <div class="section-title mb20">
          <i class="fas fa-donate mr10"></i>{__("Your Funding Balance")}
        </div>
        <div class="stat-panel bg-gradient-primary">
          <div class="stat-cell">
            <i class="fa fas fa-donate bg-icon"></i>
            <div class="h3 mtb10">
              {print_money($user->_data['user_funding_balance']|number_format:2)}
            </div>
          </div>
        </div>
      </div>
      <!-- money balance -->
    </div>
  {/if}
</div>