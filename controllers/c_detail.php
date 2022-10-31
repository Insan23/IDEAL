<?php 
  
class c_detail
{
  private $config;
  
    function __construct($config){
      $this->config = $config;
      $router= new route();
    }

    function index(){
      include_once('./views/detail.php');
    }
}