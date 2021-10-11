-- InterniDoklad.ID = NavazDokl.DokladCil_ID, ID-NavazDokl
SELECT ID, DokladZdrojObjectName, DokladZdroj_ID, DokladCilObjectName, DokladCil_ID FROM EconomicBase_NavazujiciDoklad NavazDokl WITH(NOLOCK) WHERE (Deleted = 0)
-- NavazDokl.DokladZdroj_ID = PV.ID, NavazDokl-PV
SELECT ID, CisloDokladu, AdresaNazev, Odkaz, ZpusobPlatby_ID, SumaZaklad, SumaDan, SumaCelkem FROM SkladovyDoklad_ProdejkaVydana PV WITH(NOLOCK) WHERE (Deleted = 0)
-- PV.ZpusobPlatby_ID = ZpPlatby.ID, PV-ZpPlatby
SELECT ID, Kod, Nazev FROM Ciselniky_ZpusobPlatby ZpPlatby WITH(NOLOCK) WHERE (Deleted = 0)

