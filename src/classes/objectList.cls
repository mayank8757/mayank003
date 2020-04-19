public class objectList{
    public List<SelectOption> getName {get; set;}
       public List<SObject> records {get; set;}
  public String val {get;set;}
    
    public objectList(){
               getName = new List<SelectOption>();
               records = new List<SObject>();
               Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe();
               List<String> objectList = new List<String>();
               objectList.addAll(gd.keyset());
               Schema.DescribeSobjectResult[] results = Schema.describeSObjects(objectList );
               for(Schema.DescribeSobjectResult res : results) {
                    if( ! res.isCustom())
                          getName.add(new selectOption(res.getName() ,res.getLabel()));
               }

        }
        public void queryMe(){
               if(string.isNotBlank(val))
               records = database.query('select Id from '+val);
               //you may need to remove Name field for some objects
        }
}
    
  
 /* public List<SelectOption> getName()
  {
    List<Schema.SObjectType> gd = Schema.getGlobalDescribe().Values();   
       
    List<SelectOption> options = new List<SelectOption>();
      
    for(Schema.SObjectType f : gd)
    {
       options.add(new SelectOption(f.getDescribe().getLabel(),f.getDescribe().getLabel()));
        
    }
    return options;
    
   }
}*/