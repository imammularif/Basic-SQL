# Basic-SQL
- Membuat Database

   ```bash
     CREATE DATABASE belajar_query;
     ```
  
- Membuat Table kedalam Database
  - Tabel buku
    
    ```bash
    CREATE TABLE TB_BUKU (
    ID_BUKU varchar(255) PRIMARY KEY,
    ISBN varchar(255),
    JUDUL_BUKU varchar(255),
    ID_PENERBIT varchar(255),
    ID_PENGARANG varchar(255),
    HARGA_BUKU varchar(225),
    STOK VARCHAR(225)
    );
     ```
    
  - Tabel Penerbit
 
      ```bash
     CREATE TABLE TB_PENERBIT (
     ID_PENERBIT varchar(255) PRIMARY KEY,
     NAMA_PENERBIT varchar(255),
     ALAMAT varchar(255),
     TELPON varchar(255)
      );
     ```
    
  - Tabel Pengarang

	   ```bash
	  CREATE TABLE TB_PENGARANG (
	  ID_PENGARANG varchar(255) PRIMARY KEY,
	  NAMA_PENGARANG varchar(255),
	  JENIS_KELAMIN varchar(255)
	   );
	   ```
 ```bash
show tables;
```

	
