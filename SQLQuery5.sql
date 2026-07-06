<<<<<<< HEAD
USE Restoran;
GO
CREATE VIEW Rapor_Siparisler AS
=======
USE Restoran;
GO
CREATE VIEW Rapor_Siparisler AS
>>>>>>> 7807bcae97c88fdfbbbaf4a4683d0cbfc817b039
SELECT SD.Detay_ID, Y.Yemek_Adi, K.Kategori_Adi
FROM Siparis_Detay AS SD
JOIN Yemekler AS Y ON SD.Yemek_ID = Y.Yemek_ID
JOIN Kategoriler AS K ON Y.Kategori_ID = K.Kategori_ID;