<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
        $gurus = DB::table('data_guru')
                    ->join('tbl_jadwal','data_guru.id_guru', "=", 'tbl_jadwal.id_guru')
                    ->get();
        return view('soal3-0042',compact('gurus'));
    }

    public function selectJoinLike()
    {
        $gurus = DB::table('data_guru')
                    ->join('tbl_jadwal','data_guru.id_guru', "=", 'tbl_jadwal.id_guru')
                    ->where('nip','LIKE','%6')
                    ->get();
        return view('soal4-0042',compact('gurus'));
    }


}
