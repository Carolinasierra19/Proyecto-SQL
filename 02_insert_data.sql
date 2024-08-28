USE GestionBiblioteca;

-- Insertar datos en la tabla de Autores
INSERT INTO Autores (nombre, pais_origen)
VALUES ('Gabriel García Márquez', 'Colombia'),
       ('Isabel Allende', 'Chile'),
       ('J.K. Rowling', 'Reino Unido');

-- Insertar datos en la tabla de Libros
INSERT INTO Libros (titulo, autor_id, anio_publicacion, categoria)
VALUES ('Cien Años de Soledad', 1, 1967, 'Novela'),
       ('La Casa de los Espíritus', 2, 1982, 'Novela'),
       ('Harry Potter y la Piedra Filosofal', 3, 1997, 'Fantasía');

-- Insertar datos en la tabla de Usuarios
INSERT INTO Usuarios (nombre, email)
VALUES ('Carolina Sierra', 'carolina@example.com'),
       ('Juan Pérez', 'juan@example.com');

-- Insertar datos en la tabla de Prestamos
INSERT INTO Prestamos (libro_id, usuario_id, fecha_prestamo)
VALUES (1, 1, '2024-08-01'),
       (2, 2, '2024-08-10');
