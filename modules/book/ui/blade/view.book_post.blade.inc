Book<?php
include_once UTILITY.'class.util.inc';
include_once MODULES_BOOK.'bao/class.book_post_bao.inc';

$_BookBAO = new BookBAO();
$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();

$userID="";
$userID = $_SESSION["globalUser"];

/* saving a new Book details*/
if(isset($_POST['request']))
{
	$Book = new Book();

	$Book->setTitle($_DB->secureInput($_POST['txtBookTitle']));

	$Book->setEdition($_DB->secureInput($_POST['txtBookEdition']));

	$Book->setWritter($_DB->secureInput($_POST['txtWritter']));

	$Book->setDescription($_DB->secureInput($_POST['txtDescription']));

	$Book->setUserID($_DB->secureInput($userID->getID()));

	$Book->setAmmount(strtolower($_DB->secureInput($_POST['txtAmmount'])));

	$Book->setContactNumber($_DB->secureInput($_POST['txtContactNumber']));

	$Result = $_BookBAO->newBookRequest($Book);

	if($Result->getIsSuccess()){
	   Util::printToast($Result->getResultObject());
	}
}
?>
