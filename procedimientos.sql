create function crearCliente (
    inputId varchar(20),
    inputnombre varchar(40),
    inputapellido varchar(100),
    inputcelular decimal(10,0),
    inputdireccion varchar(80),
    inputcorreoElectronico varchar(70))
    RETURNS void as $$
    BEGIN 
        insert into clientes (id, nombre, apellido,celular,direccion,correoelectronico)
        values 
        (inputId,inputnombre,inputapellido,inputcelular,inputdireccion,inputcorreoElectronico);
    END;
    $$ LANGUAGE plpgsql;
    
create function actualizarCliente(
    inputId varchar(20),
    inputnombre varchar(40),
    inputapellido varchar(100),
    inputcelular decimal(10,0),
    inputdireccion varchar(80),
    inputcorreoElectronico varchar(70))
    RETURNS void as $$
    BEGIN
    update clientes (id, nombre, apellido,celular,direccion,correoelectronico)
        values 
        (inputId,inputnombre,inputapellido,inputcelular,inputdireccion,inputcorreoElectronico);
    END;
    $$ LANGUAGE plpgsql;
    