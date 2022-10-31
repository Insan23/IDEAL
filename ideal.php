<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php 
	include('navbar.php');
	 ?>

	<h2><strong><p align="center">Badan Ideal</p></strong></h2>

	<div class="container-fluid">
		<div class="col-md-8 col-md-offset-2 ">
			<form method="POST" action="<?php echo $this->config['route']->getAlamatRoot().'?c=c_ideal&f=ideals'?>">
				<hr>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>Tinggi (Cm)</label>
							<input type="text" class="form-control border-input" name="tinggi" value="" >
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>Berat (Kg)</label>
							<input type="text" class="form-control border-input" name="berat" value="">
						</div>
					</div>
				</div>

				<hr>


				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<input type="submit" class="form-control btn-confirm-d btn-info btn-fill" value="Hitung" name="ideal">
						</div>
                            <!-- <a href="prosesideal.php"><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" value="Hitung" name="ideal">Hitung</button></a>
                            </div> -->


                        </div>
                    </div>

                </form>
            </div>
        </div>
    </body>
    </html>