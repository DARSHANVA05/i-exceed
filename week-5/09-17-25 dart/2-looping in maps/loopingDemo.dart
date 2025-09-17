void main()
{
 
  Map<String,dynamic> data={"Name":"Sivam","Age":43,"City":"Salem","Qualification":"Ph.D"};
  print(data);
 
  data.forEach((key,value){
    print("$key : $value");
  });
 
  for(var ele in data.entries)
  {
    print("${ele.key}: ${ele.value}");
  }
 
  for(var ele in data.values)
  {
    print(ele);
  }
 
  print(data.length);
 
  for(var i=0;i<data.entries.toList().length;i++)
  {
    print("${data.entries.toList()[i].key}:${data.entries.toList()[i].value}");
  }
}
 