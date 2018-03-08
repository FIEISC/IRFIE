<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\registro;

class registroController extends Controller
{
    // 
    public function index(Request $req)
    {
        if($req->search==""){
            $registros = registro::paginate(8);
            return view('welcome',compact('registros'));   
        }else{
            $registros= registro::where('n_inventario','LIKE','%'.$req->search.'%')->paginate(3);
            $registros->appends($req->only('search'));
            return view('welcome',compact('registros'));
        }
        //$registros = registro::paginate(8);
        //return view('welcome',compact('registros'));
    }
    public function create()
    {
        return view('create');
    }
    public function store(Request $request)
    {
        $this->validate($request,[
            'n_inventario'=>'required',
            'mac'=>'required',
            'ip'=>'required',
            'marca'=>'required',
            'so'=>'required',
            'esp'=>'required'
        ]);
        $registro = new registro;
        $registro->n_inventario=$request->n_inventario;
        $registro->mac=$request->mac;
        $registro->ip=$request->ip;
        $registro->marca=$request->marca;
        $registro->so=$request->so;
        $registro->esp=$request->esp;
        $registro->save();

        return redirect(route('home'))->with('successMsg','Agregado al Inventario exitosamente');
       }
       public function edit($id)
       {
        $registros = registro::find($id);
        return view('edit',compact('registros'));

       }
       public function update(Request $request, $id){
        $this->validate($request,[
            'n_inventario'=>'required',
            'mac'=>'required',
            'ip'=>'required',
            'marca'=>'required',
            'so'=>'required',
            'esp'=>'required'
        ]);
        $registro = registro::find($id);
        $registro->n_inventario=$request->n_inventario;
        $registro->mac=$request->mac;
        $registro->ip=$request->ip;
        $registro->marca=$request->marca;
        $registro->so=$request->so;
        $registro->esp=$request->esp;
        $registro->save();

        return redirect(route('home'))->with('successMsg','Actualizado exitosamente');

       }
    public function delete($id){
        registro::find($id)->delete();
        return redirect(route('home'))->with('successMsg','Eliminado exitosamente');
    }

}
