CREATE TABLE PROIECT_Angajati(
    id_angajat NUMBER(6,0) CONSTRAINT PKey_PROIECT_Angajati PRIMARY KEY,
    nume VARCHAR2(30) NOT NULL,
    prenume VARCHAR2(30) NOT NULL,
    cnp NUMBER(20,0) NOT NULL,
    data_ang DATE NOT NULL,
    telefon NUMBER(10,0) NOT NULL,
    email VARCHAR2(30),
    post VARCHAR2(30) NOT NULL,
    salariu NUMBER(6,0) NOT NULL,
    id_departament NUMBER(6,0) NOT NULL
)
    
drop table proiect_angajati

CREATE TABLE PROIECT_Furnizori
(
    id_furnizor NUMBER(6,0) CONSTRAINT PKey_Furnizor PRIMARY KEY,
    denumire VARCHAR2(30) NOT NULL,
    sediu VARCHAR2(30) NOT NULL,
    nr_ord_jur NUMBER(6,0) NOT NULL
)
CREATE TABLE PROIECT_Categorie
(
    id_categorie NUMBER(6,0) CONSTRAINT PKey_Categorie PRIMARY KEY,
    denumire_categorie VARCHAR2(30) NOT NULL,
    pret_mediu FLOAT(2)
)

CREATE TABLE PROIECT_Nota_de_receptie
(
    nr_nota NUMBER(6,0) CONSTRAINT PKey_Nota_de_receptie PRIMARY KEY,
    data_receptie DATE NOT NULL,
    id_furnizor NUMBER(6,0),
    id_angajat NUMBER(6,0)
)
CREATE TABLE PROIECT_Mobila
(
    id_mobila NUMBER(6,0) CONSTRAINT PKey_Mobila PRIMARY KEY,
    denumire VARCHAR2(30) NOT NULL,
    id_categorie NUMBER(6,0),
    lungime NUMBER(6,2) NOT NULL,
    latime NUMBER(6,2) NOT NULL,
    inaltime NUMBER(6,2) NOT NULL,
    culoare VARCHAR2(30) NOT NULL,
    pret NUMBER(6,2)
)


CREATE TABLE PROIECT_Clienti
(
    id_client NUMBER(6,0) CONSTRAINT PKey_Clienti PRIMARY KEY,
    nume VARCHAR2(30) NOT NULL,
    prenume VARCHAR2(30) NOT NULL,
    cnp NUMBER(20) NOT NULL,
    telefon NUMBER(10) NOT NULL,
    email VARCHAR2(30)
)

CREATE TABLE PROIECT_Comenzi
(
    nr_comanda NUMBER(6,0) CONSTRAINT PKey_Comenzi PRIMARY KEY,
    data_comanda DATE,
    id_client NUMBER(6,0),
    id_angajat NUMBER(6,0)
)

CREATE TABLE PROIECT_Mobila_comandata
(
    id_mobila NUMBER(6,0),
    nr_comanda NUMBER(6,0),
    cantitate NUMBER(5,0)
)

drop table mobila_comandata
CREATE TABLE PROIECT_Marfuri_receptionate
(
    id_mobila NUMBER(6,0),
    nr_nota NUMBER(6,0),
    cantitate NUMBER(5,0)
)

INSERT INTO Proiect_Departamente(id_departament, denumire_departament, numar_angajati, sef_departament)
VALUES (1, 'ADMINISTRATIE', 1, 'ION ILIESCU');
INSERT INTO Proiect_Departamente(id_departament, denumire_departament, numar_angajati, sef_departament)
VALUES (2, 'CONTABILITATE', 2, 'ELON MUSKET');	
INSERT INTO Proiect_Departamente(id_departament, denumire_departament, numar_angajati, sef_departament)
VALUES (3, 'MARKETING', 4, 'JEFF BENGOS');
INSERT INTO Proiect_Departamente(id_departament, denumire_departament, numar_angajati, sef_departament)
VALUES (4, 'COMERCIAL', 6, 'IAN GEORGIAN');
INSERT INTO Proiect_Departamente(id_departament, denumire_departament, numar_angajati, sef_departament)
VALUES (5, 'RESURSE UMANE', 2, 'BILLY JOHN');


INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1000, 'ION', 'ILIESCU', 5010430394430, TO_DATE('01-03-2021','DD-MM-YYYY'), 0760296240, 'angajat_1000@gmaiL.com', 'ADMINISTRATOR', 4500, 1);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1001, 'ELON', 'MUSKET', 5010430394435, TO_DATE('24-03-2021','DD-MM-YYYY'), 0760296241, 'angajat_1001@gmaiL.com', 'CONTABIL SEF', 2400, 2);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1002, 'EDDIE', 'HALL', 5010430394431, TO_DATE('25-03-2021','DD-MM-YYYY'), 0760296242, 'angajat_1002@gmaiL.com', 'CONTABIL', 2200, 2);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1003, 'JEFF', 'BENGOS', 5010430394433, TO_DATE('24-03-2021','DD-MM-YYYY'), 0760296243, 'angajat_1003@gmaiL.com', 'SEF MARKETING', 2600, 3);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1004, 'MARINA', 'UNGUREANU', 5010430394434, TO_DATE('27-03-2021','DD-MM-YYYY'), 0760296244, 'angajat_1004@gmaiL.com', 'AGENT MARKETING', 2200, 3);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1005, 'IOANA', 'SINALOA', 5010430394435, TO_DATE('27-03-2021','DD-MM-YYYY'), 0760296245, 'angajat_1005@gmaiL.com', 'AGENT MARKETING', 2200, 3);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1006, 'MIRUNA', 'IORGA', 5010430394436, TO_DATE('27-03-2021','DD-MM-YYYY'), 0760296246, 'angajat_1006@gmaiL.com', 'AGENT MARKETING', 2200, 3);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1007, 'IAN', 'GEORGIAN', 5010430394437, TO_DATE('24-03-2021','DD-MM-YYYY'), 0760296247, 'angajat_1007@gmaiL.com', 'SEF DE VANZARI', 2400, 4);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1008, 'CRISTIAN', 'RESME', 5010430394438, TO_DATE('27-03-2021','DD-MM-YYYY'), 0760296248, 'angajat_1008@gmaiL.com', 'AGENT DE VANZARI', 2200, 4);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1009, 'RARES', 'DUMITRAN', 5010430394439, TO_DATE('27-03-2021','DD-MM-YYYY'), 0760296249, 'angajat_1009@gmaiL.com', 'AGENT DE VANZARI', 2200, 4);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1010, 'IONUT', 'MATEI', 5010430394410, TO_DATE('27-03-2021','DD-MM-YYYY'), 0760296210, 'angajat_1010@gmaiL.com', 'AGENT DE VANZARI', 2200, 4);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1011, 'MARCEL', 'PETRICA', 5010430394411, TO_DATE('27-03-2021','DD-MM-YYYY'), 0760296211, 'angajat_1011@gmaiL.com', 'AGENT DE VANZARI', 2200, 4);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1012, 'CRISTINA', 'LOBAD', 5010430394412, TO_DATE('27-03-2021','DD-MM-YYYY'), 0760296212, 'angajat_1012@gmaiL.com', 'AGENT DE VANZARI', 2200, 4);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1013, 'BILLY', 'JOHN', 5010430394413, TO_DATE('24-03-2021','DD-MM-YYYY'), 0760296213, 'angajat_1013@gmaiL.com', 'SEF RESURSE UMANE', 2400, 5);
INSERT INTO Proiect_Angajati (id_angajat, nume, prenume, cnp, data_ang, telefon, email, post, salariu, id_departament) 
VALUES (1014, 'ALEXANDRA', 'DESLIU', 5010430394414, TO_DATE('24-03-2021','DD-MM-YYYY'), 0760296214, 'angajat_1014@gmaiL.com', 'AGENT RESURSE UMANE', 2200, 5);



INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(1,'S.C. ALFA S.R.L.', 'Str. Trandafir nr.9, Golesti', 043001);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(2,'S.C. BETA S.R.L.', 'Str. Trandafir nr.10, Golesti', 043002);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(3,'S.C. XYZ S.R.L.', 'Str. Trandafir nr.11, Golesti', 043003);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(4,'S.C. ABC S.R.L.', 'Str. Trandafir nr.12, Golesti', 043004);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(5,'S.C. HAVE S.R.L.', 'Str. Trandafir nr.13, Golesti', 043005);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(6,'S.C. YOU S.R.L.', 'Str. Trandafir nr.14, Golesti', 043006);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(7,'S.C. LOL S.R.L.', 'Str. Trandafir nr.15, Golesti', 043007);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(8,'S.C. OMG S.R.L.', 'Str. Trandafir nr.16, Golesti', 043008);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(9,'S.C. OWO S.R.L.', 'Str. Trandafir nr.17, Golesti', 043009);
INSERT INTO Proiect_Furnizori (id_furnizor, denumire, sediu, nr_ord_jur)
VALUES(10,'S.C. FINAL S.R.L.', 'Str. Trandafir nr.18, Golesti', 043010);


INSERT INTO Proiect_Categorie (id_categorie, denumire_categorie, pret_mediu)
VALUES (1, 'BUCATARIE', 2000);
INSERT INTO Proiect_Categorie(id_categorie, denumire_categorie, pret_mediu)
VALUES (2, 'LIVING ROOM', 1500);
INSERT INTO Proiect_Categorie(id_categorie, denumire_categorie, pret_mediu)
VALUES (3, 'DORMITOR', 1800);
INSERT INTO Proiect_Categorie(id_categorie, denumire_categorie, pret_mediu)
VALUES (4, 'BAIE', 1000);
INSERT INTO Proiect_Categorie(id_categorie, denumire_categorie, pret_mediu)
VALUES (5, 'HOL', 800);



INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (01, 'Miron', 'Cristian', 5010430390130, 0760296240, 'client_01@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (02, 'Alexandru', 'Rares', 5010430390230, 0760196240, 'client_02@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (03, 'Desliu', 'Alexandra', 5010430390330, 0760396240, 'client_03@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (04, 'Passan', 'Rares', 5010430390430, 0760496240, 'client_04@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (05, 'Resmerita', 'Cristian', 5010430390530, 0760596240, 'client_05@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (06, 'Alexandru', 'Boron', 5010430390630, 0760696240, 'client_06@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (07, 'Miron', 'Ion', 5010430390730, 0760796240, 'client_07@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (08, 'Alexandru', 'Lapusneanu', 5010430390830, 0760896240, 'client_08@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (09, 'Chelin', 'Marian', 5010430390930, 0760996240, 'client_09@gmail.com');
INSERT INTO Proiect_Clienti(id_client, nume, prenume, cnp, telefon, email)
VALUES (10, 'Zancescu', 'Andrada', 5010430391030, 0761096240, 'client_10@gmail.com');


INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (1,TO_DATE('24-11-2021','DD-MM-YYYY'),1,1001);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (1, TO_DATE('24-11-2021','DD-MM-YYYY'), 1, 1001);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (2, TO_DATE('24-11-2021','DD-MM-YYYY'), 5, 1002);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (3, TO_DATE('25-11-2021','DD-MM-YYYY'), 2, 1002);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (4, TO_DATE('25-11-2021','DD-MM-YYYY'), 10, 1005);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (5, TO_DATE('25-11-2021','DD-MM-YYYY'), 8, 1003);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (6, TO_DATE('26-11-2021','DD-MM-YYYY'), 1, 1001);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (7, TO_DATE('28-11-2021','DD-MM-YYYY'), 1, 1013);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (8, TO_DATE('02-12-2021','DD-MM-YYYY'), 7, 1007);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (9, TO_DATE('02-12-2021','DD-MM-YYYY'), 4, 1007);
INSERT INTO Proiect_Nota_de_receptie(nr_nota, data_receptie, id_furnizor,id_angajat)
VALUES (10, TO_DATE('10-12-2021','DD-MM-YYYY'), 9, 1010);




INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(1,1,120,60,80,'Maroniu',1000,'Dulap');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(2,1,220,60,80,'Maroniu',3000,'Set bucatarie');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(3,2,100,50,40,'Negru',500,'Masuta de cafea');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(4,2,340,70,120,'Gri',2500,'Coltar');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(5,3,200,150,50,'Negru',1800,'Pat de 2 persoane');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(6,3,200,150,50,'Maroniu',1800,'Pat de 2 persoane');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(7,4,80,40,60,'Argintiu + alb',1000,'Chiuveta + masca');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(8,4,80,40,60,'Alb',1000,'Masina de spalat');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(9,5,60,60,200,'Negru',1000,'Dulap de haine');
INSERT INTO Proiect_Mobila(id_mobila,id_categorie,lungime,latime,inaltime,culoare,pret,denumire)
VALUES(10,5,60,30,80,'Negru',600,'Pantofar');



INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (1,1,10);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (2,1,5);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (10,2,5);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (5,2,2);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (3,3,12);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (6,3,3);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (5,3,3);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (4,4,4);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (7,5,5);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (8,5,3);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (1,6,3);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (6,7,3);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (9,8,10);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (10,8,2);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (3,9,10);
INSERT INTO Proiect_Marfuri_receptionate(id_mobila,nr_nota,cantitate)
VALUES (4,10,10);


INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (1,1007,TO_DATE('06.12.2021','MM.DD.YYYY'),01);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (2,1007,TO_DATE('06.12.2021','MM.DD.YYYY'),02);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (3,1008,TO_DATE('08.12.2021','MM.DD.YYYY'),03);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (4,1008,TO_DATE('08.12.2021','MM.DD.YYYY'),04);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (5,1009,TO_DATE('08.12.2021','MM.DD.YYYY'),05);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (6,1009,TO_DATE('08.12.2021','MM.DD.YYYY'),06);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (7,1010,TO_DATE('08.12.2021','MM.DD.YYYY'),07);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (8,1011,TO_DATE('08.12.2021','MM.DD.YYYY'),08);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (9,1007,TO_DATE('08.12.2021','MM.DD.YYYY'),09);
INSERT INTO proiect_comenzi (nr_comanda,id_angajat,data_comanda,id_client)
values (10,1012,TO_DATE('10.12.2021','MM.DD.YYYY'),10);


INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (1,1,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (1,2,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (2,2,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (3,3,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (4,4,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (5,5,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (6,6,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (6,7,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (7,3,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (7,8,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (9,9,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (10,9,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (10,1,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (10,4,1);
INSERT INTO proiect_Mobila_comandata(nr_comanda,id_mobila,cantitate)
VALUES (8,6,1);

-- Aplicatia 1. Sa se afiseze numele complet si salariul angajatilor cu ID-urile 1005, 1006, 1007.
declare
    v_nume proiect_angajati.nume%type;
    v_prenume proiect_angajati.prenume%type;
    v_sal proiect_angajati.salariu%type;
begin
    for i in 1005..1007 loop
        select nume, prenume, salariu into v_nume, v_prenume, v_sal from proiect_angajati
        where id_angajat=i;
        if sql%found then dbms_output.put_line('Angajatul ' ||v_nume|| ' ' ||v_prenume|| ' are salariul de ' ||v_sal|| ' lei.');
    end loop;
exception
    when no_data_found then dbms_output.put_line('Angajatul nu exista.');
end;
    
    
 declare
  v_nume proiect_angajati.nume%type;
  v_prenume proiect_angajati.prenume%type;
  v_sal proiect_angajati.salariu%type;
begin
  for i in 1005..1007 loop
    select nume, prenume, salariu into v_nume, v_prenume, v_sal from proiect_angajati
    where id_angajat=i;
    dbms_output.put_line('Angajatul ' ||v_nume|| ' ' ||v_prenume|| ' are salariul de ' ||v_sal|| ' lei.');
  end loop;
end;

    
    
select denumire,cantitate from proiect_mobila p1,proiect_marfuri_receptionate p2 where p1.id_mobila=p2.id_mobila


--Aplicatia 2 - sa se parcurga toate notele de receptie
declare
    v_id_furnizor proiect_nota_de_receptie.id_furnizor%type;
    v_id_angajat proiect_nota_de_receptie.id_angajat%type;
    v_nota number;
    v_min number;
    v_max number;
begin
    select min(proiect_nota_de_receptie.nr_nota) , max(proiect_nota_de_receptie.nr_nota) into v_min, v_max 
    from proiect_nota_de_receptie;
    
    for i in v_min..v_max loop
        select nr_nota, id_angajat, id_furnizor into v_nota, v_id_angajat, v_id_furnizor from proiect_nota_de_receptie
        where proiect_nota_de_receptie.nr_nota=i;
            dbms_output.put_line('NR ' ||v_nota|| ' de la furnizorul ' ||v_id_furnizor|| ' a fost preluata de angajatul ' ||v_id_angajat|| '.');
    end loop;
end;

--Aplicatia 3 - sa se parcurga toate notele de receptie din data de 24-11-2021
declare
  cursor c is
    select nr_nota, id_angajat, id_furnizor
    from proiect_nota_de_receptie
    where data_receptie = '24-11-2021';
  r c%rowtype;
  no_data_found exception;
begin
  open c;
  fetch c into r;
  if c%found then
  while c%found loop
    dbms_output.put_line('NR ' || r.nr_nota || ' de la furnizorul ' || r.id_furnizor || ' a fost preluata de angajatul ' || r.id_angajat || '.');
    fetch c into r;
  end loop;
  else
    raise no_data_found;
    end if;
  close c;
exception
    when no_data_found then dbms_output.put_line('Nu exista inregistrari in aceasta data.');
end;


--Aplicatia 4. Sa se afiseze notele de receptie intocmite de fiecare angajat.
declare
    cursor c is select nume, prenume, nr_nota from proiect_angajati, proiect_nota_de_receptie 
        where proiect_angajati.id_angajat=proiect_nota_de_receptie.id_angajat;
    r c%rowtype;
begin
    open c;
    fetch c into r;
            while c%found loop
        dbms_output.put_line('Angajatul ' ||r.nume|| ' ' ||r.prenume|| ' a intocmit nota de receptie ' ||r.nr_nota|| '.');
        fetch c into r;
    end loop;
    close c;
end;

--Aplicatia 5. Sa se verifice daca angajatul citit de la tastatura a incheiat o comanda.
declare
    v_citire proiect_comenzi.id_angajat%type :=&a;
    cursor c is select * from proiect_comenzi where id_angajat=v_citire;
    r c%rowtype;
    lipsa_inregistrari exception;
begin
    open c;
    fetch c into r;
    if c%notfound then raise lipsa_inregistrari;
    else 
        loop
                exit when c%notfound;
                dbms_output.put_line('Angajatul ' ||r.id_angajat|| ' a incheiat comanda ' ||r.nr_comanda|| '.');
                fetch c into r;
        end loop;
    end if;
exception
    when lipsa_inregistrari then dbms_output.put_line('Nu exista inregistrari!');
end;

--Aplicatia 6. Creati o procedura prin care sa fie afisate detaliile comenzii citite de la tastatura.
create or replace procedure afisare_detalii (
  p_nr_comanda in proiect_mobila_comandata.nr_comanda%type
)
as
  cursor c is select * from proiect_mobila_comandata where nr_comanda = p_nr_comanda;
  r c%rowtype;
  nu_exista exception;
begin
  open c;
  fetch c into r;
  if c%notfound then
    raise nu_exista;
  end if;
  dbms_output.put_line('Comanda ' || r.nr_comanda || ' contine:');
  if c%found then
    loop
      dbms_output.put_line('Mobila ' || r.id_mobila || '           Cantitate ' || r.cantitate || ' ');
      fetch c into r;
      exit when c%notfound;
    end loop;
  end if;
  close c;
exception
  when nu_exista then
    dbms_output.put_line('Nu exista inregistrari.');
end afisare_detalii;

execute afisare_detalii(100);



accept v_cautare prompt 'Introduceti numarul comenzii: ';

declare
    v_id proiect_mobila_comandata.id_mobila%type;
    v_cantitate proiect_mobila_comandata.cantitate%type;
    v_cautare proiect_mobila_comandata.nr_comanda%type;

create or replace procedure afisare_comanda(
    p_nr_comanda in proiect_mobila_comandata.nr_comanda%type,
    p_id_mobila out proiect_mobila_comandata.id_mobila%type,
    p_cantitate out proiect_mobila_comandata.cantitate%type
)
as
begin
    select id_mobila,cantitate 
    into p_id_mobila, p_cantitate 
    from proiect_mobila_comandata
    where nr_comanda=p_nr_comanda;
end;

begin
    afisare_comanda(v_cautare,v_id,v_cantitate);
    if afisare_comanda%notfound then dbms_output.put_line('Nu exista inregistrari pentru aceasta comanda!');
    else
        dbms_output.put_line('Comanda ' ||v_cautare|| ' contine ' ||v_cantitate|| ' bucati din mobila ' ||v_id|| '.');
    end if;
end;

--Aplicatia 7. Creati o functie prin care sa adaugati cantitate la o comanda preluata.
create or replace procedure adaugare_cantitate_comanda (
  p_nr_comanda in proiect_mobila_comandata.nr_comanda%type,
  p_id_mobila in proiect_mobila_comandata.id_mobila%type,
  adauga in number
)
as
  cursor c is select * from proiect_mobila_comandata where nr_comanda = p_nr_comanda;
  r c%rowtype;
begin
  open c;
  fetch c into r;
  while c%found loop
    dbms_output.put_line(r.nr_comanda || '  ' || r.id_mobila || '  ' || r.cantitate || ' .');
    fetch c into r;
  end loop;
  update proiect_mobila_comandata
  set cantitate = cantitate + adauga
  where nr_comanda = p_nr_comanda and id_mobila = p_id_mobila;
  dbms_output.put_line('S-a realizat update-ul.');
  close c;
  open c;
  fetch c into r;
  while c%found loop
    dbms_output.put_line(r.nr_comanda || '  ' || r.id_mobila || '  ' || r.cantitate || ' .');
    fetch c into r;
  end loop;
  close c;
end adaugare_cantitate_comanda;

execute adaugare_cantitate_comanda(1,1,1);


--Aplicatia 8. Construiti o procedura care sa calculeze cate bucati de mobila sunt intr-o nota de receptie.
create or replace procedure cantitate_nota
(
p_nr_nota in proiect_marfuri_receptionate.nr_nota%type
)
as
    cursor c is select sum(cantitate) as suma from proiect_marfuri_receptionate where nr_nota=p_nr_nota;
    r c%rowtype;
    exceptie exception;
    suma number;
begin
    open c;
    fetch c into r;
    if c%notfound then raise exceptie;
    end if;
    suma:=r.suma;
    dbms_output.put_line('Nota de receptie nr. ' ||p_nr_nota|| ' contine ' ||suma|| ' piese de mobilier.');
    close c;
exception
    when exceptie then dbms_output.put_line('Nu exista inregistrari!');
end cantitate_nota;

execute cantitate_nota(1);


--Aplicatia 9. Creati o functie care sa calculeze profitul potential al unei piese de mobilier.
create function pret_potential(f_id_mobila)
returns decimal(10,2)
as
    cursor c_pret is select pret as pret from proiect_mobila where id_mobila=f_id_mobila;
    cursor c_cantitate is select sum(cantitate) as cantitate_totala from proiect_nota_de_receptie where id_mobila=f_id_mobila;
    r_pret c_pret%rowtype;
    r_cantitate c_cantitate%rowtype;
    profit decimal(10,2);
    exceptie exception;
begin
    open c_pret;
    open c_cantitate;
    open c_pret_mediu;
        fetch c_pret into r_pret;
        fetch c_cantitate into r_cantitate;
            if c%notfound then raise exceptie;
            profit=r_pret*r_cantitate;
            profit=profit-profit*50/150;
            return profit;
exception
    when exceptie then dbms_output.put_line('Aceasta inregistrare nu exista!');
end;


create or replace function profit_potential
(
f_id_mobila proiect_mobila.id_mobila%type
)
return decimal(10,2)
as
    cursor c_pret is select pret as pret from proiect_mobila where id_mobila=f_id_mobila;
    r_pret c_pret%rowtype;
    r_cantitate c_cantitate%rowtype;
    profit decimal(10,2):=0;
    exceptie exception;
begin
    open c_pret;
        fetch c_pret into r_pret;
            if c_pret%notfound then
                raise exceptie;
            end if;
            if c_pret%found then
                profit=r_pret.pret*100;
                profit=profit-profit*50/150;
            end if;
            return profit;
            close c_pret;
exception
    when exceptie then dbms_output.put_line('Aceasta inregistrare nu exista!');
end profit_potential;

--Aplicatia 9. Creati o functie care sa returneze cantitatea totala din mobila citita de la tastatura.
create or replace function cantitate_totala
(
f_id_mobila proiect_marfuri_receptionate.id_mobila%type
)
return number
as
    cursor c is select sum(cantitate) as suma from proiect_marfuri_receptionate where id_mobila=f_id_mobila;
    r c%rowtype;
    cantitate number:=0;
    exceptie exception;
begin   
    open c;
    fetch c into r;
    if c%notfound then raise exceptie;
    end if;
    if c%found then
        cantitate:=r.suma;
        return cantitate;
    end if;
    close c;
exception
    when exceptie then dbms_output.put_line('Nu exista!');
end;

declare
    v_id_mobila proiect_marfuri_receptionate.id_mobila%type:=&a;
    v_cantitate proiect_marfuri_receptionate.cantitate%type;
begin
v_cantitate:=cantitate_totala(v_id_mobila);
    dbms_output.put_line(v_cantitate);
end;

--Aplicatia 10. Creati o functie care sa returneze pretul unei piese de mobilier.
create or replace function pret_mobila
(
f_id_mobila proiect_mobila.id_mobila%type
)
return number
as
    cursor c is select pret from proiect_mobila where id_mobila=f_id_mobila;
    r c%rowtype;
    pret number:=0;
    exceptie exception;
begin
    open c;
    fetch c into r;
    if c%notfound then raise exceptie;
    end if;
    if c%found then
        pret:=r.pret;
        return pret;
    end if;
    close c;
end;

declare
    v_id_mobila proiect_mobila.id_mobila%type:=&a;
    v_pret proiect_mobila.pret%type;
begin
    v_pret:=pret_mobila(v_id_mobila);
    dbms_output.put_line(v_pret);
end;


-- Aplicatia 11. Creati o functie care sa returneze profitul potential al unei piese de mobilier, stiind ca adaosul comercial folosit este 50%.
create or replace function profit_potential
(
f_id_mobila proiect_mobila.id_mobila%type
)
return decimal(10,2)
as
    f_pret proiect_mobila.pret%type;
    f_cantitate proiect_marfuri_receptionate.cantitate%type;
    f_profit decimal(10,2);
begin
    f_pret:=pret_mobila(f_id_mobila);
    f_cantitate:=cantitate_totala(f_id_mobila);
    f_profit:=f_pret*f_cantitate-f_pret*f_cantitate*50/150;
    return f_profit;
end;