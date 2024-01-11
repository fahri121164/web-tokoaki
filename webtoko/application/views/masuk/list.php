
<!-- Cart -->
<section class="bgwhite p-t-70 p-b-100">
<div class="container">
<!-- Cart item -->
<div class="pos-relative">
<div class="bgwhite">

	<h1><?php echo $title ?></h1><hr>
	<div class="clearfix"></div>
	<br></br>

	

	<p class="alert alert-success">Belum memiliki akun? Silahkan <a href="<?php echo base_url('registrasi') ?>" class="btn btn-info btn-sm">Registrasi disini</a></p>
	
	<div class="col-md-12">
		<?php
		// display error
		echo validation_errors('<div class="alert alert-warning">','</div>');

		// display notifikasi error login
		if($this->session->flashdata('warning')) {
			echo '<div class="alert alert-warning">';
			echo $this->session->flashdata('warning');
			echo '</div>';
		} 

		// display notifikasi sukses logout
		if($this->session->flashdata('sukses')) {
			echo '<div class="alert alert-warning">';
			echo $this->session->flashdata('sukses');
			echo '</div>';
		} 
		
		// form open
		echo form_open(base_url('masuk'), 'class="leave-comment"');  ?>

		<table class="table">
			
			<tbody>
				<tr>
					<td width="20%">Email (Username)</td>
					<td><input type="email" name="email" maxlength="50" class="form-control" placeholder="Email" value="<?php echo set_value('email') ?>" required></td>
				</tr>
				
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" class="form-control" placeholder="Password" value="<?php echo set_value('password') ?>" required></td>
				</tr>
				
				<tr>
					<td></td>
					<td>
						<button class="btn btn-success btn-lg" type="submit">
							<i class="fa fa-save"></i> Login
						</button>
						<button class="btn btn-default btn-lg" type="reset">
							<i class="fa fa-times"></i> Reset
						</button>
					</td>
				</tr>

			</tbody>
		</table>

		<p class=" alert-dange">Anda lupa password ? Silahkan klik <a href="<?php echo base_url('lupa_password') ?>" class="btn btn-danger btn-sm">Lupa password</a></p>


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
</section>
