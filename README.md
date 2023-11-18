# ITIS5C
Appunti per lezioni

### SQL: A Relational Database Language

  When specifying a **relational algebra** query, it becomes the responsability of the user to specify **how** \-in what order\- to execute the query operations.

DBMSs provide (through **SQL**) a high\-level **declarative** language interface, so the user only specifies **what** the result is, leaving the actual optimization and decisions on how to execute the query to the DBMS.

Originally, SQL was called **SEQUEL**: for **S**tructured **E**nglish **QUE**ry **L**anguage.

(from *FUNDAMENTALS OF DATABASE SYSTEMS*, Elmasri-Navathe)

### Accesso MySQL

L'indirizzop IP del *DBMS server* è `10.25.0.14`

Sulle macchine Linux è installato il client **mysql** pertanto si può accedere alla console

```
mysql -h 10.25.0.14 -u <nome_utente_assegnato> -p
```

La password verrà richiesta interattivamente.

`CREATE DATABASE <nome_utente_assegnato>_test`

`USE <nome_utente_assegnato>_test`

A questo punto si può procedere con la serie di comandi *DDL*.

* **DDL** = *Data Definition Language* (`CREATE`, `ALTER`, `DROP`, ...) 
* **DML** = *Data Manipulation Language* (`INSERT`, `UPDATE`, `DELETE`, ...) e 
            *Data Query Language* (`SELECT`) 


