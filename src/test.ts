import fs from "node:fs";
import { Entity, Prop } from "./types";
import { createEntitiesModels } from "./createEntitiesModels";
import {
  createProcedure,
  deleteProcedure,
  selectAllProcedure,
  selectProcedure,
  updateProcedure,
} from "./procedures";

const sql = `Table "TipoEmpleado" {
  "codigoTipoEmpleado" int [pk, not null, increment]
  "descripcionTipoEmpleado" varchar(150) [not null]
}

Table "Empresas" {
  "codigoEmpresa" int [pk, not null, increment]
  "nombreEmpresa" varchar(150) [not null]
  "direccionEmpresa" varchar(150) [not null]
  "telefonoEmpresa" varchar(150) [not null]
}

Table "Empleados" {
  "codigoEmpleado" int [pk, not null, increment]
  "numeroEmpleado" int [not null]
  "apellidosEmpleado" varchar(150) [not null]
  "nombresEmpleado" varchar(150) [not null]
  "direccionEmpleado" varchar(150) [not null]
  "telefonoContacto" varchar(150) [not null]
  "gradoCocinero" int [not null]
  "codigoTipoEmpleado" int [not null]
}

Table "TipoPlato" {
  "codigoTipoPlato" int [pk, not null, increment]
  "descripcionTipoPlato" varchar(150) [not null]
}

Table "Productos" {
  "codigoProducto" int [pk, not null, increment]
  "nombreProducto" varchar(150) [not null]
  "cantidadProducto" int [not null]
}

Table "Servicios" {
  "codigoServicio" int [pk, not null, increment]
  "fechaServicio" date [not null]
  "tipoServicio" varchar(150) [not null]
  "horaServicio" time [not null]
  "lugarServicio" varchar(150) [not null]
  "telefonoContacto" varchar(150) [not null]
  "codiigoEmpresa" int [not null]
}

Table "Presupuestos" {
  "codigoPresupuesto" int [pk, not null, increment]
  "fechaSolicitud" date [not null]
  "cantidadPresupuesto" decimal(10,2) [not null]
  "codigoEmpresa" int [not null]
}

Table "Platos" {
  "codigoPlato" int [pk, not null, increment]
  "cantidad" int [not null]
  "nombrePlato" varchar(150) [not null]
  "descripcionPlato" decimal(10,2) [not null]
  "precioPlato" decimal(10,2) [not null]
  "codigoTipoPlato" int [not null]
}

Table "Productos_has_Platos" {
  "Productos_codigoProducto" int [pk, not null]
  "codigoPlato" int [not null]
  "codigoProducto" int [not null]
}

Table "Servicios_has_Platos" {
  "Servicios_codigoServicio" int [pk, not null]
  "codigoPlato" int [not null]
  "codigoServicio" int [not null]
}

Table "Servicios_has_Empleados" {
  "Servicios_codigoServicio" int [pk, not null]
  "codigoEmpleado" int [not null]
  "codigoServicio" int [not null]
  "fechaEvento" date [not null]
  "horaEvento" time [not null]
  "lugarEvento" varchar(150) [not null]
}
`;

const entities = createEntitiesModels(sql);

const entitiesProcedures = entities.map((entity) => {
  return [
    { create: createProcedure(entity) },
    { update: updateProcedure(entity) },
    { delete: deleteProcedure(entity) },
    { select: selectProcedure(entity) },
    { selectAll: selectAllProcedure(entity) },
  ];
});

const procedures = entitiesProcedures
  .map((entity: {}[]) => {
    return entity.map((procedure) => Object.values(procedure)).join("\n");
  })
  .join(
    "\n ###################################################################################################################### \n"
  );

fs.writeFileSync("procedures.sql", procedures);
