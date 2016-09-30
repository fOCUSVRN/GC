# GC

This is the fork of the Interface IGarbo (http://stackoverflow.com/questions/415958/how-to-automatically-free-classes-objects)

The subj maybe used for "one-line" create classes and allows to forget the next pattern: 

```pascal
MyClass := TMyClass.Create;
   try
   ...
   finally
      FreeAndNil(MyClass);
   end;
```

Using:
```pascal
 MyClass := GC(TMyClass.Create).Add;
 
//Or

 MyClass := GC(TMyClass.Create(param1,param2)).Add;
 ```
 
 
 
 

