create table POSTANSKI_BROJEVI(ID_postanskog int, broj_postanskog int, PRIMARY KEY('ID_postanskog'));
        
        create table GRADOVI(ID_grada int, ime varchar(80), ID_drzave, PRIMARY KEY('ID_grada'));
        
        create table DRZAVE(ID_drzave int, naziv varchar(80), PRIMARY KEY('ID_drzave'));
        
        create table ADRESA(ID_adrese int, ime_ulice varchar(30), broj_ulice int, ID_postanskog_broja int, ID_grad int, PRIMARY KEY('ID_adrese'));
        
        create table ZAPOSLENICI(ID_zaposlenika int, ime varchar(20), prezime varchar (20), JMBG int, broj_telefona varchar(15), email varchar(30), datum_rodjenja date, ID_pozicije int,
        plata double, datum_zaposlenja date, ID_adrese int, PRIMARY KEY('ID_zaposlenika'));
        
        create table POZICIJA(ID_pozicija int, ime_pozicije varchar (50), PRIMARY KEY('ID_pozicija'));
        
        create table RACUNI(ID_racuna int , datum_placanja date, iznos double, kod_popusta varchar(15), broj_racuna varchar(15), ID_zaposlenika int, PRIMARY KEY('ID_racuna'));
        
        create table TRANSAKCIJE(ID_transakcije int, ID_racuna int, PRIMARY KEY('ID_transakcije'));
        
        create table STAVKE_RACUNA(ID_stavke int, ID_proizvoda int, ID_racuna int, cijena double, kolicina int, iznos double, iznos_sa_pdv double, jedinica_mjere varchar(5),  PRIMARY KEY('ID_stavke'));
        
        create table POPUSTI(kod_popusta varchar(20), popust int, PRIMARY KEY('kod_popusta'));
        
        create table NARUDZBE(ID_narudzbe int, ID_dostavljaca int, ID_racuna int, ID_korisnika int, PRIMARY KEY('Id_narudzbe'));
   
        
        create table PROIZVODI(ID_proizvoda int, naziv varchar(50), kolicina int, cijena double, sastojci varchar(200), PRIMARY KEY('ID_proizvoda'));
        
        create table STAVKE_NARUDZBE(ID_narudzbe int, ID_proizvoda int, kolicina int, detalji_narudzbe varchar(150));
        
        create table DOSTAVLJACI(ID_dostavljaca int, naziv varchar(40), ID_adrese int, broj_telefona varchar(15), PRIMARY KEY('ID_dostavljaca'));
        
        create table ONLINE_KORISNICI(ID_korisnika int, ime varchar(20), prezime varchar(20), datum_rodjenja date, broj_telefona varchar(15), email varchar(30), ID_adrese int, PRIMARY KEY('ID_korisnika'));
        
        
        
       INSERT INTO DRZAVE(ID_drzave, naziv)
       VALUES(1, 'Bosna i Hercegovina'), (2, 'Hrvatska'), (3, 'Srbija'), (4, 'Crna Gora'), (5, 'Zanzibar'), (6, 'Slovenija'), (7, 'Austrija'), (8, 'Somalija'), (9, 'Italija'), (10, 'Ukrajina');
       
       INSERT INTO GRADOVI(ID_grada, ime, ID_drzave)
       VALUES(1, 'Sarajevo', 1), (2, 'Mostar', 1), (3, 'Visoko', 1), (4, 'Travnik', 1), (5, 'Beograd', 3), (6, 'Zagreb', 2), (7, 'Tuzla', 1), (8, 'Maribor', 6), (9, 'Podgorica', 4), (10, 'Banja Luka', 1);
       
       INSERT INTO POSTANSKI_BROJEVI(ID_postanskog, broj_postanskog)
       VALUES(1, 71000), (2, 88000), (3, 71305), (4, 72270), (5, 101801), (6, 10000), (7, 75000), (8, 2000), (9, 81000), (10, 78000);
       
       INSERT INTO ADRESA(ID_adrese, ime_ulice, broj_ulice, ID_postanskog_broja, ID_grad)
       VALUES(1, 'Panjina Kula', 127, 1, 1), (2, 'Ulica Branilaca', 345, 3, 3), (3, 'Ulica Marsala Tita', 345, 2, 2), (4, 'Krndija', 456, 4, 4),
       (5, 'Arnoldova ulica', 567, 6, 6), (6, 'Banjicka ulica', 13, 5, 5), (7, 'Gornje Brdo', 27, 7, 7), (8, 'Ulica Alipasina', 32, 1, 1), (9, 'Donje Mostre', 11, 3, 3), (10, 'Koresova ulica', 77, 8, 8);
       
       INSERT INTO POZICIJA(ID_pozicija, ime_pozicije)
       VALUES (1, 'Konobar'), (2, 'Kuhar'), (3, 'Sanker'), (4, 'Cistacica'), (5, 'Menadzer'), (6, 'Sef');
       
       INSERT INTO ZAPOSLENICI(ID_zaposlenika, ime, prezime, JMBG, broj_telefona, email, datum_rodjenja, ID_pozicije, plata, datum_zaposlenja, ID_adrese)
       VALUES (1, 'Dusko', 'Dugousko', 1234567890, '061000000', 'dd@gmail.com', '2000-08-20', 1, 800, '2020-08-09', 2),
              (2, 'Marko', 'Markovic', 1234567891, '061111001', 'mmarkovic@gmail.com', '2001-06-01', 1,  1000, '2021-06-05', 1),
              (3, 'Pero', 'Perovic', 1234567892, '061111002', 'pperovic@gmail.com', '2001-07-02', 3,  900, '2021-06-06', 5),
              (4, 'Suljo', 'Suljic', 1234567893, '061111003', 'ssuljic@gmail.com', '2001-06-03', 2,  1100, '2019-06-05', 3),
              (5, 'Paja', 'Patak', 1234567894, '061111004', 'ppatak@gmail.com', '2001-12-13', 6,  2000, '2021-01-15', 4),
              (6, 'Miljana', 'Kulic', 1234567895, '061111005', 'mkulic@gmail.com', '2001-03-08', 4,  700, '2022-10-05', 10),
              (7, 'Mini', 'Maus', 1234567896, '061111006', 'mmaau@gmail.com', '1999-06-01', 5,  1200, '2020-08-05', 8),
              (8, 'Zuhra', 'Zuhric', 1234567897, '061111007', 'zzuhric@gmail.com', '2000-03-01', 2,  1150, '2022-07-15', 6),
              (9, 'Muniba', 'Muratic', 1234567898, '061111008', 'mmuratic@gmail.com', '2000-12-31', 1,  900, '2021-08-05', 9),
              (10, 'Lejla', 'Lelic', 1234567899, '061111009', 'llelic@gmail.com', '1998-08-01', 3,  1050, '2022-01-05', 7);
       
       INSERT INTO POPUSTI(kod_popusta, popust)
       VALUES ('AAA', 10), ('BBB', 20), ('CCC', 15), ('DDD', 5), ('EEE', 30), ('FFF', 0);
       
       INSERT INTO RACUNI(ID_racuna, datum_placanja, iznos, kod_popusta, broj_racuna, ID_zaposlenika)
       VALUES (1, '2022-12-06', 10.2, 'AAA', 111, 2),
       (2, '2022-12-05', 4.25, 'FFF', 112, 1),
       (3, '2022-12-04', 34, 'DDD', 123, 9),
       (4, '2022-12-04', 61.2, 'BBB', 124, 2),
       (5, '2022-12-03', 59.5, 'FFF', 125, 1),
       (6, '2022-11-29', 15.3, 'EEE', 126, 9),
       (7, '2022-12-06', 30.6, 'CCC', 127, 2),
       (8, '2022-12-01', 76.5, 'FFF', 128, 1),
       (9, '2022-12-01', 29.75, 'AAA', 129, 1),
       (10, '2022-12-04', 45.9, 'FFF', 130, 2);
       
       INSERT INTO PROIZVODI(ID_proizvoda, naziv, kolicina, cijena, sastojci)
       VALUES(1, 'Baklava', 100, 3, 'orasi, jufka, agda'),
       (2, 'Hurmasice', 120, 2.5, 'jaja, puter, agda, orasi'),
       (3, 'Kolac sa visnjom', 50, 4, 'visnja, jaja, brasno'),
       (4, 'Kinder bueno', 40, 4.5, 'cokolada, jaja, brasno, fil'),
       (5, 'Tufahije', 20, 3.5, 'jabuka, slag, orasi'),
       (6, 'Trilece', 34, 3, 'jaja, karamel, mlijeko, brasno'),
       (7, 'Cokoladna torta', 55, 3, 'cokolada, jaja, brasno, kakao'),
       (8, 'Lokum', 23, 3, 'puter, brasno, secer'),
       (9, 'Pita od jabuka', 150, 3.5, 'jabuka, jufka, agda, secer'),
       (10, 'Sampita', 34, 4.5, 'jaja, slag, secer, agda');
     
       
       INSERT INTO TRANSAKCIJE(ID_transakcije, ID_racuna)
       VALUES (222, 1), (333, 2), (444, 3), (555, 4), (666, 5), (777, 6), (888, 7), (999, 8), (111, 9), (000, 10);
       
       insert INTO STAVKE_RACUNA(ID_stavke, ID_proizvoda, ID_racuna, cijena, kolicina, iznos, iznos_sa_pdv, jedinica_mjere)
       VALUES (1, 1, 1, 3, 2, 6, 10.2, 'kom'), (2, 2, 2, 2.5, 1, 2.5, 4.25, 'kom'), (3, 3, 3, 4, 5, 20, 34, 'kom'), (4, 4, 4, 4.5, 8, 36, 61.2, 'kom'), (5, 5, 5, 3.5, 10, 35, 59.5, 'kom'),
              (6, 6, 6, 3, 3, 9, 15.3, 'kom'), (7, 7, 7, 3, 6, 18, 30.6, 'kom'), (8, 8, 8, 3, 15, 45, 76.5, 'kom'), (9, 9, 9, 3.5, 5, 17.5, 29.75, 'kom'), (10, 10, 10, 4.5, 6, 27, 45.9, 'kom');
        
        INSERT INTO ONLINE_KORISNICI(ID_korisnika, ime, prezime, datum_rodjenja, broj_telefona, email, ID_adrese)
        values (1, 'Misko', 'Miskic', '1996-03-08', '06000000', 'mmiskic@gmail.com', 2),
               (2, 'Marija', 'Maric', '2001-07-01', '06000001', 'mmaric@gmail.com', 1),
              (3, 'Predrag', 'Predragic',' 2000-11-10', '06000002', 'ppredragic@gmail.com', 5),
              (4, 'Suada', 'Suadic', '2001-03-06', '06000003', 'ssuadic@gmail.com', 3),
              (5, 'Petar', 'Peric', '2001-11-19', '06000004', 'pperic@gmail.com', 4),
              (6, 'Magdalena', 'Magdic', '2001-08-08', '06000005', 'mmagdic@gmail.com', 10),
              (7, 'Muvreta', 'Muvric', '1999-01-06', '06000006', 'mmuvric@gmail.com', 8),
              (8, 'Zehra', 'Zehric', '2000-01-03', '06000007', 'zzehric@gmail.com', 6),
              (9, 'Muhazreta', 'Muhazretic', '2000-7-24', '06000008', 'mmuhazretic@gmail.com', 9),
              (10, 'Lajla', 'Lajlic', '1998-10-01', '06000009', 'llajlic@gmail.com', 7);
        
        INSERT INTO DOSTAVLJACI(ID_dostavljaca, naziv, ID_adrese, broj_telefona)
        VALUES (1, 'Korpa', 5, '03300000'), (2, 'Glovo', 7, '03300001'), (3, 'Kosarica', 3, '03300002');
        
        INSERT INTO NARUDZBE(ID_narudzbe, ID_dostavljaca, ID_racuna, ID_korisnika)
        values (1, 3, 2, 1), (2, 2, 4, 3), (3, 1, 6, 5), (4, 1, 8, 7), (5, 2, 10, 9), (6, 3, 1, 2), (7, 3, 3, 4), (8, 2, 5, 6), (9, 1, 7, 8), (10, 2, 9, 10);
        
        INSERT INTO STAVKE_NARUDZBE(ID_narudzbe, ID_proizvoda, kolicina, detalji_narudzbe)
        VALUES (1, 2, 1, null), (2, 4, 8, null), (3, 6, 3, null), (4, 8, 15, null), (5, 10, 6, null),
               (6, 1, 3, null), (7, 3, 5, null), (8, 5, 10, null), (9, 7, 6, null), (10, 9, 5, null);
               
               
    CREATE TABLE DIMENZIJA_ZAPOSLENICI AS SELECT z.ID_zaposlenika, z.ime, z.prezime, z.jmbg, z.broj_telefona, z.email, z.datum_rodjenja, p.ime_pozicije, z.plata, z.datum_zaposlenja, a.ime_ulice, a.broj_ulice, pb.broj_postanskog, g.ime ime_grada, d.naziv naziv_drzave
               FROM ZAPOSLENICI z, POZICIJA p, ADRESA a, POSTANSKI_BROJEVI pb, GRADOVI g, DRZAVE d
               WHERE z.ID_pozicije=p.ID_pozicija AND z.ID_adrese=a.ID_adrese AND a.ID_postanskog_broja =pb.ID_postanskog AND a.ID_grad=g.ID_grada AND g.ID_drzave=d.ID_drzave;
               
               
               
               CREATE TABLE DIMENZIJA_PROIZVODI AS SELECT p.ID_proizvoda, p.naziv, p.cijena, p.sastojci, sr.jedinica_mjere
               FROM PROIZVODI p, STAVKE_RACUNA sr
               WHERE sr.ID_proizvoda=p.ID_proizvoda;
               

