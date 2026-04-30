-- Script que crea un índice 'idx_name_first' en la tabla 'names'
-- indexando solo la primera letra del campo 'name'.
CREATE INDEX idx_name_first ON names (name(1));
