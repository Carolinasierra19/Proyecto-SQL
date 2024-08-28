USE GestionBiblioteca;

-- Trigger para actualizar la disponibilidad de un libro cuando se registra una devolución
DELIMITER //
CREATE TRIGGER ActualizarDisponibilidadDespuesDevolucion
AFTER UPDATE ON Prestamos
FOR EACH ROW
BEGIN
    IF NEW.fecha_devolucion IS NOT NULL THEN
        UPDATE Libros SET disponibilidad = TRUE WHERE libro_id = NEW.libro_id;
    END IF;
END//
DELIMITER ;
