USE Restoran;
GO
CREATE VIEW Rapor_Siparisler AS
SELECT SD.Detay_ID, Y.Yemek_Adi, K.Kategori_Adi
FROM Siparis_Detay AS SD
JOIN Yemekler AS Y ON SD.Yemek_ID = Y.Yemek_ID
JOIN Kategoriler AS K ON Y.Kategori_ID = K.Kategori_ID;