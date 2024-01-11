
<!-- Cart -->
<section class="bgwhite p-t-70 p-b-100">
<div class="container">
<!-- Cart item -->
<div class="pos-relative">
<div class="bgwhite">

	<h1><?php echo $title ?></h1><hr>
	<div class="clearfix"></div>
	<br></br>

	<?php if($this->session->flashdata('sukses')) {
		echo '<div class="alert alert-warning">';
		echo $this->session->flashdata('sukses');
		echo '</div>';
	} ?>

	<p class=" alert-success">Sudah memiliki akun? Silahkan <a href="<?php echo base_url('masuk') ?>" class="btn btn-info btn-sm">Login disini</a></p>
	
	<div class="col-md-12">
		<?php
		// display error
		echo validation_errors('<div class="alert alert-warning">','</div>');

		// form open
		echo form_open(base_url('registrasi'), 'class="leave-comment"');  ?>

		<table class="table">
			<thead>
				<tr>
					<th width="25%">Nama</th>
					<th><input type="text" name="nama_pelanggan"  class="form-control" placeholder="Nama Lengkap" value="<?php echo set_value('nama_pelanggan') ?>" required></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Email</td>
					<td><input type="email" name="email" maxlength="80" class="form-control" placeholder="Email" value="<?php echo set_value('email') ?>" required></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" maxlength="20" class="form-control" placeholder="Password" value="<?php echo set_value('password') ?>" required></td>
				</tr>
				<tr>
					<td>Telepon</td>
					<td><input type="text" name="telepon" maxlength="12"  onkeypress="return hanyaAngka(event);" class="form-control" placeholder="Telepon" value="<?php echo set_value('telepon') ?>" required></td>
				</tr>
				<tr>
					<td>Alamat</td>
					<td><textarea name="alamat" maxlength="100" class="form-control" placeholder="Alamat"><?php echo set_value('alamat') ?></textarea></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button class="btn btn-success btn-lg" type="submit">
							<i class="fa fa-save"></i> Simpan
						</button>
						<button class="btn btn-default btn-lg" type="reset">
							<i class="fa fa-times"></i> Reset
						</button>
					</td>
				</tr>
			</tbody>
		</table>
		

		<?php echo form_close(); ?>
	</div>
		
</div>
</div>


<div class="flex-w flex-m w-full-sm">
	

<div class="size10 trans-0-4 m-t-10 m-b-10">
	<!-- Button -->
	
	

</div>
</div>


</div>
<script type="text/javascript">
function hanyaAngka(evt){
var charCode = (evt.which) ? evt.which : event.keyCode
if (charCode > 31 && (charCode < 48 || charCode > 57))
	return false;
return true;
}
</script>
</section>
