
<?php 

include('./models/m_ideal.php');

class c_ideal
{
  private $config;
  
  function __construct($config){
      $this->config = $config;
      $router= new route();
  }

  function index(){
      include_once('./views/ideal.php');
  }
  function ideals(){
      if(!isset($_POST['hitung'])){
        $tinggi = $_POST['tinggi'];
        $berat= $_POST['berat'];
        $tinggi = $tinggi/100;
        $BMI;
        $persen;
        $BMI = $berat/($tinggi* $tinggi);
        $bmia =((18.5-$BMI)*($tinggi * $tinggi));
        $bmib =(($BMI-24.9)*($tinggi * $tinggi));

        if ($BMI <18.5) {
            $persen = $bmia / $berat * 100;

            echo("Anda Kurus, silahkan menambah " . $bmia . " Kg dari berat badan anda");

        } else if (($BMI >=18.5) && ($BMI<=24.9)){
            $persen = 1 + (0 / $berat * 100);
            echo 'Anda Ideal ';
        } else if (($BMI >25) && ($BMI<=29.9)){
            $persen = $bmib / $berat * 100;
            echo ("Anda Gemuk, silahkan mengurangi " . $bmib . " Kg dari berat badan anda");
        } else {
            $persen = $bmib / $berat * 100;
            echo ("Anda obesitas, silahkan menggurangi " .$bmib." Kg dari berat badan anda");
        }


        // echo ("   |   BMI anda = ".$BMI);
        // echo " | Anda Disarankan Menggunakan Produk <br>";
        // $data = $indeks->ambilIndeksProduk($persen);
        // echo " ".$data['nama']."<br>";

        echo ("   |   BMI anda = ".$BMI);
        echo " | Anda Disarankan Menggunakan Produk <br>";
        $indeks = new m_ideal();
        $data = $indeks->ambilIndeksProduk($persen);
        echo " ".$data['nama']."<br>";


    }}
}
    ?>
