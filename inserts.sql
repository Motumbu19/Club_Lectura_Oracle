INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Estados Unidos', 'America', 'Dolar', 'Estadounidense');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Brasil', 'America', 'Real', 'Brasileño');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Reino Unido', 'Europa', 'Libra', 'Britanico');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Paises Bajos', 'Europa', 'Euro', 'Neerlandes');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Israel', 'Asia', 'Séquel', 'Israeli');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Suecia', 'Europa', 'Corona', 'Sueco');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Australia', 'Oceania', 'Dolar AUD', 'Australiano');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Argentina', 'America', 'Peso', 'Argentino');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'Alemania', 'Europa', 'Euro', 'Aleman');
INSERT INTO PAIS VALUES (seq_pais.NEXTVAL, 'India', 'Asia', 'Rupia', 'Indio');

-- 2. CIUDAD (Generará IDs del 1 al 8 automáticamente)
INSERT INTO CIUDAD VALUES (seq_ciudad.NEXTVAL, 9, 'Berlin');
INSERT INTO CIUDAD VALUES (seq_ciudad.NEXTVAL, 9, 'Friburgo');
INSERT INTO CIUDAD VALUES (seq_ciudad.NEXTVAL, 7, 'Melbourne');
INSERT INTO CIUDAD VALUES (seq_ciudad.NEXTVAL, 7, 'Sydney');
INSERT INTO CIUDAD VALUES (seq_ciudad.NEXTVAL, 7, 'Brisbane');
INSERT INTO CIUDAD VALUES (seq_ciudad.NEXTVAL, 10, 'Nueva Delhi');
INSERT INTO CIUDAD VALUES (seq_ciudad.NEXTVAL, 10, 'Mumbai');
INSERT INTO CIUDAD VALUES (seq_ciudad.NEXTVAL, 10, 'Agra');

-- 3. INSTITUCION (Generará IDs 1 y 2 automáticamente)
INSERT INTO INSTITUCION VALUES (seq_institucion.NEXTVAL, 'Biblioteca Central', 'biblioteca');
INSERT INTO INSTITUCION VALUES (seq_institucion.NEXTVAL, 'Universidad Nacional', 'universidad');

-- 4. CLUB DE LECTURA (Generará IDs del 1 al 8 automáticamente)
INSERT INTO CLUB_LECTURA VALUES (seq_club_lectura.NEXTVAL, 1, 9, 'Paginas de Berlín', 'Av. Principal 1', 111111, 'berlin@club.com', '10115', 'si', 1);
INSERT INTO CLUB_LECTURA VALUES (seq_club_lectura.NEXTVAL, 2, 9, 'Lectores de la Selva Negra', 'Calle 2', 222222, 'selva@club.com', '79098', 'no', NULL);
INSERT INTO CLUB_LECTURA VALUES (seq_club_lectura.NEXTVAL, 3, 7, 'Outback Readers', 'Av. 3', 333333, 'outback@club.com', '3000', 'si', 2);
INSERT INTO CLUB_LECTURA VALUES (seq_club_lectura.NEXTVAL, 4, 7, 'Sydney Book Society', 'Calle 4', 444444, 'sydney@club.com', '2000', 'no', NULL);
INSERT INTO CLUB_LECTURA VALUES (seq_club_lectura.NEXTVAL, 5, 7, 'Canguros de Tinta', 'Av. 5', 555555, 'canguros@club.com', '4000', 'si', 1);
INSERT INTO CLUB_LECTURA VALUES (seq_club_lectura.NEXTVAL, 6, 10, 'Letras del Ganges', 'Calle 6', 666666, 'ganges@club.com', '110001', 'si', NULL);
INSERT INTO CLUB_LECTURA VALUES (seq_club_lectura.NEXTVAL, 7, 10, 'Mentes de Mumbai', 'Av. 7', 777777, 'mumbai@club.com', '400001', 'no', 2);
INSERT INTO CLUB_LECTURA VALUES (seq_club_lectura.NEXTVAL, 8, 10, 'The Taj Mahal Reading Club', 'Calle 8', 888888, 'tajmahal@club.com', '282001', 'si', 1);

-- 5. CLUB ASOCIADO
INSERT INTO CLUB_ASOCIADO VALUES (1, 2); 
INSERT INTO CLUB_ASOCIADO VALUES (3, 4); 

-- 6. IDIOMA (Generará IDs del 1 al 4 automáticamente)
INSERT INTO IDIOMA VALUES (seq_idioma.NEXTVAL, 'Español');
INSERT INTO IDIOMA VALUES (seq_idioma.NEXTVAL, 'Ingles');
INSERT INTO IDIOMA VALUES (seq_idioma.NEXTVAL, 'Aleman');
INSERT INTO IDIOMA VALUES (seq_idioma.NEXTVAL, 'Hindi');

