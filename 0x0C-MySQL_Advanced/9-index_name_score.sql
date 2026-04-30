-- Script que crea un índice compuesto 'idx_name_first_score' en la tabla 'names'
-- utilizando la primera letra del nombre y la puntuación (score).
CREATE INDEX idx_name_first_score ON names (name(1), score);
