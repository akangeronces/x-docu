<?php

namespace App\Http\Controllers\Instansi;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index()
    {
        return view('instansi.home.index');
    }

}