-- FakturaVydana.ID = VazObj.Cil_ID, FV-VazObj
SELECT Cil_ID, Zdroj_ID FROM EconomicBase_VazbaObjektu AS VazObj WITH(NOLOCK) WHERE (Deleted = 0)
-- VazObj.Zdroj_ID = DLV.ID, VazObj-DLV
SELECT ID, AdresaKontaktniOsobaNazev, CisloDokladu, SumaZaklad, SumaCelkem, DodaciAdresaNazev, DodaciAdresaMisto, Odkaz FROM SkladovyDoklad_DodaciListVydany AS DLV WITH(NOLOCK) WHERE (Deleted = 0)
-- DLV.ID = PolDLV.Parent_ID, DLV-PolDLV
-- Polozky.ID = NavDokl.PolozkaCil_ID, PolFv-NavDokl
SELECT ID, DokladZdroj_ID FROM EconomicBase_NavazujiciDoklad NavDokl WITH(NOLOCK) WHERE (Deleted = 0)
-- NavDokl.DokladZdroj_ID = DLV.ID, NavDokl-DLV
SELECT ID, AdresaKontaktniOsobaNazev, CisloDokladu, SumaZaklad, SumaCelkem, AdresaNazev, AdresaUlice, AdresaPSC, AdresaMisto, DodaciAdresaNazev, DodaciAdresaUlice, DodaciAdresaPSC, DodaciAdresaMisto, Odkaz FROM SkladovyDoklad_DodaciListVydany AS DLV WITH(NOLOCK) WHERE (Deleted = 0)

-- FakturaVydana.ID = SazDPHDokl.Parent_ID, FV-SazDPHDokl
SELECT ID, RozpisDPH_ID, Parent_ID FROM Dane_SazbaDPHNaDoklade AS SazDPHDokl WITH(NOLOCK) WHERE (Deleted = 0)
-- SazDPHDokl.RozpisDPH_ID = RozDPH.ID, SazDPHDokl-RozDPH
SELECT ID, Sazba, SumaZaklad, SumaDph, SumaCelkem FROM Dane_RozpisDPH AS RozDPH WITH(NOLOCK) WHERE (Deleted = 0)

GO
