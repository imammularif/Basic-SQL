# Basic-SQL (CREATE, INSERT, & SELECT)
- Membuat Database :

   ```bash
     CREATE DATABASE belajar_query;
     ```
  
- Membuat Table kedalam Database :
  - Tabel buku :
    
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
    
  - Tabel Penerbit :
 
      ```bash
     CREATE TABLE TB_PENERBIT (
     ID_PENERBIT varchar(255) PRIMARY KEY,
     NAMA_PENERBIT varchar(255),
     ALAMAT varchar(255),
     TELPON varchar(255)
      );
     ```
    
  - Tabel Pengarang :

	   ```bash
	  CREATE TABLE TB_PENGARANG (
	  ID_PENGARANG varchar(255) PRIMARY KEY,
	  NAMA_PENGARANG varchar(255),
	  JENIS_KELAMIN varchar(255)
	   );
	   ```

- Menampilkan Tabel :
   ```bash
	show tables;
   ```
   ![Show table](https://github.com/imammularif/Basic-SQL/blob/main/SS/Show%20tables.png)


- Input data menggunakan INSERT kedalam table yang sudah dibuat tadi :
  - Tabel Buku

     ```bash
	INSERT INTO tb_buku (id_buku, ISBN, JUDUL_BUKU, ID_PENERBIT, ID_PENGARANG, HARGA_BUKU, STOK)
	VALUES ('BK001', '978-979-29-1234-1', 'PENGANTAR BASIS DATA', 'PNB01', 'PNG03', '75,000', '3'),
	('BK002', '978-979-29-4444-1', 'MAHIR MENGGAMBAR ANIME', 'PNB01', 'PNG01', '45,500', '2'),
	('BK003', '978-979-29-4567-1', 'DATA WAREHOUSE', 'PNB05', 'PNG02', '60,000', '1'),
	('BK004', '978-979-29-1212-1', 'SHORTCOURSE: EXCEL 2016', 'PNB02', 'PNG02', '35,000', '5'),
	('BK005', '978-979-29-3232-1', 'LASKAR PEMIMPI', 'PNB02', 'PNG03', '80,000', '4'),
	('BK006', '978-979-29-1010-1', 'PERANCANGAN BASIS DATA', 'PNB02', 'PNG04', '99,000', '0'),
	('BK007', '978-979-29-1111-1', 'ALGORITMA PEMROGRAMAN', 'PNB03', 'PNG04', '125,000', '5'),
	('BK008', '978-979-29-9898-1', 'CATATAN SI UJANG', 'PNB04', 'PNG03', '85,000', '2')
	('BK009', '978-979-29-9899-1', 'INDONESIA KAYA', 'PNB04', 'PNG03', '30,000', '7'),
	('BK0010', '978-979-29-1011-1', 'MAHIR MENGGUNAKAN DATABASE ORACLE', 'PNB02', 'PNG04', '225,000', '9');
     ```

     ```bash
    SELECT * FROM  tb_buku;
     ```

	![Hasil Query](https://github.com/imammularif/Basic-SQL/blob/main/SS/SELECT%20TB_BUKU.png)
    
  - Tabel Penerbit
 
     ```bash
	INSERT INTO tb_penerbit (ID_PENERBIT, NAMA_PENERBIT, ALAMAT, TELPON)
	VALUES ('PNB01', 'LENTERA ILMU', 'JAKARTA', '(021)212987'),
	('PNB02', 'PUSTAKA INDONESIA', 'BANDUNG', '(022)127576'),
	('PNB03', 'ANDRA PUBLISHER', 'YOGYAKARTA', '(0274)123123'),
	('PNB04', 'WAHANA', 'JAKARTA', '(021)222333'),
	('PNB05', 'YUDHISTIRA', '', '(021)8080880');

     ```

      ```bash
    SELECT * FROM  tb_penerbit;
      ```
      
	![Hasil Query](https://github.com/imammularif/Basic-SQL/blob/main/SS/SELECT%20TB_PENERBIT.png)
    
  - Table Pengarang

	 ```bash
	INSERT INTO tb_pengarang (ID_PENGARANG, NAMA_PENGARANG, JENIS_KELAMIN)
	VALUES ('PNG01', 'ABDUL KADIR', 'LAKI-LAKI'),
	('PNG02', 'SRI WAHYUNI', 'PEREMPUAN'),
	('PNG03', 'FATHANSSYAH', 'LAKI-LAKI'),
	('PNG04', 'TRI RISMA SETIA', 'PEREMPUAN');
     ```

     ```bash
    SELECT * FROM  tb_pengarang;
     ```
	![Hasil Query](https://github.com/imammularif/Basic-SQL/blob/main/SS/SELECT%20TB_PENGARANG.png)


# Contoh studi kasus Penerapan query menggunakan fungsi : WHERE, ORDER BY, ASC, DESC, GROUP BY, SUM/COUNT, INNER JOIN, & IF_ELSE menggunakan statement SELECT.



	
