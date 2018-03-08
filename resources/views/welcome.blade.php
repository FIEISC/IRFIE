@extends('layouts.app')
@section('content')
    <div class="container">
            @if (session('successMsg'))
                <div class="alert alert-dismissible alert-success">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>¡Hecho!</strong> {{ session('successMsg') }}
                </div>
            @endif
            </div>
            <div class="container">
                <a class="btn btn-secondary" href="{{route('home')}}" >Inicio</a>
                <a class="btn btn-success" href="{{route('create')}}" >Agregar Equipo</a>
                    <div class="row">
                        <div class="span12">
                            <form id="custom-search-form" class="form-search form-horizontal pull-right">
                                {{csrf_field()}}
                                <div class="input-append span12">
                                    <input type="text" class="search-query text-center" name="search" placeholder="INVENTARIO">
                                    <button type="submit" class="btn">Buscar</button>
                                    <br><br>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>


                    <!-- TABLA -->
            <div class="container">
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.css" rel="stylesheet"/>
                    
                    <!--<table data-toggle="table" data-url="https://api.github.com/users/wenzhixin/repos?type=owner&sort=full_name&direction=asc&per_page=100&page=1" data-sort-name="stargazers_count" data-sort-order="desc"> -->
            <table data-toggle="table"  data-sort-order="desc">
                <thead>
                <tr >
                  <th class="text-center" data-sortable="true">Inventario</th>
                  <th class="text-center" data-sortable="true">MAC</th>
                  <th class="text-center" data-sortable="true">IP</th>
                  <th class="text-center" data-sortable="false">DETALLES</th>
                  <th class="text-center" data-sortable="false">ACCIÓN</th>
                </tr>
                </thead>
                <tbody>
                
            @foreach ($registros as $registro)
            <tr>
                <td>{{$registro->n_inventario}}</td>
                <td>{{$registro->mac}}</td>
                <td>{{$registro->ip}}</td>
                <td class=" text-center">
                    <!--{{$registro->esp}}-->
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal{{$registro->id}}">
                        Ver
                        
                    </button>
                    <!--{{$registro->esp}}-->
                    <!-- Button trigger modal -->
                    <div class="modal fade" id="exampleModal{{$registro->id}}"  aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">DETALLES</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <div class="modal-body">
                                        <h4>Especificaciones</h4>
                                         {{$registro->esp}}
                                        <h4>Sistema Operativo</h4>
                                         {{$registro->so}}
                                        <h4>Marca</h4>
                                         {{$registro->marca}}
                                </div>
                                <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                </div>
                            </div>
                            </div>
                    </div>   
                
                </td>
                <td class=" text-center"> 
                <div style="width:100%; height:100%" > 
                <a class="btn btn-warning" href="{{ url('/edit').'/'.$registro->id }}">Editar</a>
                <form method="POST" id="delete-form-{{$registro->id}}" action="{{route('delete',$registro->id)}}" style="display: none;">
                        {{csrf_field()}}
                        {{method_field('delete')}}
                </form>
                <button 
                onclick="if(confirm('¿Estás seguro que quieres eliminar el equipo?')){
                    event.preventDefault();
                    document.getElementById('delete-form-{{$registro->id}}').submit();
                }else{
                    event.preventDefault();
                }" 
                class="btn btn-danger fixed">Eliminar</button> 
                </div>
                </td>
            </tr>
            @endforeach
                
                </tbody>
              </table>
              

              <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
            <div>{{$registros->links()}}</div>
         
            </div>
@endsection
