<?php
//notifikasi error
echo validation_errors('<div class="alert alert-warning">','</div>');

// form open
echo form_open(base_url('admin/rekening/tambah'),' class="form-horizontal"');
?>

<div class="form-group">
  <label class="col-md-2 control-label">Nama Bank</label>
<div class="col-md-5">
    <input type="text"	name="nama_bank" maxlength="50" class="form-control"  placeholder="Nama Bank" value="<?php echo set_value('nama_bank') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">No Rekening</label>
<div class="col-md-5">
    <input type="number"	name="nomor_rekening" class="form-control"  placeholder="No Rekening" value="<?php echo set_value('nomor_rekening') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label">Nama Pemilik Rekening </label>
<div class="col-md-5">
    <input type="text"  name="nama_pemilik" maxlength="50" class="form-control"  placeholder="Nama Pemilik Rekening (atas nama)" value="<?php echo set_value('nama_pemilik') ?>" required>
  </div>
</div>

<div class="form-group">
  <label class="col-md-2 control-label"></label>
<div class="col-md-5">
    <button class="btn btn-success btn-lg" name="submit" type="submit">
    	<i class="fa fa-save"></i> Simpan
    </button>

    <button class="btn btn-info btn-lg" name="reset" type="reset">
    	<i class="fa fa-times"></i> Hapus
    </button>
  </div>
</div>

<?php echo form_close(); ?>