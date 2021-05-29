<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Guru;
use App\Models\Jadwal;

class GuruController extends Controller
{
    public function selectTable()
    {
        $gurus = Guru::all();
        return view('soal1-0042',compact('gurus'));
    }

    public function selectWhere()
    {
        $gurus = Guru::where('kelamin','laki-laki')->get();
        return view('soal2-0042',compact('gurus'));
    }

    public function selectJoin()
    {
        $gurus = Jadwal::join('tbl_jadwal','data_guru.id_guru', '=', 'tbl_jadwal.id_guru')
                        ->get(['tbl_jadwal.*']);
        // return view('soal2-0042',compact('gurus'));
        dd($gurus);
    }

    public function selectJoinLike()
    {
        $gurus = Guru::where('kelamin','laki-laki')->get();
        return view('soal2-0042',compact($gurus));
    }


}
