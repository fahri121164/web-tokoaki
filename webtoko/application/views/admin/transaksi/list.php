<table class="table table-bordered" width="100%">
	<thead>
		<tr class="bg-success">
			<th>NO</th>
			<th>PELANGGAN</th>
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
			<td><?php echo $header_transaksi->nama_pelanggan ?>
				<br><small>
					Telepon: <?php echo $header_transaksi->telepon ?>
					<br>Email: <?php echo $header_transaksi->email ?>
					<br>Alamat Pengiriman: <br> <?php echo nl2br($header_transaksi->alamat) ?>
				</small>
			</td>
			<td><?php echo $header_transaksi->kode_transaksi ?></td>
			<td><?php echo date('d-m-Y',strtotime($header_transaksi->tanggal_transaksi)) ?></td>
			<td><?php echo number_format($header_transaksi->jumlah_transaksi) ?></td>
			<td><?php echo $header_transaksi->total_item ?></td>
			<td><?php echo $header_transaksi->status_bayar ?></td>
			<td>
				<div class="btn-group">
					<a href="<?php echo base_url('admin/transaksi/detail/'.$header_transaksi->kode_transaksi) ?>" class="btn btn-success btn-sm"> Detail</a>&nbsp;
					<a href="<?php echo base_url('admin/transaksi/editMenu') ?>" class="btn btn-warning btn-sm"> Ubah Status</a>
				</div>
			</td>
		</tr>
		<?php $i++; } ?>
	</tbody>
</table>