CREATE TABLE DIMENZIJA_DOSTAVLJACI AS SELECT d.ID_dostavljaca, d.naziv, d.broj_telefona,
a.ime_ulice, a.broj_ulice, pb.broj_postanskog, g.ime ime_grada, dr.naziv naziv_drzave 
FROM DOSTAVLJACI d, ADRESA a, POSTANSKI_BROJEVI pb, GRADOVI g, DRZAVE dr
WHERE d.ID_adrese=a.ID_adrese and pb.ID_postanskog=a.ID_postanskog_broja AND g.ID_grada=a.ID_grad AND dr.ID_drzave=g.ID_drzave;


CREATE TABLE DIMENZIJA_KORISNICI AS SELECT o.ID_korisnika, o.ime, o.prezime, o.datum_rodjenja, o.broj_telefona, o.email,
a.ime_ulice, a.broj_ulice, pb.broj_postanskog, g.ime ime_grada, dr.naziv naziv_drzave
FROM ONLINE_KORISNICI O, ADRESA a, POSTANSKI_BROJEVI pb, GRADOVI g, DRZAVE dr
WHERE a.ID_adrese=o.ID_adrese AND pb.ID_postanskog=a.ID_postanskog_broja AND g.ID_grada=a.ID_grad AND dr.ID_drzave=g.ID_drzave;



