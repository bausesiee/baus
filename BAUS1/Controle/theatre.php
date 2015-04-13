<?php
function contenuMenuD(){
				
						 if  ((!isset($_SESSION['login'])) && (!isset($_SESSION['pass']))){
							$session=false;
						 }
						 else{
							 $session=true;
							
						 }

				

								return $session;
				
				
			}
			
function desc(){
	$session=contenuMenuD();
	 require("./vue/theatre/theatre.tpl");
	 
}