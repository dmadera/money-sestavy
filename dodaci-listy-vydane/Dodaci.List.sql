-- Ciselniky_Cinnost.KodDodavatele_UserDat = AdrFirma.Kod, Cinnost-AdrFirma
SELECT ID, Kod, ObchNazev, ObchUlice, ObchMisto, ObchPsc, ICO, DIC FROM Adresar_Firma AS AdrFirma WITH(NOLOCK) WHERE (Deleted = 0)
GO
