USE GestionBiblioteca;

-- Consulta 1: Obtener todos los libros disponibles
SELECT * FROM Libros WHERE disponibilidad = TRUE;

-- Consulta 2: Obtener el historial de préstamos de un usuario
SELECT p.prestamo_id, l.titulo, p.fecha_prestamo, p.fecha_devolucion
FROM Prestamos p
JOIN Libros l ON p.libro_id = l.libro_id
WHERE p.usuario_id = 1;

-- Consulta 3: Contar la cantidad de libros por categoría
SELECT categoria, COUNT(*) AS cantidad
FROM Libros
GROUP BY categoria;

-- Consulta 4: Obtener los autores que tienen más de un libro en la biblioteca
SELECT a.nombre, COUNT(*) AS cantidad_libros
FROM Autores a
JOIN Libros l ON a.autor_id = l.autor_id
GROUP BY a.nombre
HAVING cantidad_libros > 1;
