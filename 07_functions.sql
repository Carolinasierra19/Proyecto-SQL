USE GestionBiblioteca;

-- Función para calcular la cantidad de días que un libro ha estado en préstamo
DELIMITER //
CREATE FUNCTION DiasPrestamo(libro INT) RETURNS INT
BEGIN
    DECLARE dias INT;
    SELECT DATEDIFF(NOW(), fecha_prestamo) INTO dias 
    FROM Prestamos
    WHERE libro_id = libro AND fecha_devolucion IS NULL;
    RETURN dias;
END//
DELIMITER ;
