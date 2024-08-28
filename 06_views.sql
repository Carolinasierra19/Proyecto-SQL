USE GestionBiblioteca;

-- Vista para mostrar el estado de los préstamos
CREATE VIEW VistaPrestamos AS
SELECT p.prestamo_id, l.titulo, u.nombre AS usuario, p.fecha_prestamo, p.fecha_devolucion
FROM Prestamos p
JOIN Libros l ON p.libro_id = l.libro_id
JOIN Usuarios u ON p.usuario_id = u.usuario_id;
