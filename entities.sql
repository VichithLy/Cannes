/*
drop table categorie;
drop table compagnon;
drop table equipe_film;
drop table equipe_film_assign;
drop table film;
drop table invite;
drop table invite_presse;
drop table jure;
drop table jury;
drop table jury_assign;
drop table personne;
drop table projection;
drop table projection_officielle;
drop table projection_presse;
drop table salle;
drop table seance_lendemain;
drop table vip;
*/
CREATE TABLE categorie (
    id_categorie    NUMBER PRIMARY KEY,
    nom_categorie   VARCHAR2(100) NOT NULL
);

CREATE TABLE compagnon (
    id_compagnon    NUMBER PRIMARY KEY,
    id_partenaire   NUMBER NOT NULL
);

CREATE TABLE equipe_film (
    id_equipe_film    NUMBER PRIMARY KEY,
    nom_film_equipe   VARCHAR2(100) NOT NULL
);

CREATE TABLE equipe_film_assign (
    id_equipe_film   NUMBER,
    id_personne      NUMBER,
    CONSTRAINT equipe_film_assign_fk_equipe FOREIGN KEY ( id_equipe_film )
        REFERENCES equipe_film ( id_equipe_film ),
    CONSTRAINT equipe_film_assign_fk_personne FOREIGN KEY ( id_personne )
        REFERENCES personne ( id_personne )
);

CREATE TABLE film (
    id_film            NUMBER PRIMARY KEY,
    nom_film_og        VARCHAR2(100) NOT NULL,
    nom_film_fr        VARCHAR2(100) NOT NULL,
    nom_realisateur    VARCHAR2(100) NOT NULL,
    annee_production   NUMBER NOT NULL,
    duree              NUMBER NOT NULL,
    date_sortie        DATE NOT NULL,
    id_categorie       NUMBER,
    pays_film          VARCHAR2(100),
    synopsis           VARCHAR2(100),
    CONSTRAINT film_fk_id_categorie FOREIGN KEY ( id_categorie )
        REFERENCES categorie ( id_categorie )
);

CREATE TABLE invite (
    id_personne   NUMBER PRIMARY KEY,
    CONSTRAINT invite_fk_invite FOREIGN KEY ( id_personne )
        REFERENCES personne ( id_personne )
);

CREATE TABLE invite_presse (
    id_invite_presse       NUMBER PRIMARY KEY,
    niveau_accreditation   VARCHAR2(100),
    compagnie              VARCHAR2(100),
    CONSTRAINT fk_invite_presse FOREIGN KEY ( id_invite_presse )
        REFERENCES personne ( id_personne )
);

CREATE TABLE jure (
    id_jure      NUMBER PRIMARY KEY,
    role_jure    VARCHAR2(100),
    biographie   VARCHAR2(100),
    CONSTRAINT jure_fk_vip FOREIGN KEY ( id_jure )
        REFERENCES vip ( id_vip )
);

CREATE TABLE jure_assign (
    id_jure   NUMBER,
    id_film   NUMBER,
    CONSTRAINT jure_assign_fk_id_jure FOREIGN KEY ( id_jure )
        REFERENCES jure ( id_jure ),
    CONSTRAINT jure_assign_fk_id_film FOREIGN KEY ( id_film )
        REFERENCES film ( id_film )
);

CREATE TABLE jury (
    id_jury        NUMBER PRIMARY KEY,
    nom_cat_jury   VARCHAR2(100)
);

CREATE TABLE jury_assign (
    id_jury   NUMBER,
    id_jure   NUMBER,
    CONSTRAINT jury_assign_fk_nom_cat_jury FOREIGN KEY ( id_jury )
        REFERENCES jury ( id_jury ),
    CONSTRAINT jury_assign_fk_nom_cat_jure FOREIGN KEY ( id_jure )
        REFERENCES jure ( id_jure )
);

CREATE TABLE personne (
    id_personne   NUMBER PRIMARY KEY,
    nom           VARCHAR2(100),
    prenom        VARCHAR2(100),
    profession    VARCHAR2(100)
);

CREATE TABLE projection (
    id_projection     NUMBER PRIMARY KEY,
    id_film           NUMBER,
    id_salle          NUMBER,
    date_projection   DATE,
    CONSTRAINT projection_fk_id_film FOREIGN KEY ( id_film )
        REFERENCES film ( id_film ),
    CONSTRAINT projection_fk_id_salle FOREIGN KEY ( id_salle )
        REFERENCES salle ( id_salle )
);

CREATE TABLE projection_officielle (
    id_projection   NUMBER PRIMARY KEY,
    /*
    id_film NUMBER,
    id_salle NUMBER,
    date_projection DATE,
    CONSTRAINT projection_officielle_fk_id_film FOREIGN KEY ( id_film )
        REFERENCES film ( id_film ),
    CONSTRAINT projection_officielle_fk_id_salle FOREIGN KEY ( id_salle )
        REFERENCES salle ( id_salle )
    */
    CONSTRAINT projection_officielle_fk_proj FOREIGN KEY ( id_projection )
        REFERENCES projection ( id_projection )
);

CREATE TABLE projection_presse (
    id_projection   NUMBER PRIMARY KEY,
    CONSTRAINT projection_presse_fk_proj FOREIGN KEY ( id_projection )
        REFERENCES projection ( id_projection )
);

CREATE TABLE seance_lendemain (
    id_seance_lendemain   NUMBER PRIMARY KEY,
    CONSTRAINT seance_lendemain_fk_projection FOREIGN KEY ( id_seance_lendemain )
        REFERENCES projection ( id_projection )
);

CREATE TABLE vip (
    id_vip             NUMBER PRIMARY KEY,
    pays_vip           VARCHAR2(100),
    photo              VARCHAR2(100),
    coeff_importance   NUMBER NOT NULL,
    id_compagnon       NUMBER,
    nationalite        VARCHAR2(100),
    CONSTRAINT invite_presse_fk_vip FOREIGN KEY ( id_vip )
        REFERENCES personne ( id_personne ),
    CONSTRAINT vip_fk_id_compagnon FOREIGN KEY ( id_compagnon )
        REFERENCES compagnon ( id_compagnon )
);
drop table vip cascade constraints;