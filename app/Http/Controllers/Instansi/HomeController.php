<?php

namespace App\Http\Controllers\Instansi;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Tiket;

class HomeController extends Controller
{
    public function index()
    {
        $tickets = Tiket::all();
        return view('instansi.home.index', compact('tickets'));
    }

    public function TambahUsul()
    {
        return view('instansi.home.TambahUsul');
    }

}