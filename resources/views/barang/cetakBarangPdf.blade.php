<!DOCTYPE html>
<html>
<head>
<style>
  @page {
    /* size: 21cm 29.7cm;
    margin: 30mm 45mm 30mm 45mm; */
    size: A4;
        margin: 0;
     /* change the margins as you want them to be. */
}

#page {
  /* font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%; */
  width: 210mm;
  min-height: 297mm;
  padding: 20mm;
  margin: 10mm auto;
  border: 1px #D3D3D3 solid;
  border-radius: 5px;
  background: white;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);


  /* width: 21cm;
  min-height: 29.7cm;
  padding: 2cm;
  margin: 1cm auto;
  border: 1px #D3D3D3 solid;
  border-radius: 5px;
  background: white;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); */
}

#subpage{
  padding: 1cm;
        /* border: 5px red solid; */
        height: 257mm;
        /* outline: 2cm #FFEAEA solid; */
} 

#subpage th {
  border: 1px solid #ddd;
  padding: 8px;
}

#subpage tr:nth-child(even){background-color: #f2f2f2;}

#subpage tr:hover {background-color: #ddd;}

#subpage th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #04AA6D;
  color: white;
}

#subpage td {
  /* padding-top: 12px;
  padding-bottom: 12px; */
  text-align: center;
  /* background-color: #04AA6D;
  color: white; */
}

@media print {
        html, body {
            width: 210mm;
            height: 297mm;        
        }
        .page {
            margin: 0;
            border: initial;
            border-radius: initial;
            width: initial;
            min-height: initial;
            box-shadow: initial;
            background: initial;
            page-break-after: always;
        }
      }

* {
        -webkit-print-color-adjust: exact !important; /*Chrome, Safari */
        color-adjust: exact !important;  /*Firefox*/
    }
</style>
</head>
<body>
<div class="page">
<table id="subpage">

  <tr>
    <img src="/sarpras/public/img/kopYayasan.png" alt="Girl in a jacket" width="1000" height="auto">
    <th>No.</th>
    <th>QR Code</th>
    <th>Kode</th>
    <th>Tahun anggaran</th>
    <th>Nama Barang</th>
    <th>Merk/Type</th>
    <th>Tanggal Perolehan</th>
    <th>Rupiah satuan</th>
    <th>Jumlah</th>
    <th>Ruang</th>
    <th>Kondisi barang</th>

  </tr>
 
  <tbody>
          <?php $i=0; ?>
					@php
					$url = env('APP_URL') . '/scan-barcode/';
					@endphp
					@forelse($data as $k => $val)
					@php	
					$qrcode = \QrCode::size(100)->generate($url . $val->id);
					@endphp
					<tr>
            <td> {{ $i+=1 }}</td>
						<td>{!! $qrcode  !!}</td>
						<td>{{ $val->kode }}</td>
						<!-- <td>{{ $val->kode_lokasi }}</td> -->
						<td>{{ $val->tahun_anggaran }}</td>
						<!-- <td>{{ $val->kode_barang }}</td> -->
						<td>{{ $val->nama_barang }}</td>
						<!-- <td>{{ $val->nomor_aset }}</td> -->
						<!-- <td>{{ $val->subkelompok_barang }}</td> -->
						<td>{{ $val->merk_type }}</td>
						<td>{{ $val->tanggal_perolehan }}</td>
						<td>Rp.{{ Ribuan($val->rupiah_satuan) }}</td>
						<td>{{ $val->jumlah  }}</td>
						<td>{{ $val->nama_ruangan }}</td>
						<td>{{ $val->kondisi_barang }}</td>
					</tr>
					@empty
					<tr class="align-middle">
						<td colspan="13" class="text-center"><h5>Tidak ada data untuk ditampilkan</h5></td>
					</tr>
					@endforelse
				</tbody>


</table>
  

<input type="button" value="Click Me" id="button_id" onclick="myFunction()">
</div>
<script>
function myFunction() {
	
	var data = document.getElementById("subpage").value;
	var  datacount = (parseInt(data) + 1);
	document.getElementById("subpage").value = datacount;	
  document.getElementById("button_id").style.display = "none";
	document.getElementById("button_id").value = window.print();
  window.close();
}
setInterval(function(){
document.getElementById("button_id").click();	
}, 1000);
</script>


</body>
</html>