-- 7. REPRESENTANTE (Generará ID 1 automáticamente)
INSERT INTO REPRESENTANTE VALUES (seq_representante.NEXTVAL, 12345678, 'Carlos', 'Perez', 'Gomez', NULL, TO_DATE('1980-05-15', 'YYYY-MM-DD'), 4141234567, 'carlos@mail.com');

-- 8. MIEMBRO (Generará IDs del 1 al 3 automáticamente)
INSERT INTO MIEMBRO VALUES (seq_miembro.NEXTVAL, 20111222, 'Ana', 'Lopez', 'Ruiz', TO_DATE('1995-08-20', 'YYYY-MM-DD'), 4121234567, 'ana@mail.com', 1, NULL, 1, NULL);
INSERT INTO MIEMBRO VALUES (seq_miembro.NEXTVAL, 30111222, 'Luis', 'Gomez', 'Diaz', TO_DATE('2010-02-10', 'YYYY-MM-DD'), 4161234567, 'luis@mail.com', 9, NULL, 1, NULL);
INSERT INTO MIEMBRO VALUES (seq_miembro.NEXTVAL, 15111222, 'Maria', 'Rojas', 'Silva', TO_DATE('1990-11-30', 'YYYY-MM-DD'), 4241234567, 'maria@mail.com', 10, NULL, NULL, 1);

-- 9. I_M 
INSERT INTO I_M VALUES (1, 3, NULL, 1); 
INSERT INTO I_M VALUES (2, 2, NULL, 3); 
INSERT INTO I_M VALUES (3, 1, 1, NULL); 

