
<!-- Cart -->
<section class="bgwhite p-t-70 p-b-100">
<div class="container">
<!-- Cart item -->
<div class="pos-relative">
<div class="bgwhite">

	<h1><?php echo $title ?></h1><hr>
	<div class="clearfix"></div>
	<br></br>

	
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
					<td>Password Baru</td>
					<td><input type="password" name="password" class="form-control" placeholder="Password" value="<?php echo set_value('password') ?>" required></td>
				</tr>
				
				<tr>
					<td></td>
					<td>
						<button class="btn btn-success btn-lg" type="submit">
							<i class=""></i> Login
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
</section>
