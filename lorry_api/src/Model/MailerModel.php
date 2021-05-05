<?php

namespace APP\Model;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require __DIR__ . '/../../vendor/phpmailer/phpmailer/src/Exception.php';
require __DIR__ . '/../../vendor/phpmailer/phpmailer/src/PHPMailer.php';
require __DIR__ . '/../../vendor/phpmailer/phpmailer/src/SMTP.php';

use \ROMie\Components as Components;

class MailerModel {
    private $from;
    private $fromName;
    private $to;
    private $toName;
    private $subject;
    private $smtpHost;
    private $smtpUserName;
    private $smtpPassword;
    private $smtpPort;
    private $smtpEncryption;
    private $smtpMessage;
    private $objMailer;

    function __construct($arrMailerParams) {
        
        $this->from = $arrMailerParams['from'];
        $this->fromName = $arrMailerParams['fromName'];
        $this->smtpHost = $arrMailerParams['smtpHost'];
        $this->smtpUserName = $arrMailerParams['smtpUserName'];
        $this->smtpPassword = $arrMailerParams['smtpPassword'];
        $this->smtpPort = $arrMailerParams['smtpPort'];
        $this->smtpEncryption = $arrMailerParams['smtpEncryption'];
        
        $this->objMailer = new PHPMailer(true);


        //Server settings
        $this->objMailer->SMTPDebug = 0;
        $this->objMailer->isSMTP();
        $this->objMailer->Host = $this->smtpHost;
        $this->objMailer->SMTPAuth = true;
        $this->objMailer->Username  = $this->smtpUserName;
        $this->objMailer->Password = $this->smtpPassword;
        $this->objMailer->SMTPSecure = $this->smtpEncryption;
        $this->objMailer->Port = $this->smtpPort;
    }

    public function setTo($to = '') {
        $this->to = $to;
    }

    public function setToName($toName = '') {
        $this->toName = $toName;
    }

    public function setMessage($smtpMessage = '') {
        $this->smtpMessage = $smtpMessage;
    }

    public function setSubject($subject = '') {
        $this->subject = $subject;
    }

    public function sendMail() {
        try {

            $this->objMailer->setFrom($this->from, $this->fromName);
            $this->objMailer->addAddress($this->to, $this->toName);     // Add a recipient
            $this->objMailer->addReplyTo('milind@azguards.com', 'Information');
            
            //Content
            $this->objMailer->isHTML(true);                                  // Set email format to HTML
            $this->objMailer->Subject = $this->subject;
            $this->objMailer->Body    = $this->smtpMessage;

            $this->objMailer->send();

            return true;
        }
        catch (Exception $e) {
            // print 'Message could not be sent.';
            // print 'Mailer Error: ' . $this->objMailer->ErrorInfo;
            return false;
        }
    }
}

?>