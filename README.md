# Basic SQL

## 📌 Project Overview
This repository is created to **learn and practice basic SQL commands**.  
The goal is to understand and implement common SQL operations such as `CREATE`, `INSERT`, `SELECT`, and simple queries for data analysis.

---

## 🛠️ Tools Used
- **MySQL / PostgreSQL** – for executing SQL queries  
- **MySQL Workbench / pgAdmin** – optional GUI tools for running queries  
- **CSV Dataset (optional)** – sample dataset for practice

---



##
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

## Contoh Studi Kasus

1. Tampilkan data pada table buku pada id_penerbitnya PNB05

   ```bash 
	select * from tb_buku tb where ID_PENERBIT = 'PNB05';
   ```

2. Tampilkan 3 judul_buku dari tabel TB_BUKU dengan harga termahal
   
   ```bash 
	select JUDUL_BUKU, HARGA_BUKU from tb_buku
	order by HARGA_BUKU desc
	limit 3;
   ```

3. Tampilkan data dari tabel TB_BUKU dan Tabel TB_PENERBIT dengan ID_PENERBIT = PNB03 dengan Field sbb (ID_BUKU, ISBN, JUDUL_BUKU, NAMA_PENERBIT, ALAMAT, TELPON)

   ```bash 
	select a.ID_BUKU, a.ISBN, a.JUDUL_BUKU, b.NAMA_PENERBIT, b.ALAMAT, b.TELPON
	from tb_buku a
	inner join tb_penerbit b on a.id_penerbit = b.id_penerbit
	where b.id_penerbit = 'PNB03';
   ```

4. Pada tabel TB_PENGARANG Sesuaikan Nama_pengarang : PNG03 = PLNICONPLUS dan PNG04 = JAYAJAYAJAYA
   - Update 1
   ```bash 
	update tb_pengarang set nama_pengarang = 'PLNICONPLUS' where ID_PENGARANG = 'PNG03';
   ```
   - Update 2
   ```bash 
	update tb_pengarang set nama_pengarang = 'JAYAJAYAJAYA' where ID_PENGARANG = 'PNG04';
   ```
   ```bash 
	select * from tb_pengarang;
   ```

5. Tampilkan judul buku dengan alamat penerbit di luar Jakarta

    ```bash 
	select a.JUDUL_BUKU, b.ALAMAT
	from tb_buku a
	inner join tb_penerbit b on a.id_penerbit = b.id_penerbit
	where b.ALAMAT not like 'JAKARTA';
   ```

6. Urutkan jumlah stok dari tabel TB_BUKU dari terbesar hingga terkecil
   
   ```bash 
	select judul_buku, stok from tb_buku order by STOK desc;
   ```

7. Hitung total rupiah yang didapatkan untuk penjualan buku yg mempunyai judul kata-kata 'basis data'

 	 ```bash 
	select 
	SUM(HARGA_BUKU) as TOTAL
	from tb_buku
	where JUDUL_BUKU like '%BASIS DATA'
  	 ```

8. Tampilkan filed judul buku, pengarang, harga buku, stok, kondisi stok dengan aturan kondisi stok aman jika stok lebih dari 5 dan warning jika stok sama dengan atau kurang dari 5

   ```bash 
	select a.JUDUL_BUKU, b.NAMA_PENGARANG, a.HARGA_BUKU, a.STOK ,
	CASE 
	        WHEN stok > 5 THEN 'Aman'
	        ELSE 'Warning'
	    END AS kondisi_stok
	from tb_buku a
	inner join tb_pengarang b on a.id_pengarang = b.id_pengarang 
   ```
   
9. Tampilkan filed Nama penerbit, jumlah buku, komisi , komisi penerbit adalah 25% dari total rupiah semua penjualan buku

	 ```bash 
	select NAMA_PENERBIT, STOK as JUMLAH_BUKU,
   COUNT(a.ID_BUKU) AS jumlah_buku,
   SUM(a.harga_buku * a.stok) * 0.25 AS komisi_penerbit
	from tb_buku a
	inner join tb_penerbit b on a.id_penerbit = b.id_penerbit
	group by NAMA_PENERBIT;
   ```
    
10. Jika Pengarang mendapatkan 5% dari total penjualan, hitung rupiah yang didapatkan masing-masing pengarang jika semua stok terjual

	 ```bash 
	select a.JUDUL_BUKU, b.NAMA_PENGARANG, a.HARGA_BUKU, a.STOK ,
	SUM(a.HARGA_BUKU * a.STOK) AS Total_Penjualan,
	    (SUM(a.HARGA_BUKU * a.STOK) * 0.05) AS Komisi_Pengarang
	from tb_buku a
	inner join tb_pengarang b on a.id_pengarang = b.id_pengarang
	GROUP BY 
	    a.JUDUL_BUKU, 
	    b.NAMA_PENGARANG, 
	    a.HARGA_BUKU, 
	    a.STOK;
    ```

11. Tampilkan field judul buku, harga buku, kategori harga, pada kategori harga ditampilkan murah jika harga dibawah 100.000 dan mahal jika diatas

	 ```bash 
	select JUDUL_BUKU, HARGA_BUKU,
	case
		when HARGA_BUKU > 100000 then 'MAHAL'
		else 'MURAH'
	end as KATEGORI_HARGA
	from TB_BUKU;
    ```

  **Catatan:**
Jika masih bingung dengan query-query SQL di atas, silakan pelajari dasar-dasar SQL terlebih dahulu.  
Referensi yang mudah diikuti: [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)

Tujuan repo ini bukan hanya untuk portfolio pribadi, tapi juga bisa jadi bahan belajar bagi siapa saja yang ingin memahami SQL dasar sampai menengah. 🚀




   



	
