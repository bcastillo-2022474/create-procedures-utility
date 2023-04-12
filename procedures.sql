
      delimiter $$
      create procedure sp_insert_TipoEmpleado(in sp_descripcionTipoEmpleado varchar(150))
      begin
          insert into TipoEmpleado(descripcionTipoEmpleado)
          values(sp_descripcionTipoEmpleado);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_TipoEmpleado(in sp_codigoTipoEmpleado int, in sp_descripcionTipoEmpleado varchar(150))
    begin
        update TipoEmpleado set codigoTipoEmpleado = sp_codigoTipoEmpleado, descripcionTipoEmpleado = sp_descripcionTipoEmpleado
        where codigoTipoEmpleado = sp_codigoTipoEmpleado;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_TipoEmpleado(in sp_codigoTipoEmpleado int)
    begin
        delete from TipoEmpleado
        where codigoTipoEmpleado = sp_codigoTipoEmpleado;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_TipoEmpleado(in sp_codigoTipoEmpleado int)
    begin
        select T.codigoTipoEmpleado, T.descripcionTipoEmpleado from TipoEmpleado T
        where codigoTipoEmpleado = sp_codigoTipoEmpleado;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_TipoEmpleado()
    begin
        select T.codigoTipoEmpleado, T.descripcionTipoEmpleado from TipoEmpleado T;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Empresas(in sp_nombreEmpresa varchar(150), in sp_direccionEmpresa varchar(150), in sp_telefonoEmpresa varchar(150))
      begin
          insert into Empresas(nombreEmpresa, direccionEmpresa, telefonoEmpresa)
          values(sp_nombreEmpresa, sp_direccionEmpresa, sp_telefonoEmpresa);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Empresas(in sp_codigoEmpresa int, in sp_nombreEmpresa varchar(150), in sp_direccionEmpresa varchar(150), in sp_telefonoEmpresa varchar(150))
    begin
        update Empresas set codigoEmpresa = sp_codigoEmpresa, nombreEmpresa = sp_nombreEmpresa, direccionEmpresa = sp_direccionEmpresa, telefonoEmpresa = sp_telefonoEmpresa
        where codigoEmpresa = sp_codigoEmpresa;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Empresas(in sp_codigoEmpresa int)
    begin
        delete from Empresas
        where codigoEmpresa = sp_codigoEmpresa;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Empresas(in sp_codigoEmpresa int)
    begin
        select E.codigoEmpresa, E.nombreEmpresa, E.direccionEmpresa, E.telefonoEmpresa from Empresas E
        where codigoEmpresa = sp_codigoEmpresa;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Empresas()
    begin
        select E.codigoEmpresa, E.nombreEmpresa, E.direccionEmpresa, E.telefonoEmpresa from Empresas E;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Empleados(in sp_numeroEmpleado int, in sp_apellidosEmpleado varchar(150), in sp_nombresEmpleado varchar(150), in sp_direccionEmpleado varchar(150), in sp_telefonoContacto varchar(150), in sp_gradoCocinero int, in sp_codigoTipoEmpleado int)
      begin
          insert into Empleados(numeroEmpleado, apellidosEmpleado, nombresEmpleado, direccionEmpleado, telefonoContacto, gradoCocinero, codigoTipoEmpleado)
          values(sp_numeroEmpleado, sp_apellidosEmpleado, sp_nombresEmpleado, sp_direccionEmpleado, sp_telefonoContacto, sp_gradoCocinero, sp_codigoTipoEmpleado);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Empleados(in sp_codigoEmpleado int, in sp_numeroEmpleado int, in sp_apellidosEmpleado varchar(150), in sp_nombresEmpleado varchar(150), in sp_direccionEmpleado varchar(150), in sp_telefonoContacto varchar(150), in sp_gradoCocinero int, in sp_codigoTipoEmpleado int)
    begin
        update Empleados set codigoEmpleado = sp_codigoEmpleado, numeroEmpleado = sp_numeroEmpleado, apellidosEmpleado = sp_apellidosEmpleado, nombresEmpleado = sp_nombresEmpleado, direccionEmpleado = sp_direccionEmpleado, telefonoContacto = sp_telefonoContacto, gradoCocinero = sp_gradoCocinero, codigoTipoEmpleado = sp_codigoTipoEmpleado
        where codigoEmpleado = sp_codigoEmpleado;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Empleados(in sp_codigoEmpleado int)
    begin
        delete from Empleados
        where codigoEmpleado = sp_codigoEmpleado;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Empleados(in sp_codigoEmpleado int)
    begin
        select E.codigoEmpleado, E.numeroEmpleado, E.apellidosEmpleado, E.nombresEmpleado, E.direccionEmpleado, E.telefonoContacto, E.gradoCocinero, E.codigoTipoEmpleado from Empleados E
        where codigoEmpleado = sp_codigoEmpleado;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Empleados()
    begin
        select E.codigoEmpleado, E.numeroEmpleado, E.apellidosEmpleado, E.nombresEmpleado, E.direccionEmpleado, E.telefonoContacto, E.gradoCocinero, E.codigoTipoEmpleado from Empleados E;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_TipoPlato(in sp_descripcionTipoPlato varchar(150))
      begin
          insert into TipoPlato(descripcionTipoPlato)
          values(sp_descripcionTipoPlato);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_TipoPlato(in sp_codigoTipoPlato int, in sp_descripcionTipoPlato varchar(150))
    begin
        update TipoPlato set codigoTipoPlato = sp_codigoTipoPlato, descripcionTipoPlato = sp_descripcionTipoPlato
        where codigoTipoPlato = sp_codigoTipoPlato;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_TipoPlato(in sp_codigoTipoPlato int)
    begin
        delete from TipoPlato
        where codigoTipoPlato = sp_codigoTipoPlato;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_TipoPlato(in sp_codigoTipoPlato int)
    begin
        select T.codigoTipoPlato, T.descripcionTipoPlato from TipoPlato T
        where codigoTipoPlato = sp_codigoTipoPlato;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_TipoPlato()
    begin
        select T.codigoTipoPlato, T.descripcionTipoPlato from TipoPlato T;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Productos(in sp_nombreProducto varchar(150), in sp_cantidadProducto int)
      begin
          insert into Productos(nombreProducto, cantidadProducto)
          values(sp_nombreProducto, sp_cantidadProducto);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Productos(in sp_codigoProducto int, in sp_nombreProducto varchar(150), in sp_cantidadProducto int)
    begin
        update Productos set codigoProducto = sp_codigoProducto, nombreProducto = sp_nombreProducto, cantidadProducto = sp_cantidadProducto
        where codigoProducto = sp_codigoProducto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Productos(in sp_codigoProducto int)
    begin
        delete from Productos
        where codigoProducto = sp_codigoProducto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Productos(in sp_codigoProducto int)
    begin
        select P.codigoProducto, P.nombreProducto, P.cantidadProducto from Productos P
        where codigoProducto = sp_codigoProducto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Productos()
    begin
        select P.codigoProducto, P.nombreProducto, P.cantidadProducto from Productos P;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Servicios(in sp_fechaServicio date, in sp_tipoServicio varchar(150), in sp_horaServicio time, in sp_lugarServicio varchar(150), in sp_telefonoContacto varchar(150), in sp_codiigoEmpresa int)
      begin
          insert into Servicios(fechaServicio, tipoServicio, horaServicio, lugarServicio, telefonoContacto, codiigoEmpresa)
          values(sp_fechaServicio, sp_tipoServicio, sp_horaServicio, sp_lugarServicio, sp_telefonoContacto, sp_codiigoEmpresa);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Servicios(in sp_codigoServicio int, in sp_fechaServicio date, in sp_tipoServicio varchar(150), in sp_horaServicio time, in sp_lugarServicio varchar(150), in sp_telefonoContacto varchar(150), in sp_codiigoEmpresa int)
    begin
        update Servicios set codigoServicio = sp_codigoServicio, fechaServicio = sp_fechaServicio, tipoServicio = sp_tipoServicio, horaServicio = sp_horaServicio, lugarServicio = sp_lugarServicio, telefonoContacto = sp_telefonoContacto, codiigoEmpresa = sp_codiigoEmpresa
        where codigoServicio = sp_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Servicios(in sp_codigoServicio int)
    begin
        delete from Servicios
        where codigoServicio = sp_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Servicios(in sp_codigoServicio int)
    begin
        select S.codigoServicio, S.fechaServicio, S.tipoServicio, S.horaServicio, S.lugarServicio, S.telefonoContacto, S.codiigoEmpresa from Servicios S
        where codigoServicio = sp_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Servicios()
    begin
        select S.codigoServicio, S.fechaServicio, S.tipoServicio, S.horaServicio, S.lugarServicio, S.telefonoContacto, S.codiigoEmpresa from Servicios S;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Presupuestos(in sp_fechaSolicitud date, in sp_cantidadPresupuesto decimal(10,2), in sp_codigoEmpresa int)
      begin
          insert into Presupuestos(fechaSolicitud, cantidadPresupuesto, codigoEmpresa)
          values(sp_fechaSolicitud, sp_cantidadPresupuesto, sp_codigoEmpresa);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Presupuestos(in sp_codigoPresupuesto int, in sp_fechaSolicitud date, in sp_cantidadPresupuesto decimal(10,2), in sp_codigoEmpresa int)
    begin
        update Presupuestos set codigoPresupuesto = sp_codigoPresupuesto, fechaSolicitud = sp_fechaSolicitud, cantidadPresupuesto = sp_cantidadPresupuesto, codigoEmpresa = sp_codigoEmpresa
        where codigoPresupuesto = sp_codigoPresupuesto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Presupuestos(in sp_codigoPresupuesto int)
    begin
        delete from Presupuestos
        where codigoPresupuesto = sp_codigoPresupuesto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Presupuestos(in sp_codigoPresupuesto int)
    begin
        select P.codigoPresupuesto, P.fechaSolicitud, P.cantidadPresupuesto, P.codigoEmpresa from Presupuestos P
        where codigoPresupuesto = sp_codigoPresupuesto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Presupuestos()
    begin
        select P.codigoPresupuesto, P.fechaSolicitud, P.cantidadPresupuesto, P.codigoEmpresa from Presupuestos P;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Platos(in sp_cantidad int, in sp_nombrePlato varchar(150), in sp_descripcionPlato decimal(10,2), in sp_precioPlato decimal(10,2), in sp_codigoTipoPlato int)
      begin
          insert into Platos(cantidad, nombrePlato, descripcionPlato, precioPlato, codigoTipoPlato)
          values(sp_cantidad, sp_nombrePlato, sp_descripcionPlato, sp_precioPlato, sp_codigoTipoPlato);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Platos(in sp_codigoPlato int, in sp_cantidad int, in sp_nombrePlato varchar(150), in sp_descripcionPlato decimal(10,2), in sp_precioPlato decimal(10,2), in sp_codigoTipoPlato int)
    begin
        update Platos set codigoPlato = sp_codigoPlato, cantidad = sp_cantidad, nombrePlato = sp_nombrePlato, descripcionPlato = sp_descripcionPlato, precioPlato = sp_precioPlato, codigoTipoPlato = sp_codigoTipoPlato
        where codigoPlato = sp_codigoPlato;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Platos(in sp_codigoPlato int)
    begin
        delete from Platos
        where codigoPlato = sp_codigoPlato;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Platos(in sp_codigoPlato int)
    begin
        select P.codigoPlato, P.cantidad, P.nombrePlato, P.descripcionPlato, P.precioPlato, P.codigoTipoPlato from Platos P
        where codigoPlato = sp_codigoPlato;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Platos()
    begin
        select P.codigoPlato, P.cantidad, P.nombrePlato, P.descripcionPlato, P.precioPlato, P.codigoTipoPlato from Platos P;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Productos_has_Platos(in sp_codigoPlato int, in sp_codigoProducto int)
      begin
          insert into Productos_has_Platos(codigoPlato, codigoProducto)
          values(sp_codigoPlato, sp_codigoProducto);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Productos_has_Platos(in sp_Productos_codigoProducto int, in sp_codigoPlato int, in sp_codigoProducto int)
    begin
        update Productos_has_Platos set Productos_codigoProducto = sp_Productos_codigoProducto, codigoPlato = sp_codigoPlato, codigoProducto = sp_codigoProducto
        where Productos_codigoProducto = sp_Productos_codigoProducto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Productos_has_Platos(in sp_Productos_codigoProducto int)
    begin
        delete from Productos_has_Platos
        where Productos_codigoProducto = sp_Productos_codigoProducto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Productos_has_Platos(in sp_Productos_codigoProducto int)
    begin
        select P.Productos_codigoProducto, P.codigoPlato, P.codigoProducto from Productos_has_Platos P
        where Productos_codigoProducto = sp_Productos_codigoProducto;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Productos_has_Platos()
    begin
        select P.Productos_codigoProducto, P.codigoPlato, P.codigoProducto from Productos_has_Platos P;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Servicios_has_Platos(in sp_codigoPlato int, in sp_codigoServicio int)
      begin
          insert into Servicios_has_Platos(codigoPlato, codigoServicio)
          values(sp_codigoPlato, sp_codigoServicio);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Servicios_has_Platos(in sp_Servicios_codigoServicio int, in sp_codigoPlato int, in sp_codigoServicio int)
    begin
        update Servicios_has_Platos set Servicios_codigoServicio = sp_Servicios_codigoServicio, codigoPlato = sp_codigoPlato, codigoServicio = sp_codigoServicio
        where Servicios_codigoServicio = sp_Servicios_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Servicios_has_Platos(in sp_Servicios_codigoServicio int)
    begin
        delete from Servicios_has_Platos
        where Servicios_codigoServicio = sp_Servicios_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Servicios_has_Platos(in sp_Servicios_codigoServicio int)
    begin
        select S.Servicios_codigoServicio, S.codigoPlato, S.codigoServicio from Servicios_has_Platos S
        where Servicios_codigoServicio = sp_Servicios_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Servicios_has_Platos()
    begin
        select S.Servicios_codigoServicio, S.codigoPlato, S.codigoServicio from Servicios_has_Platos S;
    end$$
    delimiter ;
    
 ###################################################################################################################### 

      delimiter $$
      create procedure sp_insert_Servicios_has_Empleados(in sp_codigoEmpleado int, in sp_codigoServicio int, in sp_fechaEvento date, in sp_horaEvento time, in sp_lugarEvento varchar(150))
      begin
          insert into Servicios_has_Empleados(codigoEmpleado, codigoServicio, fechaEvento, horaEvento, lugarEvento)
          values(sp_codigoEmpleado, sp_codigoServicio, sp_fechaEvento, sp_horaEvento, sp_lugarEvento);
      end$$
      delimiter ;
      

    delimiter $$
    create procedure sp_update_Servicios_has_Empleados(in sp_Servicios_codigoServicio int, in sp_codigoEmpleado int, in sp_codigoServicio int, in sp_fechaEvento date, in sp_horaEvento time, in sp_lugarEvento varchar(150))
    begin
        update Servicios_has_Empleados set Servicios_codigoServicio = sp_Servicios_codigoServicio, codigoEmpleado = sp_codigoEmpleado, codigoServicio = sp_codigoServicio, fechaEvento = sp_fechaEvento, horaEvento = sp_horaEvento, lugarEvento = sp_lugarEvento
        where Servicios_codigoServicio = sp_Servicios_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_delete_Servicios_has_Empleados(in sp_Servicios_codigoServicio int)
    begin
        delete from Servicios_has_Empleados
        where Servicios_codigoServicio = sp_Servicios_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_Servicios_has_Empleados(in sp_Servicios_codigoServicio int)
    begin
        select S.Servicios_codigoServicio, S.codigoEmpleado, S.codigoServicio, S.fechaEvento, S.horaEvento, S.lugarEvento from Servicios_has_Empleados S
        where Servicios_codigoServicio = sp_Servicios_codigoServicio;
    end$$
    delimiter ;
    

    delimiter $$
    create procedure sp_select_all_Servicios_has_Empleados()
    begin
        select S.Servicios_codigoServicio, S.codigoEmpleado, S.codigoServicio, S.fechaEvento, S.horaEvento, S.lugarEvento from Servicios_has_Empleados S;
    end$$
    delimiter ;
    