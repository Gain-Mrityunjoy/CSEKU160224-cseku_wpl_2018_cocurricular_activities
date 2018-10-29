Book<?php
class Book{

    private $User_ID;
    private $_Title;
    private $_Edition;
    private $_Writter;
    private $_Ammount;
    private $_Description;
    private $_ContactNumber;
    private $_Date;


    public function setUserID ( $UserID ) {
        $this->User_ID = $UserID;
    }

    public function getUserID () {
        return $this->User_ID;
    }

    public function setDate( $Date )
    {
        $this->_Date = $Date;
    }

    public function getDate()
    {
        return $this->_Date;
    }

    public function setTitle( $Title ) {
        $this->_Title = $Title;
    }

    public function getTitle() {
        return $this->_Title;
    }

    public function setEdition ( $Edition ) {
        $this->_Edition = $Edition;
    }

    public function getEdition () {
        return $this->_Edition;
    }

    public function setWritter ( $Writter ) {
        $this->_Writter = $Writter;
    }

    public function getWritter () {
        return $this->_Writter;
    }

    public function setDescription ($Description) {
        $this->_Description = $Description;
    }

    public function getDescription () {
        return $this->_Description;
    }

    public function setAmmount ( $Ammount ) {
        $this->_Ammount = $Ammount;
    }

    public function getAmmount () {
        return $this->_Ammount;
    }

    public function setContactNumber ( $ContactNumber ) {
        $this->_ContactNumber = $ContactNumber;
    }

    public function getContactNumber () {
        return $this->_ContactNumber;
    }

}
?>
