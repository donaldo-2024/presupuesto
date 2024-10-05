<?php

namespace App\Controllers;
use App\Models\ClienteModel;
use App\Models\PresupuestoModel;
use App\Models\MuebleModel;
use App\Models\ProductoModel;
use App\Models\ProveedorModel;
class ReporteController extends BaseController
{
    public function index()
    {
        $cliente= new ClienteModel();
        $data['cliente']= $cliente->findAll();
        return view('reporte/cliente', $data);
    }
    public function presupuesto()
    {
        $presupuesti= new PresupuestoModel();
        $data['presupuesto']= $presupuesti->findAll();
        return view('reporte/presupuesto', $data);
    }
    public function mueble()
    {
        $mueble= new MuebleModel();
        $data['mueble']= $mueble->findAll();
        return view('reporte/mueble', $data);
    }
    public function producto()
    {
        $producto= new ProductoModel();
        $data['producto']= $producto->findAll();
        return view('reporte/producto', $data);
    }
    public function proveedor()
    {
        $proveedor= new ProveedorModel();
        $data['proveedor']= $proveedor->findAll();
        return view('reporte/proveedor', $data);
    }
}