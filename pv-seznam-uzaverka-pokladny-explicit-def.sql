-- PV bez vazby
SELECT ID, CisloDokladu, ZpusobPlatby_ID, SumaCelkem, PlatbaHotovost, ZauctovaniZpracovano, NepenezniPlatbySuma, AdresaNazev, DatumVystaveni FROM SkladovyDoklad_ProdejkaVydana AS PV WITH(NOLOCK) WHERE (Deleted = 0)
-- PV.ID = Platba.Parent_ID, PV-Platba
SELECT ID, Parent_ID, Castka, Platidlo_ID FROM SkladovyDoklad_PlatbaProdejkyVydane AS Platba WITH(NOLOCK) WHERE (Deleted = 0)
-- Platba.Platidlo_ID = Platidlo.ID, Platba-Platidlo
SELECT ID, Kod FROM SkladovyDoklad_NepenezniPlatidlo AS Platidlo WITH(NOLOCK) WHERE (Deleted = 0)
-- PV.ZpusboPlatby_ID = ZpPlatby.ID, PV-ZpPlatby
SELECT ID, Kod, Nazev FROM Ciselniky_ZpusobPlatby AS ZpPlatby WITH(NOLOCK) WHERE (Deleted = 0)
GO
