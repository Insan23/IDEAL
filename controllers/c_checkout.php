<?php 
  
class c_checkout
{
  private $config;
  
    function __construct($config){
      $this->config = $config;
      $router= new route();
    }

    function index(){
      include_once('views/checkout.php');
    }}