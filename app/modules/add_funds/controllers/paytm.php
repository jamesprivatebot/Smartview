<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class paytm extends MX_Controller {
	public $tb_users;
	public $tb_transaction_logs;
	public $stripeapi;
	public $payment_type;
	public $currency_code;
	public $mode;

	public function __construct(){
		parent::__construct();
		$this->tb_users            = USERS;
		$this->tb_transaction_logs = TRANSACTION_LOGS;
		$this->payment_type		   = "paytm";
		$this->mode 			   = get_option("paytm_payment_environment", "TEST");
		$this->currency_code       = "INR";
		$this->load->library("paytmapi");
		$this->load->helper("paytm");
		$this->paytmapi = new paytmapi(get_option('paytm_merchant_key','o!Ay3xZDnXy6jwdD'), get_option('paytm_merchant_id','dmnuOm27150547533825'), $this->mode, 'SMMPanel');
	}

	public function index(){
		$path_file = APPPATH."./modules/setting/views/integrations/paytm.php";
        if (!file_exists($path_file)) {
        	redirect(cn('add_funds'));
        }
		$data = array(
			"module"        => 'add_funds',
			"amount"        => number_format((float)session('amount'), 2, '.', ''),
		);
		$this->template->build('paytm/paytm_form', $data);
	}

	/**
	 *
	 * Create payment
	 *
	 */
	public function create_payment(){
		$amount = session("amount");

		$checkSum = "";
		$paramList = array();

		$ORDER_ID = $_POST["ORDER_ID"];
		$CUST_ID = $_POST["CUST_ID"];
		$INDUSTRY_TYPE_ID = $_POST["INDUSTRY_TYPE_ID"];
		$CHANNEL_ID = $_POST["CHANNEL_ID"];
		$TXN_AMOUNT = $_POST["TXN_AMOUNT"];

		// Create an array having all required parameters for creating checksum.
		$paramList["MID"] = PAYTM_MERCHANT_MID;
		$paramList["ORDER_ID"] = $ORDER_ID;
		$paramList["CUST_ID"] = $CUST_ID;
		$paramList["INDUSTRY_TYPE_ID"] = $INDUSTRY_TYPE_ID;
		$paramList["CHANNEL_ID"] = $CHANNEL_ID;
		$paramList["TXN_AMOUNT"] = $TXN_AMOUNT;
		$paramList["WEBSITE"] = PAYTM_MERCHANT_WEBSITE;
		// callback url
		$paramList["CALLBACK_URL"] = cn("add_funds/paytm/complete");
		$checkSum = getChecksumFromArray($paramList, PAYTM_MERCHANT_KEY);

		$data = array(
			'paramList' => $paramList,
			'checkSum'  => $checkSum,
		);

		$this->load->view("paytm/redirect", $data);
		
	}

	public function complete(){
		$paytmChecksum = "";
		$paramList = array();
		$isValidChecksum = "FALSE";

		$paramList = $_POST;
		$paytmChecksum = isset($_POST["CHECKSUMHASH"]) ? $_POST["CHECKSUMHASH"] : ""; 

		if(PAYTM_MERCHANT_MID == $_POST["MID"]) {
			if ($_POST["STATUS"] == "TXN_SUCCESS") {
				$amount = round(($_POST["TXNAMOUNT"]/get_option('paytm_currency_rate_to_usd')), 2);
				/*----------  Insert to Transaction table  ----------*/
				$data = array(
					"ids" 				=> ids(),
					"uid" 				=> session("uid"),
					"type" 				=> $this->payment_type,
					"transaction_id" 	=> $_POST["TXNID"],
					"amount" 	        => $amount,
					"created" 			=> NOW,
				);

				$this->db->insert($this->tb_transaction_logs, $data);
				$transaction_id = $this->db->insert_id();

				/*----------  Add funds to user balance  ----------*/
				$user_balance = get_field($this->tb_users, ["id" => session("uid")], "balance");

				/*----------  Convert to USD  ----------*/
				$user_balance += round((session('real_amount')/get_option('paytm_currency_rate_to_usd')), 2);

				$this->db->update($this->tb_users, ["balance" => $user_balance], ["id" => session("uid")]);
				unset_session("real_amount");
				/*----------  Send payment notification email  ----------*/
				if (get_option("is_payment_notice_email", '')) {
					$CI = &get_instance();
					if(empty($CI->payment_model)){
						$CI->load->model('model', 'payment_model');
					}
					$check_send_email_issue = $CI->payment_model->send_email(get_option('email_payment_notice_subject', ''), get_option('email_payment_notice_content', ''), session('uid'));
					if($check_send_email_issue){
						ms(array(
							"status" => "error",
							"message" => $check_send_email_issue,
						));
					}
				}
				set_session("transaction_id", $transaction_id);
				redirect(cn("add_funds/success"));

			} else {
				redirect(cn("add_funds/unsuccess"));
			}
		}
		else {
			redirect(cn("add_funds/unsuccess"));
		}
	}

}