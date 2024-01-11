<table class="table table-bordered">
<thead>
	<tr>
		<th width="20%">Nama Pelanggan</th>
		<th>: <?php echo $header_transaksi->nama_pelanggan ?></th>
	</tr>
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
		<td>:&nbsp;Rp <?php echo number_format($header_transaksi->jumlah_transaksi,'0',',','.') ?></td>
	</tr>
	<tr>
		<td>Status Pembayaran</td>
		<td>: <?php echo $header_transaksi->status_bayar ?></td>
	</tr>
	<tr>
		<td>Bukti Pembayaran</td>
		<td>: <?php if($header_transaksi->bukti_bayar =="") {echo 'Belum ada';}else{ ?>
				<img src="<?php echo base_url('assets/upload/image/'.$header_transaksi->bukti_bayar) ?>" class="img img-thumbnail" widht="50">
			<?php } ?>
		 </td>
	</tr>
	<tr>
		<td>Tanggal Pembayaran</td>
		<td>: <?php echo date ('d-m-Y',strtotime($header_transaksi->tanggal_bayar)) ?></td>
	</tr>
	<tr>
		<td>Jumlah Pembayaran</td>
		<td>: Rp. <?php echo number_format($header_transaksi->jumlah_bayar,'0',',','.') ?></td>
	</tr>
	<tr>
		<td>Pembayaran Dari</td>
		<td>: <?php echo $header_transaksi->nama_bank ?> No. rekening <?php echo $header_transaksi->rekening_pembayaran ?> a.n <?php echo $header_transaksi->rekening_pelanggan ?></td>
	</tr>
	<tr>
		<td>Pembayaran Ke Rekening</td>
		<td>: <?php echo $header_transaksi->bank ?> No. rekening <?php echo $header_transaksi->nomor_rekening ?> a.n <?php echo $header_transaksi->nama_pemilik ?></td>
	</tr>
</tbody>
</table>

<hr>

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