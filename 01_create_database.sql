-- Crear la base de datos
CREATE DATABASE GestionBiblioteca;
USE GestionBiblioteca;

-- Crear la tabla de Autores
CREATE TABLE Autores (
    autor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais_origen VARCHAR(50)
);

-- Crear la tabla de Libros
CREATE TABLE Libros (
    libro_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor_id INT,
    anio_publicacion INT,
    categoria VARCHAR(50),
    disponibilidad BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (autor_id) REFERENCES Autores(autor_id)
);

-- Crear la tabla de Usuarios
CREATE TABLE Usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro DATE DEFAULT CURRENT_DATE
);

-- Crear la tabla de Prestamos
CREATE TABLE Prestamos (
    prestamo_id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT,
    usuario_id INT,
    fecha_prestamo DATE DEFAULT CURRENT_DATE,
    fecha_devolucion DATE,
    FOREIGN KEY (libro_id) REFERENCES Libros(libro_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);