-- 10. GRUPO LECTURA
INSERT INTO GRUPO_LECTURA VALUES (1, 1, 'adulto', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Lunes', '18:00');
INSERT INTO GRUPO_LECTURA VALUES (2, 3, 'joven', TO_DATE('2023-02-01', 'YYYY-MM-DD'), 'Viernes', '16:00');

-- 11. HISTORICO MEMBRESIA
INSERT INTO HISTORICO_MEMBRESIA VALUES (TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1, 1, NULL, 'activo', NULL);
INSERT INTO HISTORICO_MEMBRESIA VALUES (TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2, 3, NULL, 'activo', NULL);

-- 12. MEMBRESIA PAGO
INSERT INTO MEMBRESIA_PAGO VALUES (1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1, 1, 1, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'));

-- 13. AUTOR (Generará IDs del 1 al 16 automáticamente)
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Frank', NULL, 'Herbert', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Paulo', NULL, 'Coelho', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Ken', NULL, 'Follet', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Paula', NULL, 'Hawkins', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Stephen', NULL, 'King', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Arthur', NULL, 'Golden', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Ana', NULL, 'Frank', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Yuval', 'Noah', 'Harari', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Stieg', NULL, 'Larsson', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Khaled', NULL, 'Hosseini', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Markus', NULL, 'Zusak', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Horacio', NULL, 'Quiroga', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Aldous', NULL, 'Huxley', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Cassandra', NULL, 'Clare', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Louisa', 'May', 'Alcott', NULL, NULL);
INSERT INTO AUTOR VALUES (seq_autor.NEXTVAL, 'Christopher', NULL, 'Paolini', NULL, NULL);

-- 14. LIBRO 
INSERT INTO LIBRO VALUES ('ISBN-01', 'Dune', 1965, 'Ciencia ficcion en Arrakis', 412, 'novela', 'Politica y ecologia');
INSERT INTO LIBRO VALUES ('ISBN-02', 'El Alquimista', 1988, 'Viaje espiritual', 192, 'novela', 'Autodescubrimiento');
INSERT INTO LIBRO VALUES ('ISBN-03', 'Los Pilares de la Tierra', 1989, 'Construccion de una catedral', 1000, 'novela', 'Historia medieval');
INSERT INTO LIBRO VALUES ('ISBN-04', 'La Chica del Tren', 2015, 'Thriller psicologico', 320, 'novela', 'Misterio');
INSERT INTO LIBRO VALUES ('ISBN-05', 'It', 1986, 'Payaso terrorifico', 1138, 'novela', 'Terror infantil');
INSERT INTO LIBRO VALUES ('ISBN-06', 'Memorias de una Geisha', 1997, 'Vida de Chiyo', 448, 'novela', 'Cultura japonesa');
INSERT INTO LIBRO VALUES ('ISBN-07', 'El Diario de Ana Frank', 1947, 'Diario en la Segunda Guerra', 352, 'novela', 'Holocausto');
INSERT INTO LIBRO VALUES ('ISBN-08', 'Sapiens', 2011, 'Historia de la humanidad', 512, 'novela', 'Evolucion');
INSERT INTO LIBRO VALUES ('ISBN-09', 'Los Hombres que no Amaban...', 2005, 'Investigacion criminal', 672, 'novela', 'Misterio');
INSERT INTO LIBRO VALUES ('ISBN-10', 'Cometas en el Cielo', 2003, 'Amistad en Afganistan', 384, 'novela', 'Redencion');
INSERT INTO LIBRO VALUES ('ISBN-11', 'La Ladrona de Libros', 2005, 'Niña en la Alemania nazi', 584, 'novela', 'Segunda Guerra');
INSERT INTO LIBRO VALUES ('ISBN-12', 'Cuentos de la Selva', 1918, 'Relatos infantiles', 120, 'cuento', 'Naturaleza');
INSERT INTO LIBRO VALUES ('ISBN-13', 'Un Mundo Feliz', 1932, 'Distopia futurista', 288, 'novela', 'Control social');
INSERT INTO LIBRO VALUES ('ISBN-14', 'Ciudad de Hueso', 2007, 'Cazadores de sombras', 512, 'novela', 'Fantasia urbana');
INSERT INTO LIBRO VALUES ('ISBN-15', 'Mujercitas', 1868, 'Cuatro hermanas', 448, 'novela', 'Familia');
INSERT INTO LIBRO VALUES ('ISBN-16', 'Eragon', 2002, 'Joven y su dragon', 544, 'novela', 'Fantasia epica');

-- 15. L_M 
INSERT INTO L_M VALUES ('ISBN-01', 1);
INSERT INTO L_M VALUES ('ISBN-02', 2);
INSERT INTO L_M VALUES ('ISBN-03', 3);
INSERT INTO L_M VALUES ('ISBN-04', 4);
INSERT INTO L_M VALUES ('ISBN-05', 5);
INSERT INTO L_M VALUES ('ISBN-06', 6);
INSERT INTO L_M VALUES ('ISBN-07', 7);
INSERT INTO L_M VALUES ('ISBN-08', 8);
INSERT INTO L_M VALUES ('ISBN-09', 9);
INSERT INTO L_M VALUES ('ISBN-10', 10);
INSERT INTO L_M VALUES ('ISBN-11', 11);
INSERT INTO L_M VALUES ('ISBN-12', 12);
INSERT INTO L_M VALUES ('ISBN-13', 13);
INSERT INTO L_M VALUES ('ISBN-14', 14);
INSERT INTO L_M VALUES ('ISBN-15', 15);
INSERT INTO L_M VALUES ('ISBN-16', 16);

-- 16. PREFERENCIA
INSERT INTO PREFERENCIA VALUES (1, 'ISBN-01', 1);
INSERT INTO PREFERENCIA VALUES (2, 'ISBN-16', 1);

-- 17. G_LC 
INSERT INTO G_LC VALUES (TO_DATE('2023-03-01', 'YYYY-MM-DD'), 1, 1, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-03-31', 'YYYY-MM-DD'));
INSERT INTO G_LC VALUES (TO_DATE('2023-04-01', 'YYYY-MM-DD'), 2, 3, 2, TO_DATE('2023-02-20', 'YYYY-MM-DD'), NULL);

-- 18. CALENDARIO MES REUNION
INSERT INTO CALENDARIO_MES_REUNION VALUES (TO_DATE('2023-03-15', 'YYYY-MM-DD'), 1, 1, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'ISBN-01', 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Buena introduccion', 'Se discutio el cap 1', 4, 'si');

-- 19. OBRA ACTUADA (Generará ID 1 automáticamente)
INSERT INTO OBRA_ACTUADA VALUES (seq_obra_actuada.NEXTVAL, 'ISBN-15', 1, 'Mujercitas en Teatro', 'Adaptacion teatral del libro', 10.50, 'si');

-- 20. PRESENTACION
INSERT INTO PRESENTACION VALUES (TO_DATE('2023-05-10', 'YYYY-MM-DD'), 1, 'ISBN-15', 1, 50, '5');

-- 21. ELENCO
INSERT INTO ELENCO VALUES (1, 1, 1, 'ISBN-15');

-- 22. MEJOR ACTOR
INSERT INTO MEJOR_ACTOR VALUES (1, 1, 1, 'ISBN-15', TO_DATE('2023-05-10', 'YYYY-MM-DD'));

-- 23. INASISTENCIA
INSERT INTO INASISTENCIA VALUES (TO_DATE('2023-03-15', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-03-01', 'YYYY-MM-DD'), 1, 1, 1, 'ISBN-01', 'justificada');