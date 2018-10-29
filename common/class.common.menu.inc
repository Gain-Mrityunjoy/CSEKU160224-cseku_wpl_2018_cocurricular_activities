<?php

class CCAMENU
{
	private $_catagory;
    private $_ID;


    public function setCatagory ( $catagory ) {
        $this->_catagory = $catagory;
    }

    public function getCatagory () {
        return $this->_catagory;
    }

   public function setcatID( $ID ) {
        $this->_ID = $ID;
    }

    public function getcatID () {
        return $this->_ID;
    }


}




?>