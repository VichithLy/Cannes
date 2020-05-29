commit ;

ALTER TABLE FILM
ADD (
    CONSTRAINT film_pk PRIMARY KEY (ID_FILM)
);

CREATE SEQUENCE VIP_SEQUENCE MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1;


create or replace TRIGGER personne_on_insert
    BEFORE INSERT ON PERSONNE
    FOR EACH ROW
BEGIN
    SELECT personne_sequence.nextval
    INTO :new.ID_PERSONNE
    FROM dual;
END personne_on_insert;