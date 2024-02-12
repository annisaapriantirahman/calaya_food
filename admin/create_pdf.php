<?php
	require_once '../database.php';


	$query_select = 'select * from produk';
	$run_query_select = mysqli_query($conn, $query_select);

	$data = array();
	while($row = mysqli_fetch_assoc($run_query_select)){
		$data[] = $row;
	}

	// Function untuk membuat laporan PDF
	function create_pdf($data) {
		require_once('fpdf/fpdf.php');

		$pdf = new FPDF();
		$pdf->AddPage();

		$pdf->SetFont('Arial', 'B', 12);
		$pdf->Cell(10, 10, 'NO', 1, 0, 'C');
		$pdf->Cell(50, 10, 'NAMA', 1, 0, 'C');
		$pdf->Cell(30, 10, 'HARGA', 1, 0, 'C');
		$pdf->Cell(40, 10, 'KATEGORI', 1, 0, 'C');
		$pdf->Cell(60, 10, 'DESKRIPSI', 1, 1, 'C');

		$pdf->SetFont('Arial', '', 12);
		$nomor = 1;
		foreach($data as $row) {
			$pdf->Cell(10, 10, $nomor++, 1, 0, 'C');
			$pdf->Cell(50, 10, $row['namaproduk'], 1, 0);
			$pdf->Cell(30, 10, $row['hargaproduk'], 1, 0, 'C');
			$pdf->Cell(40, 10, $row['kategori'], 1, 0);
			$pdf->Cell(60, 10, $row['deskripsi'], 1, 1);
		}

		$pdf->Output('laporan_produk.pdf', 'D');
	}

	create_pdf($data);
?>
