
USE Restoran;
GO

CREATE VIEW Rapor_Siparisler AS
SELECT SD.Detay_ID, Y.Yemek_Adi, K.Kategori_Adi
FROM Siparis_Detay AS SD
JOIN Yemekler AS Y ON SD.Yemek_ID = Y.Yemek_ID
JOIN Kategoriler AS K ON Y.Kategori_ID = K.Kategori_ID;
-- SELECT İŞLEMLERİ
USE Restoran;
GO
SELECT Personel_ID, Ad, Soyad, Gorev
FROM Personel
WHERE  IsActive = 1;

SELECT * FROM Yemekler;
-- TOP İŞLEMİ
USE Restoran;
GO
ALTER TABLE Yemekler
ADD IsActive BIT DEFAULT 1;

UPDATE Yemekler
SET IsActive = 1;

SELECT TOP 2 Yemek_Adi, Fiyat
FROM Yemekler
WHERE IsActive = 1
ORDER BY Fiyat DESC;

-- DISTINCT KULLANIMI
USE Restoran;
GO
SELECT DISTINCT Kategori_ID
FROM Yemekler;

--WHERE İLE KOŞULLAMA
USE Restoran;
GO
SELECT Ad, Soyad, Gorev
FROM Personel
WHERE Gorev = 'Garson' and IsActive = 1;

--BETWEEN KULLANIMI
USE Restoran;
GO

SELECT Yemek_Adi, Fiyat
FROM Yemekler
WHERE Fiyat BETWEEN 80 AND 140 AND IsActive = 1;

-- IN KULLANIMI
USE Restoran;
GO
SELECT Masa_No, Kapasite
FROM Masalar
WHERE Kapasite IN(2,6);

-- LIKE KULLANIMI
USE Restoran;
GO
SELECT Ad, Soyad, Gorev FROM Personel
WHERE Ad LIKE '%a%';

-- UPDATE, DROP, ALTER İŞLEMLERİ
USE Restoran;
GO
UPDATE Yemekler
SET Fiyat = 400
WHERE Yemek_Adi = 'Ayran';

USE Restoran;
GO

ALTER TABLE Masalar
ADD Durum NVARCHAR(20) CONSTRAINT DF_Masalar_Durum DEFAULT 'Boş';

ALTER TABLE Masalar
DROP CONSTRAINT DF_Masalar_Durum;
ALTER TABLE Masalar
DROP Column Durum;

-- COUNT MAX MIN KULLANIMI

USE Restoran;
GO
SELECT COUNT(Personel_ID) AS Toplam_Personel_Sayisi
FROM Personel
WHERE IsActive = 1;

SELECT MAX(Fiyat) AS En_Yuksek_Fiyat
FROM Yemekler
WHERE IsActive = 1;

SELECT TOP 1 Yemek_Adi, Fiyat FROM Yemekler
WHERE IsActive = 1
ORDER BY Fiyat DESC;

SELECT MIN(Fiyat) AS En_Dusuk_Fiyat
FROM Yemekler
WHERE IsActive = 1;

SELECT TOP 1 Yemek_Adi, Fiyat FROM Yemekler
WHERE IsActive = 1
ORDER BY Fiyat ASC;