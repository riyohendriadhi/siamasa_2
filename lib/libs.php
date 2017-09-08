<?php 

function translate_hari($dayname='')
{
	$hari = '';
	switch ($dayname) {
		case 'Sunday':
			$hari = 'Minggu';
			break;
		case 'Monday':
			$hari = 'Senin';
			break;
		case 'Tuesday':
			$hari = 'Selasa';
			break;
		case 'Wednesday':
			$hari = 'Rabu';
			break;
		case 'Thursday':
			$hari = 'Kamis';
			break;
		case 'Friday':
			$hari = 'Jum\'at';
			break;
		case 'Saturday':
			$hari = 'Sabtu';
			break;
		
		default:
			$hari = '-';
			break;
	}

	echo $hari;
}

function translate_hari_singkat($dayname='')
{
	$hari = '';
	switch ($dayname) {
		case 'Sun':
			$hari = 'Minggu';
			break;
		case 'Mon':
			$hari = 'Senin';
			break;
		case 'Tue':
			$hari = 'Selasa';
			break;
		case 'Wed':
			$hari = 'Rabu';
			break;
		case 'Thu':
			$hari = 'Kamis';
			break;
		case 'Fri':
			$hari = 'Jum\'at';
			break;
		case 'Sat':
			$hari = 'Sabtu';
			break;
		
		default:
			$hari = 'Hari ini '.$dayname ;
			break;
	}

	echo $hari;
}