CREATE TABLE DIMENZIJA_DATUM(
               datum date not null primary key,
               dan int not null,
               mjesec int not null,
               godina int not null,
               dan_u_sedmici int not null,
               sedmica int not null,
               naziv_dana  varchar(10)
               );               
               
             
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-01',1,11,2022,2,45,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-02',2,11,2022,3,45,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-03',3,11,2022,4,45,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-04',4,11,2022,5,45,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-05',5,11,2022,6,45,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-06',6,11,2022,7,45,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-07',7,11,2022,1,46,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-08',8,11,2022,2,46,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-09',9,11,2022,3,46,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-10',10,11,2022,4,46,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-11',11,11,2022,5,46,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-12',12,11,2022,6,46,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-13',13,11,2022,7,46,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-14',14,11,2022,1,47,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-15',15,11,2022,2,47,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-16',16,11,2022,3,47,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-17',17,11,2022,4,47,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-18',18,11,2022,5,47,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-19',19,11,2022,6,47,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-20',20,11,2022,7,47,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-21',21,11,2022,1,48,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-22',22,11,2022,2,48,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-23',23,11,2022,3,48,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-24',24,11,2022,4,48,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-25',25,11,2022,5,48,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-26',26,11,2022,6,48,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-27',27,11,2022,7,48,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-28',28,11,2022,1,49,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-29',29,11,2022,2,49,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-11-30',30,11,2022,3,49,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-01',1,12,2022,4,49,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-02',2,12,2022,5,49,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-03',3,12,2022,6,49,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-04',4,12,2022,7,49,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-05',5,12,2022,1,50,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-06',6,12,2022,2,50,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-07',7,12,2022,3,50,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-08',8,12,2022,4,50,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-09',9,12,2022,5,50,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-10',10,12,2022,6,50,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-11',11,12,2022,7,50,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-12',12,12,2022,1,51,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-13',13,12,2022,2,51,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-14',14,12,2022,3,51,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-15',15,12,2022,4,51,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-16',16,12,2022,5,51,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-17',17,12,2022,6,51,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-18',18,12,2022,7,51,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-19',19,12,2022,1,52,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-20',20,12,2022,2,52,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-21',21,12,2022,3,52,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-22',22,12,2022,4,52,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-23',23,12,2022,5,52,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-24',24,12,2022,6,52,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-25',25,12,2022,7,52,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-26',26,12,2022,1,53,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-27',27,12,2022,2,53,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-28',28,12,2022,3,53,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-29',29,12,2022,4,53,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-30',30,12,2022,5,53,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2022-12-31',31,12,2022,6,53,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-01',1,1,2023,7,1,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-02',2,1,2023,1,2,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-03',3,1,2023,2,2,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-04',4,1,2023,3,2,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-05',5,1,2023,4,2,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-06',6,1,2023,5,2,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-07',7,1,2023,6,2,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-08',8,1,2023,7,2,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-09',9,1,2023,1,3,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-10',10,1,2023,2,3,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-11',11,1,2023,3,3,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-12',12,1,2023,4,3,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-13',13,1,2023,5,3,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-14',14,1,2023,6,3,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-15',15,1,2023,7,3,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-16',16,1,2023,1,4,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-17',17,1,2023,2,4,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-18',18,1,2023,3,4,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-19',19,1,2023,4,4,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-20',20,1,2023,5,4,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-21',21,1,2023,6,4,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-22',22,1,2023,7,4,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-23',23,1,2023,1,5,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-24',24,1,2023,2,5,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-25',25,1,2023,3,5,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-26',26,1,2023,4,5,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-27',27,1,2023,5,5,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-28',28,1,2023,6,5,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-29',29,1,2023,7,5,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-30',30,1,2023,1,6,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-01-31',31,1,2023,2,6,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-01',1,2,2023,3,6,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-02',2,2,2023,4,6,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-03',3,2,2023,5,6,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-04',4,2,2023,6,6,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-05',5,2,2023,7,6,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-06',6,2,2023,1,7,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-07',7,2,2023,2,7,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-08',8,2,2023,3,7,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-09',9,2,2023,4,7,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-10',10,2,2023,5,7,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-11',11,2,2023,6,7,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-12',12,2,2023,7,7,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-13',13,2,2023,1,8,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-14',14,2,2023,2,8,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-15',15,2,2023,3,8,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-16',16,2,2023,4,8,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-17',17,2,2023,5,8,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-18',18,2,2023,6,8,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-19',19,2,2023,7,8,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-20',20,2,2023,1,9,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-21',21,2,2023,2,9,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-22',22,2,2023,3,9,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-23',23,2,2023,4,9,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-24',24,2,2023,5,9,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-25',25,2,2023,6,9,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-26',26,2,2023,7,9,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-27',27,2,2023,1,10,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-02-28',28,2,2023,2,10,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-01',1,3,2023,3,10,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-02',2,3,2023,4,10,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-03',3,3,2023,5,10,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-04',4,3,2023,6,10,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-05',5,3,2023,7,10,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-06',6,3,2023,1,11,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-07',7,3,2023,2,11,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-08',8,3,2023,3,11,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-09',9,3,2023,4,11,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-10',10,3,2023,5,11,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-11',11,3,2023,6,11,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-12',12,3,2023,7,11,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-13',13,3,2023,1,12,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-14',14,3,2023,2,12,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-15',15,3,2023,3,12,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-16',16,3,2023,4,12,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-17',17,3,2023,5,12,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-18',18,3,2023,6,12,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-19',19,3,2023,7,12,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-20',20,3,2023,1,13,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-21',21,3,2023,2,13,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-22',22,3,2023,3,13,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-23',23,3,2023,4,13,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-24',24,3,2023,5,13,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-25',25,3,2023,6,13,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-26',26,3,2023,7,13,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-27',27,3,2023,1,14,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-28',28,3,2023,2,14,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-29',29,3,2023,3,14,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-30',30,3,2023,4,14,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-03-31',31,3,2023,5,14,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-01',1,4,2023,6,14,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-02',2,4,2023,7,14,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-03',3,4,2023,1,15,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-04',4,4,2023,2,15,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-05',5,4,2023,3,15,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-06',6,4,2023,4,15,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-07',7,4,2023,5,15,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-08',8,4,2023,6,15,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-09',9,4,2023,7,15,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-10',10,4,2023,1,16,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-11',11,4,2023,2,16,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-12',12,4,2023,3,16,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-13',13,4,2023,4,16,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-14',14,4,2023,5,16,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-15',15,4,2023,6,16,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-16',16,4,2023,7,16,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-17',17,4,2023,1,17,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-18',18,4,2023,2,17,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-19',19,4,2023,3,17,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-20',20,4,2023,4,17,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-21',21,4,2023,5,17,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-22',22,4,2023,6,17,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-23',23,4,2023,7,17,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-24',24,4,2023,1,18,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-25',25,4,2023,2,18,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-26',26,4,2023,3,18,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-27',27,4,2023,4,18,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-28',28,4,2023,5,18,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-29',29,4,2023,6,18,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-04-30',30,4,2023,7,18,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-01',1,5,2023,1,19,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-02',2,5,2023,2,19,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-03',3,5,2023,3,19,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-04',4,5,2023,4,19,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-05',5,5,2023,5,19,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-06',6,5,2023,6,19,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-07',7,5,2023,7,19,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-08',8,5,2023,1,20,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-09',9,5,2023,2,20,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-10',10,5,2023,3,20,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-11',11,5,2023,4,20,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-12',12,5,2023,5,20,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-13',13,5,2023,6,20,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-14',14,5,2023,7,20,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-15',15,5,2023,1,21,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-16',16,5,2023,2,21,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-17',17,5,2023,3,21,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-18',18,5,2023,4,21,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-19',19,5,2023,5,21,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-20',20,5,2023,6,21,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-21',21,5,2023,7,21,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-22',22,5,2023,1,22,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-23',23,5,2023,2,22,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-24',24,5,2023,3,22,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-25',25,5,2023,4,22,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-26',26,5,2023,5,22,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-27',27,5,2023,6,22,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-28',28,5,2023,7,22,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-29',29,5,2023,1,23,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-30',30,5,2023,2,23,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-05-31',31,5,2023,3,23,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-01',1,6,2023,4,23,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-02',2,6,2023,5,23,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-03',3,6,2023,6,23,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-04',4,6,2023,7,23,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-05',5,6,2023,1,24,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-06',6,6,2023,2,24,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-07',7,6,2023,3,24,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-08',8,6,2023,4,24,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-09',9,6,2023,5,24,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-10',10,6,2023,6,24,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-11',11,6,2023,7,24,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-12',12,6,2023,1,25,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-13',13,6,2023,2,25,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-14',14,6,2023,3,25,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-15',15,6,2023,4,25,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-16',16,6,2023,5,25,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-17',17,6,2023,6,25,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-18',18,6,2023,7,25,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-19',19,6,2023,1,26,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-20',20,6,2023,2,26,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-21',21,6,2023,3,26,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-22',22,6,2023,4,26,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-23',23,6,2023,5,26,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-24',24,6,2023,6,26,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-25',25,6,2023,7,26,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-26',26,6,2023,1,27,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-27',27,6,2023,2,27,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-28',28,6,2023,3,27,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-29',29,6,2023,4,27,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-06-30',30,6,2023,5,27,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-01',1,7,2023,6,27,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-02',2,7,2023,7,27,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-03',3,7,2023,1,28,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-04',4,7,2023,2,28,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-05',5,7,2023,3,28,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-06',6,7,2023,4,28,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-07',7,7,2023,5,28,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-08',8,7,2023,6,28,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-09',9,7,2023,7,28,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-10',10,7,2023,1,29,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-11',11,7,2023,2,29,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-12',12,7,2023,3,29,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-13',13,7,2023,4,29,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-14',14,7,2023,5,29,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-15',15,7,2023,6,29,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-16',16,7,2023,7,29,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-17',17,7,2023,1,30,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-18',18,7,2023,2,30,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-19',19,7,2023,3,30,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-20',20,7,2023,4,30,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-21',21,7,2023,5,30,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-22',22,7,2023,6,30,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-23',23,7,2023,7,30,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-24',24,7,2023,1,31,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-25',25,7,2023,2,31,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-26',26,7,2023,3,31,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-27',27,7,2023,4,31,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-28',28,7,2023,5,31,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-29',29,7,2023,6,31,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-30',30,7,2023,7,31,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-07-31',31,7,2023,1,32,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-01',1,8,2023,2,32,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-02',2,8,2023,3,32,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-03',3,8,2023,4,32,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-04',4,8,2023,5,32,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-05',5,8,2023,6,32,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-06',6,8,2023,7,32,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-07',7,8,2023,1,33,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-08',8,8,2023,2,33,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-09',9,8,2023,3,33,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-10',10,8,2023,4,33,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-11',11,8,2023,5,33,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-12',12,8,2023,6,33,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-13',13,8,2023,7,33,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-14',14,8,2023,1,34,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-15',15,8,2023,2,34,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-16',16,8,2023,3,34,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-17',17,8,2023,4,34,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-18',18,8,2023,5,34,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-19',19,8,2023,6,34,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-20',20,8,2023,7,34,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-21',21,8,2023,1,35,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-22',22,8,2023,2,35,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-23',23,8,2023,3,35,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-24',24,8,2023,4,35,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-25',25,8,2023,5,35,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-26',26,8,2023,6,35,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-27',27,8,2023,7,35,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-28',28,8,2023,1,36,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-29',29,8,2023,2,36,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-30',30,8,2023,3,36,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-08-31',31,8,2023,4,36,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-01',1,9,2023,5,36,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-02',2,9,2023,6,36,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-03',3,9,2023,7,36,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-04',4,9,2023,1,37,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-05',5,9,2023,2,37,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-06',6,9,2023,3,37,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-07',7,9,2023,4,37,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-08',8,9,2023,5,37,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-09',9,9,2023,6,37,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-10',10,9,2023,7,37,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-11',11,9,2023,1,38,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-12',12,9,2023,2,38,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-13',13,9,2023,3,38,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-14',14,9,2023,4,38,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-15',15,9,2023,5,38,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-16',16,9,2023,6,38,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-17',17,9,2023,7,38,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-18',18,9,2023,1,39,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-19',19,9,2023,2,39,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-20',20,9,2023,3,39,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-21',21,9,2023,4,39,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-22',22,9,2023,5,39,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-23',23,9,2023,6,39,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-24',24,9,2023,7,39,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-25',25,9,2023,1,40,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-26',26,9,2023,2,40,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-27',27,9,2023,3,40,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-28',28,9,2023,4,40,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-29',29,9,2023,5,40,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-09-30',30,9,2023,6,40,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-01',1,10,2023,7,40,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-02',2,10,2023,1,41,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-03',3,10,2023,2,41,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-04',4,10,2023,3,41,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-05',5,10,2023,4,41,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-06',6,10,2023,5,41,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-07',7,10,2023,6,41,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-08',8,10,2023,7,41,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-09',9,10,2023,1,42,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-10',10,10,2023,2,42,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-11',11,10,2023,3,42,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-12',12,10,2023,4,42,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-13',13,10,2023,5,42,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-14',14,10,2023,6,42,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-15',15,10,2023,7,42,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-16',16,10,2023,1,43,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-17',17,10,2023,2,43,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-18',18,10,2023,3,43,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-19',19,10,2023,4,43,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-20',20,10,2023,5,43,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-21',21,10,2023,6,43,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-22',22,10,2023,7,43,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-23',23,10,2023,1,44,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-24',24,10,2023,2,44,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-25',25,10,2023,3,44,'Srijeda');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-26',26,10,2023,4,44,'Cetvrtak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-27',27,10,2023,5,44,'Petak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-28',28,10,2023,6,44,'Subota');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-29',29,10,2023,7,44,'Nedjelja');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-30',30,10,2023,1,45,'Ponedjeljak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-10-31',31,10,2023,2,45,'Utorak');
insert into DIMENZIJA_DATUM (datum,dan,mjesec,godina,dan_u_sedmici,sedmica, naziv_dana) values ('2023-11-01',1,11,2023,3,45,'Srijeda');



