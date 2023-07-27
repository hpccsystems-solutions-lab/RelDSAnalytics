IMPORT $;
Property := $.File_PeopleAll.Property;
Taxdata  := $.File_PeopleAll.Taxdata;

IsGTE(INTEGER A1, INTEGER A2) := A1 >= A2;  //Not used

EXPORT PropTaxBeds3 := COUNT(Property(Bedrooms >= 3 OR
                                      EXISTS(Taxdata(Bedrooms >= 3))
                                     )//Close Property filter
                            );//Close COUNT

// EXPORT PropTaxBeds3 := COUNT(Property(IsGTE(Bedrooms,3))); //No TaxData will change the count

