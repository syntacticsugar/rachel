<?php
class Array{
	private $secret = "Shhh...";
	function $car($element) {
		return first($element);
	};

	function $caar($element) {
		return first(first($element));
	};
	function $cadr($element) {
		return first(last($element));
	};
	function $tell_secret(){
		return $this->$secret;
	}
};

(new Array())->$secret;//FATAL! POWERTHIRST
echo (new Array())->$tell_secret();//should work, yay!
$zoom = new Array();

class DinosaurMarkov{
// initialization stuff goes here
	//
	// okay here's my guess, ripping off of Ruby
	initialize($dino_name){
		$corpus = ();
	};	
	//
	//
// until then create other functions
	function $chain(){
	};

	private function $clean() {
	};

	function $build_pairs_table {
	};







}; //end class Dinosaur

?>
