IMPORT $;
EXPORT File_PeopleAll := MODULE 
  EXPORT People   := DATASET('~~RDS::OUT::PeopleAll',$.Layouts.PeopleAll,FLAT);
  EXPORT Vehicle  := People.Vehiclerecs; 
  EXPORT Property := People.PropRecs;    
  EXPORT Taxdata  := People.PropRecs.TaxRecs;
END;