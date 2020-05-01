create database universita;
  use universita;
   create table Studente(
     matricola int not null unique primary key check(matricola > 709300),
     corso_laurea varchar(20) not null, 
     nome varchar(20) not null, 
     cognome varchar(20) not null,
     data_nascita date check (data_nascita < '2003-01-01'), 
     codice_fiscale char(16) not null, 
     foto blob
   );
 
     create table Docente(
     matricola int not null auto_increment,
     dipartimento varchar(20) not null,
     nome varchar(20) not null,
     cognome varchar(20) not null,
     data_nascita date check (data_nascita < '2003-01-01'),
     codice_fiscale char(16) not null,
     foto blob,
     primary key(matricola)
     );
     
     create table Modulo(
     codice int not null auto_increment,
     nome varchar(20) not null,
     descrizione varchar(50),
     CFU int not null check(CFU > 3 and CFU <= 12),
     primary key(codice)
     );
     
     create table Esame(
     matricola_studente int not null,
     codice_modulo int not null, 
     matricola_docente int not null,
     data_esame date,
     voto int not null check (voto > 18 and voto <=30),
     note varchar(50),
     foreign key(matricola_studente) references Studente(matricola),
     foreign key(codice_modulo) references Modulo(codice),
     foreign key(matricola_docente) references Docente(matricola)
     );
     
    insert into studente(nome, corso_laurea, cognome, data_nascita, matricola, codice_fiscale)
     values('Carmela','ICD', 'Florio', '1991-06-23', 709320,'FLRCML87H24L049M');
    insert into studente(nome, corso_laurea, cognome, data_nascita, matricola, codice_fiscale)
     values('Mattia','ICD', 'Valente', '1991-05-13', 709321,'VLTMTT93H24L049M');
    insert into studente(nome, corso_laurea, cognome, data_nascita, matricola, codice_fiscale)
     values('Francesco','ICD', 'Guarino', '1993-06-24', 709322, 'GRNFNC93H24L049M');
     
     insert into docente(nome, cognome, dipartimento, matricola, data_nascita, codice_fiscale)
     values('Marco', 'DeGemmis', 'informatica', 1,'1973-06-25','DGMMRC93H24L049M');
	 insert into docente(nome, cognome, dipartimento, data_nascita, codice_fiscale)
     values('Fedelucio', 'Narducci','informatica', '1973-06-27','NRDFDC93H24049M');
     
	 insert into Modulo(codice, nome, CFU)
     values(1,'Linguaggi', 9);
     insert into Modulo(nome, CFU)
     values('Laboratorio', 9);
     
	 insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709320,1,1,'2019-06-27',30);
     insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709320,2,2,'2019-06-18', 26);
     insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709321.1,1,'2019-06-27',21);
     insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709321,2,2,'2019-06-18', 23);
     insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709322,1,1,'2019-06-27',30);
     insert into Esame(matricola_studente, codice_modulo, matricola_docente, data_esame, voto)
     values(709322,2,2,'2019-06-18', 28);
     
     
     
     
     
     
     
     
     