CREATE TABLE MJERA_PRODAJE AS SELECT
r.ID_zaposlenika ID_zaposlenici_fk, r.datum_placanja datum_fk, sr.ID_proizvoda ID_proizvodi_fk, n.ID_korisnika ID_korisnici_fk, n.ID_dostavljaca ID_dostavljaci_fk, r.broj_racuna, r.iznos, sr.cijena, 
sr.kolicina, p.popust, t.ID_transakcije transakcije
FROM NARUDZBE n, POPUSTI p, RACUNI r, TRANSAKCIJE t, STAVKE_RACUNA sr
WHERE sr.ID_racuna=r.ID_racuna AND t.ID_racuna=r.ID_racuna AND p.kod_popusta=r.kod_popusta AND n.ID_racuna=r.ID_racuna;

--SELECT * FROM DIMENZIJA_DATUM;

--SELECT * FROM DIMENZIJA_DOSTAVLJACI;

--SELECT * FROM DIMENZIJA_PROIZVODI;

--SELECT * FROM DIMENZIJA_DOSTAVLJACI;

--SELECT * FROM DIMENZIJA_KORISNICI;

--SELECT * FROM MJERA_PRODAJE;

--Za datum 4.12.2022 prikaz svih računa, zaposlenika i proizvoda
SELECT 	dz.ime as ime_zaposlenika,
        dz.prezime as prezime_zaposlenika,
		dp.naziv as naziv_proizvoda, 
        dk.ime as ime_korinsika,
        dk.prezime as prezime_korisnika,
        dk.ime_ulice, 
        dk.broj_ulice,
        dk.ime_grada,
        mp.cijena as cijena_proizvoda,
        dd.naziv as naziv_firme,
        mp.kolicina,
    	mp.datum_fk
