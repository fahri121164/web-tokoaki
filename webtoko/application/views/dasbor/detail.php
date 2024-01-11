
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

			<table class="table table-bordered">
				<thead>
					<tr>
						<th width="20%">KODE TRANSAKSI</th>
						<th>: <?php echo $header_transaksi->kode_transaksi ?></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Tanggal</td>
						<td>: <?php echo date('d-m-Y',strtotime($header_transaksi->tanggal_transaksi)) ?></td>
					</tr>
					<tr>
						<td>Total Harga</td>
						<td>:Rp <?php echo number_format($header_transaksi->jumlah_transaksi,'0',',','.') ?></td>
					</tr>
					<tr>
						<td>Status Pembayaran</td>
						<td>: <?php echo $header_transaksi->status_bayar ?></td>
					</tr>
				</tbody>
			</table>

			<table class="table table-bordered" width="100%">
				<thead>
					<tr class="bg-primary">
						<th>NO</th>
						<th>KODE PRODUK</th>
						<th>NAMA PRODUK</th>
						<th>JUMLAH</th>
						<th>HARGA</th>
						<th>TOTAL</th>
					</tr>
				</thead>
				<tbody>
					<?php $i=1; foreach($transaksi as $transaksi) { ?>
					<tr>
						<td><?php echo $i ?></td>
						<td><?php echo $transaksi->kode_produk ?></td>
						<td><?php echo $transaksi->nama_produk ?></td>
						<td><?php echo number_format($transaksi->jumlah) ?></td>
						<td>Rp<?php echo number_format($transaksi->harga,'0',',','.') ?></td>
						<td>Rp<?php echo number_format($transaksi->total_harga,'0',',','.') ?></td>
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
