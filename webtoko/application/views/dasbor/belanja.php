
<!-- Content page -->
<section class="bgwhite p-t-55 p-b-65">
<div class="container">
	<div class="row">
		<div class="col-sm-6 col-md-3 col-lg-3 p-b-50">
			<div class="leftbar p-r-20 p-r-0-sm">
				<!--  -->
				<?php include('menu.php') ?>
			</div>
		</div>

		<div class="col-sm-6 col-md-9 col-lg-9 p-b-50">
				
				<h1><?php echo $title ?></h1>	
				<hr>
			<p>Berikut adalah riwayat belanja anda :</p>

			<?php 
			// kalau ada transaksi, tampilkan tabel
			if($header_transaksi) { 
			?>

			<table class="table table-bordered" width="100%">
				<thead>
					<tr class="bg-danger">
						<th>NO</th>
						<th>KODE TRANSAKSI</th>
						<th>TANGGAL</th>
						<th>JUMLAH TOTAL</th>
						<th>JUMLAH ITEM</th>
						<th>STATUS PEMBAYARAN</th>
						<th>ACTION</th>
					</tr>
				</thead>
				<tbody>
					<?php $i=1; foreach($header_transaksi as $header_transaksi) { ?>
					<tr>
						<td><?php echo $i ?></td>
						<td><?php echo $header_transaksi->kode_transaksi ?></td>
						<td><?php echo date('d-m-Y',strtotime($header_transaksi->tanggal_transaksi)) ?></td>
						<td><?php echo number_format($header_transaksi->jumlah_transaksi) ?></td>
						<td><?php echo $header_transaksi->total_item ?></td>
						<td><?php echo $header_transaksi->status_bayar ?></td>
						<td>
							<div class="btn-group">
								<a href="<?php echo base_url('dasbor/detail/'.$header_transaksi->kode_transaksi) ?>" class="btn btn-success btn-sm"> Detail</a>&nbsp;
								<a href="<?php echo base_url('dasbor/konfirmasi/'.$header_transaksi->kode_transaksi) ?>" class="btn btn-info btn-sm"> Konfirmasi Bayar</a>
							</div>
						</td>
					</tr>
					<?php $i++; } ?>
				</tbody>
			</table>

			<?php 
			// kalau gk ada tampilkan notifikasi
			}else{ ?>

				<p class="alert alert-success">
					<i class="fa fa-warning"></i> Belum ada data transaksi
				</p>

			<?php } ?>

						
		</div>
	</div>
</div>
</section>
