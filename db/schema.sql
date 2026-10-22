create table clientes (
    id serial primary key,
    nombres varchar(100) not null,
    apellidos varchar(100) not null,
    dni varchar(8) unique not null,
    telefono varchar(15),
    correo varchar(255)
);

create table servicios (
    id serial primary key,
    nombre varchar(100) not null,
    precio decimal(10, 2) not null,
    duracion_minutos int not null
);

create table reservas (
    id serial primary key,
    cliente_id int references clientes(id),
    servicio_id int references servicios(id),
    fecha date not null,
    hora time not null,
    estado varchar(20) default 'pendiente'
);