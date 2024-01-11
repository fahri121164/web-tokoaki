<table id="example1" class="table table-bordered table-striped">
<thead>
  
    <tr>
      <th>NO</th>
      <th>GAMBAR</th>
      <th>NAMA</th>
      <th>KATEGORI</th>
      <th>HARGA</th>
      <th>STATUS</th>
      
    </tr>
  </thead>
  <tbody>
    <?php $no=1; foreach($produk as $produk) { ?>
    <tr>
      <td><?php echo $no ?></td>
      <td>
        <img src="<?php echo base_url('assets/upload/image/thumbs/'.$produk->gambar) ?>" class="img img-responsive img-thumbnail" widht="60">
      </td>
      <td><?php echo $produk->nama_produk ?></td>
      <td><?php echo $produk->nama_kategori ?></td>
      <td><?php echo number_format($produk->harga,'0',',','.') ?></td>
      <td><?php echo $produk->status_produk ?></td>
      
    </tr>
    <?php $no++; } ?>
  </tbody>
  
  
</table>