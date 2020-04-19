public class ClassName{
       public List<SelectOption> objects {get; set;}
       public List<SObject> records {get; set;}
       public string choosenObject {get; set;}
       public ClassName(){
               objects = new List<SelectOption>();
               records = new List<SObject>();
               Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe();
               List<String> objectList = new List<String>();
               objectList.addAll(gd.keyset());
               Schema.DescribeSobjectResult[] results = Schema.describeSObjects(objectList );
               for(Schema.DescribeSobjectResult res : results) {
                    if( ! res.isCustom())
                          objects.add(new selectOption(res.getName() ,res.getLabel()));
               }

        }
        public void queryMe(){
               if(string.isNotBlank(choosenObject))
               records = database.query('select Id from '+choosenObject);
               //you may need to remove Name field for some objects
        }
}