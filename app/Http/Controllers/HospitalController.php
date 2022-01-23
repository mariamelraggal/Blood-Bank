<?php

namespace App\Http\Controllers;
use App\Models\Hospital;
use Illuminate\Http\Request;

class HospitalController extends Controller
{
    public  static function search()
    {

        if (isset($_REQUEST['find_Blood'])) {

            if (empty($_POST['city']) || empty($_POST['blood'])) {
                //echo ("city or blood is invalid");
                return redirect('/'.'#searchID')->withErrors(['msg' => 'city or blood is invalid']);
            } else {
                $city_select = $_POST['city'];
                $blood_select = $_POST['blood'];
                $result = Hospital::where('City', 'LIKE', $city_select)->where($blood_select, '>', 0)
                    ->get();
                   return view('search', ['result' => $result],['blood_select' => $blood_select]);
            }
        }
    }
}
