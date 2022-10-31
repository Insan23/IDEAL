<?php 
/**
* 
*/
class Ideal
{
	private $mysqli;
	function __construct($conn)
	{
		$this->mysqli = $conn;
	}
	public function ambilIndeksProduk($a)
	{
		$db = $this->mysqli->conn;
		$sql = "SELECT nama_produk, IndexMin, IndexMax FROM tb_produk WHERE `IndexMin` <='".$a."' AND '".$a."' < `IndexMax`";
		$query = $db->query($sql) or die ($db->error);
		foreach ($query as $key) {
			$output = array(
				'nama' => $key['nama_produk'],
				'mina' => $key['IndexMin'],
				'maxa' => $key['IndexMax']
			);

		}
				return $output;
		
	}
}
?>