FROM DIMENZIJA_ZAPOSLENICI dz, DIMENZIJA_PROIZVODI dp, DIMENZIJA_KORISNICI dk, DIMENZIJA_DATUM dm, MJERA_PRODAJE mp, DIMENZIJA_DOSTAVLJACI dd
WHERE dm.datum=mp.datum_fk and dd.ID_dostavljaca=mp.ID_dostavljaci_fk and
	dk.ID_korisnika=mp.ID_korisnici_fk and dp.ID_proizvoda=mp.ID_proizvodi_fk and
    dz.ID_zaposlenika=mp.ID_zaposlenici_fk and dm.datum='2022-12-04';

-- Upit za iznos cijele godine
SELECT SUM(iznos) as iznos_cijele_godine
FROM MJERA_PRODAJE;


-- UPIT KOJI DAJE INFORMACIJE O PROIZVODU CIJA JE CIJENA VECA OD 3.5KM
SELECT dp.ID_proizvoda as ID_proizvoda, 
        dp.naziv as naziv,  
        dp.cijena as cijena,
        dp.jedinica_mjere as jedinica_mjere
    FROM DIMENZIJA_PROIZVODI dp
    WHERE dp.cijena>=3.5;


--UPIT KOJI VRACA INFORMACIJE O ZAPOSLENIKU KOJI IMA NAJVECU PLATU        
SELECT dz.ID_zaposlenika,
          dz.ime as ime_zaposlenika,
          dz.prezime as prezime_zaposlenika,
          dz.ime_pozicije,
          dz.datum_zaposlenja,
          dz.naziv_drzave,
          MAX(dz.plata) as max_plata
    FROM DIMENZIJA_ZAPOSLENICI dz;
        



--UPIT KOJI VRACA BROJ KORISNIKA U SVAKOJ ZEMLJI, SORTIRAN U OPADAJUCEM PORETRKU
SELECT COUNT (dk.ID_korisnika), 
             	dk.naziv_drzave
   FROM DIMENZIJA_KORISNICI dk
   GROUP BY naziv_drzave
   ORDER BY COUNT(ID_korisnika) DESC;
