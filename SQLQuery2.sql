USE Restoran;
GO
INSERT INTO Kategoriler (Kategori_Adi) VALUES('Ana Yemek');
INSERT INTO Kategoriler (Kategori_Adi) VALUES('İçecek');
SELECT * FROM Kategoriler;
INSERT INTO Yemekler (Yemek_Adi, Fiyat, Kategori_ID) VALUES('Lahmacun', 70.00, 1);
INSERT INTO Yemekler (Yemek_Adi, Fiyat, Kategori_ID) VALUES('Ayran', 30.00, 2);
INSERT INTO Yemekler (Yemek_Adi, Fiyat, Kategori_ID) VALUES('Döner', 100.00, 1);
DELETE FROM Yemekler
WHERE Yemek_ID >= 1 AND Yemek_ID <= 9;
DBCC CHECKIDENT ('Yemekler', RESEED, 0);
SELECT * FROM Yemekler;
INSERT INTO Masalar (Masa_No, Kapasite) VALUES(101,4);
INSERT INTO Masalar (Masa_No, Kapasite) VALUES(102,6);
INSERT INTO Masalar (Masa_No, Kapasite) VALUES(103,2);
SELECT * FROM Masalar;
INSERT INTO Personel (Ad, Soyad, Gorev) VALUES('Şebnem', 'Ferah', 'Garson');
INSERT INTO Personel (Ad, Soyad, Gorev) VALUES('Ahmet', 'Kaya', 'Garson');
INSERT INTO Personel (Ad, Soyad, Gorev) VALUES('Çetin', 'Kömoğ', 'Kasa');
SELECT * FROM Personel;
INSERT INTO Siparisler (Masa_ID, Personel_ID) VALUES(1, 1);
INSERT INTO Siparisler (Masa_ID, Personel_ID) VALUES(2,2);
INSERT INTO Siparisler (Masa_ID, Personel_ID) VALUES(3,3);
DELETE  FROM Siparisler
WHERE Siparis_ID >= 1 AND Siparis_ID <= 9;
DBCC CHECKIDENT ('Siparisler', RESEED, 0);
SELECT * FROM Siparisler;
INSERT INTO Siparis_Detay (Siparis_ID, Yemek_ID, Adet) VALUES(1,1,1);
INSERT INTO Siparis_Detay (Siparis_ID, Yemek_ID, Adet) VALUES(2,2,2);
INSERT INTO Siparis_Detay (Siparis_ID, Yemek_ID, Adet) VALUES(3,3,3);
SELECT * FROM Siparis_Detay;

USE Restoran;
GO
SELECT * FROM Personel WHERE Ad LIKE 'Ç%';

ALTER TABLE Personel
ADD IsActive BIT DEFAULT 1,
	IsEnable BIT DEFAULT 1;

UPDATE Personel
SET IsActive = 0
WHERE Personel_ID = 3;

SELECT * FROM Personel
WHERE IsActive = 1;

UPDATE Personel SET IsActive = 1, IsEnable = 1
WHERE IsActive IS NULL OR IsEnable IS NULL;

UPDATE Personel
SET IsActive = 0
WHERE Personel_ID = 3;
USE Restoran;
GO
INSERT INTO Kategoriler (Kategori_Adi) VALUES('Ana Yemek');
INSERT INTO Kategoriler (Kategori_Adi) VALUES('İçecek');
SELECT * FROM Kategoriler;
INSERT INTO Yemekler (Yemek_Adi, Fiyat, Kategori_ID) VALUES('Lahmacun', 70.00, 1);
INSERT INTO Yemekler (Yemek_Adi, Fiyat, Kategori_ID) VALUES('Ayran', 30.00, 2);
INSERT INTO Yemekler (Yemek_Adi, Fiyat, Kategori_ID) VALUES('Döner', 100.00, 1);
DELETE FROM Yemekler
WHERE Yemek_ID >= 1 AND Yemek_ID <= 9;
DBCC CHECKIDENT ('Yemekler', RESEED, 0);
SELECT * FROM Yemekler;
INSERT INTO Masalar (Masa_No, Kapasite) VALUES(101,4);
INSERT INTO Masalar (Masa_No, Kapasite) VALUES(102,6);
INSERT INTO Masalar (Masa_No, Kapasite) VALUES(103,2);
SELECT * FROM Masalar;
INSERT INTO Personel (Ad, Soyad, Gorev) VALUES('Şebnem', 'Ferah', 'Garson');
INSERT INTO Personel (Ad, Soyad, Gorev) VALUES('Ahmet', 'Kaya', 'Garson');
INSERT INTO Personel (Ad, Soyad, Gorev) VALUES('Kanye', 'West', 'Garson');
INSERT INTO Personel (Ad, Soyad, Gorev) VALUES('Çetin', 'Kömoğ', 'Kasa');
SELECT * FROM Personel;
INSERT INTO Siparisler (Masa_ID, Personel_ID) VALUES(1, 1);
INSERT INTO Siparisler (Masa_ID, Personel_ID) VALUES(2,2);
INSERT INTO Siparisler (Masa_ID, Personel_ID) VALUES(3,3);
DELETE  FROM Siparisler
WHERE Siparis_ID >= 1 AND Siparis_ID <= 9;
DBCC CHECKIDENT ('Siparisler', RESEED, 0);
SELECT * FROM Siparisler;
INSERT INTO Siparis_Detay (Siparis_ID, Yemek_ID, Adet) VALUES(1,1,1);
INSERT INTO Siparis_Detay (Siparis_ID, Yemek_ID, Adet) VALUES(2,2,2);
INSERT INTO Siparis_Detay (Siparis_ID, Yemek_ID, Adet) VALUES(3,3,3);
SELECT * FROM Siparis_Detay;