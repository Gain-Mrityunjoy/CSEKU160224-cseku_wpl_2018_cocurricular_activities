<?php
include_once 'blade/view.book_list.blade.inc';
include_once COMMON.'class.common.inc';
include_once UTILITY.'class.util.inc';
?>

<div class="panel panel-default">
    <div class="panel-heading">
    </div>
    <div class="panel-body">
    	<?php
			$Result = $_BookListBAO->getAllBook();
			//if DAO access is successful to load all the Books then show them one by one
			if($Result->getIsSuccess()){
				$BookList = $Result->getResultObject();
				?>
				<?php
				for($i = 0; $i < sizeof($BookList); $i++) {
					$Book = $BookList[$i];
					?>
					<div >
              <h4 style="color:blue;"><p>#Post Number:  <?php echo $i+1 ?></p></h4>
					    <p ><span>Book Title: </span><?php echo $Book->getTitle(); ?></p>

					    <p ><span>Book Edition: </span> <?php echo $Book->getEdition(); ?></p>

					    <p ><span>Writter Name: </span><?php echo $Book->getWritter(); ?></p>

              <p ><span>Description: </span><?php echo $Book->getDescription(); ?></p>

					    <p ><span>Ammount: </span><?php echo $Book->getAmmount()." Taka"; ?></p>

					    <p ><span>Contact Number: </span><?php echo $Book->getContactNumber()?></p>

					    <p ><span>Post Date: </span><?php echo $Book->getDate()?></p></br>

					</div>
				<?php
				}
			}
			else{
				echo $Result->getResultObject(); //giving failure message
			}
		?>
    </div>
</div>
