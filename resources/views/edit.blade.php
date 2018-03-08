@extends('layouts.app')
@section('content')
<div class="container">
    @if($errors->any())
        @foreach ($errors->all() as $error)
            <div class="alert alert-dismissible alert-danger">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>Oye!</strong> {{ $error}}
            </div>
        @endforeach
    @endif
    <div class="panel panel-default">
      <div class="panel-heading">
         <h3 class="panel-title">  Actualizar un equipo</h3>
         </div>
         <div class="panel-body">
         <form class="form-horizontal" action="{{ route('update', $registros->id) }}" method="POST">
         {{csrf_field()}}
            <fieldset>  

                 <div class="form-group">
                <label for="inventario" class="col-md-2 control-label"># Inventario</label>

                <div class="col-md-10">
                    <input type="text" class="form-control" value="{{$registros->n_inventario}}" name="n_inventario" placeholder="123456">
                </div>
                </div>

                <div class="form-group">
                <label for="mac" class="col-md-2 control-label">MAC</label>

                <div class="col-md-10">
                    <input type="text" class="form-control" value="{{$registros->mac}}" name="mac" placeholder="XX:XX:XX:XX:XX:XX">
                </div>
                </div>

                <div class="form-group">
                <label for="ip" class="col-md-2 control-label">IP</label>

                <div class="col-md-10">
                    <input type="text" class="form-control" value="{{$registros->ip}}" name="ip" placeholder="XXX.XXX.XXX.XXX">
                </div>
                </div>

                <div class="form-group">
                <label for="Marca" class="col-md-2 control-label">Marca</label>

                <div class="col-md-10">
                    <input type="TEXT" class="form-control" value="{{$registros->marca}}" name="marca" placeholder="Lenovo">
                </div>
                </div>
                
                <div class="form-group">
                <label for="so" class="col-md-2 control-label">Sistema Operativo</label>

                <div class="col-md-10">
                    <input type="text" class="form-control" value="{{$registros->so}}" name="so" placeholder="Ubuntu">
                </div>
                </div>

                <div class="form-group">
                <label for="esp" class="col-md-2 control-label">Especificaciones</label>

                <div class="col-md-10">
                    <input type="text" class="form-control" value="{{$registros->esp}}" name="esp" placeholder="RAM 4GB - DD 500GB - INTEL CORE I5">
                </div>
                </div>
                
                <div class="form-group container">
                <div class="col-md-10 col-md-offset-2 text-right">
                        <br>
                        <a class="btn btn-info" href="{{route('home')}}">Cancel</a>
                    <button type="submit" class="btn btn-primary">Editar</button>

            </div>
                </div>
            </fieldset>
            </form>
         </div>
    </div>
</div>
@endsection
