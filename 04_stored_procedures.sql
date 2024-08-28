USE GestionBiblioteca;

-- Procedimiento almacenado para registrar un préstamo
DELIMITER //
CREATE PROCEDURE RegistrarPrestamo(IN libro INT, IN usuario INT)
BEGIN
    DECLARE disponible BOOLEAN;
    SELECT disponibilidad INTO disponible FROM Libros WHERE libro_id = libro;
    
    IF disponible THEN
        INSERT INTO Prestamos (libro_id, usuario_id, fecha_prestamo) 
        VALUES (libro, usuario, CURRENT_DATE);
        UPDATE Libros SET disponibilidad = FALSE WHERE libro_id = libro;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El libro no está disponible';
    END IF;
END//
DELIMITER ;
