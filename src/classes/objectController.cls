public class objectController {
	Public  List<SelectOption> options_Objects {get;set;}
	Public  List<SelectOption> options_Childs  {get;set;}
	Public  String object_Name{get;set;}
	public  objectController()
  {
       options_Objects =   new  List<SelectOption>();
       options_Childs  =   new  List<SelectOption>();
       List<Schema.SObjectType> GlobalDescribe    = Schema.getGlobalDescribe().Values();
       for( Schema.SObjectType ObjectType :GlobalDescribe)
       {
        options_Objects.add( new SelectOption( ObjectType.getDescribe().getLocalName() ,  ObjectType.getDescribe().getLabel() ) ); 
       }
   }
   public void childList()
   {
        options_Childs.clear();
        Schema.DescribeSObjectResult R =  Schema.getGlobalDescribe().get( object_Name).getDescribe();
        for( Schema.ChildRelationship  Child: R.getChildRelationships())
        {
         options_Childs.add( new SelectOption( Child.getChildSObject().getDescribe().getLocalName() ,  Child.getChildSObject().getDescribe().getLabel()  ) ); 
        }

   }

}