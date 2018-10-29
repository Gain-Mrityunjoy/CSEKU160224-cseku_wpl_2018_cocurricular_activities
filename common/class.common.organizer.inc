<?php

class CCAORGANIZER
{
	private $_catagory;
    private $_IDG;




   public function setOrganizer ($organizer) {
        $this->_organizer = $organizer;
    }

    public function getOrganizer () {
        return $this->_organizer;
    }
     public function setidg ($IDG) {
        $this->_IDG = $IDG;
    }

    public function getidg () {
        return $this->_IDG;
    }


}




?>