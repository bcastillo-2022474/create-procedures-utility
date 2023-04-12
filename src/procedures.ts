import { Entity } from "./types";

export const createProcedure = (entity: Entity, isIncrementing = true) => {
  const props = isIncrementing ? entity.props.slice(1) : entity.props;
  const { title } = entity;
  return `
      delimiter $$
      create procedure sp_insert_${title}(in ${props
    .map(({ column, type }) => `sp_${column} ${type}`)
    .join(", in ")})
      begin
          insert into ${title}(${props.map(({ column }) => column).join(", ")})
          values(${props.map(({ column }) => `sp_${column}`).join(", ")});
      end$$
      delimiter ;
      `;
};

export const updateProcedure = ({ title, props }: Entity) => {
  const id = props[0].column;
  const procedure = `
    delimiter $$
    create procedure sp_update_${title}(in ${props
    .map(({ column, type }) => `sp_${column} ${type}`)
    .join(", in ")})
    begin
        update ${title} set ${props
    .map(({ column }) => `${column} = sp_${column}`)
    .join(", ")}
        where ${id} = sp_${id};
    end$$
    delimiter ;
    `;
  return procedure;
};

export const deleteProcedure = ({ title, props }: Entity) => {
  const id = props[0].column;
  return `
    delimiter $$
    create procedure sp_delete_${title}(in sp_${id} ${props[0].type})
    begin
        delete from ${title}
        where ${id} = sp_${id};
    end$$
    delimiter ;
    `;
};

export const selectProcedure = ({ title, props }: Entity) => {
  const id = props[0].column;
  const alias = title.toUpperCase()[0];
  const xd = props.join(` ${alias}.`);
  return `
    delimiter $$
    create procedure sp_select_${title}(in sp_${id} ${props[0].type})
    begin
        select ${alias}.${props
    .map(({ column }) => column)
    .join(`, ${alias}.`)} from ${title} ${alias}
        where ${id} = sp_${id};
    end$$
    delimiter ;
    `;
};

export const selectAllProcedure = ({ title, props }: Entity) => {
  const alias = title.toUpperCase()[0];
  return `
    delimiter $$
    create procedure sp_select_all_${title}()
    begin
        select ${alias}.${props
    .map(({ column }) => column)
    .join(`, ${alias}.`)} from ${title} ${alias};
    end$$
    delimiter ;
    `;
};
