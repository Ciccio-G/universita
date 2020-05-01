use universita;

/* inserimento nella tabella studente violando il vincolo sull attributo data di nascita */

insert into studente(nome, corso_laurea, cognome, data_nascita, matricola, codice_fiscale)
     values('Carmela','ICD', 'Florio', '2020-05-01', 709320,'FLRCML87H24L049M');
     
/* inserimento nella tabella studente violando il vincolo sull attributo data di nascita */

insert into docente(nome, cognome, dipartimento, matricola, data_nascita, codice_fiscale)
     values('Marco', 'DeGemmis', 'informatica', 1,'2020-05-01','DGMMRC93H24L049M');

/* inserimento nella tabella Modulo nella tabella studente violando il vincolo sull attributo data di nascita */

insert into Modulo(codice, nome, CFU)
     values(1,'Linguaggi', 13);

/* inserimento nella tabella Esame violando il referential integrity constrains sull attributo matricola studente */

 insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709328,2,2,'2019-06-18', 28);
     
/* inserimento nella tabella Esame  violando il referential integrity constrains sull attributo codice modulo */

 insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709322,8,2,'2019-06-18', 28);
     
/* inserimento nella tabella Esame violando il referential integrity constrains sull attributo matricola docente */

 insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709322,1,7,'2019-06-18', 28);