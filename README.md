# GC

This is the fork of the Interface IGarbo (http://stackoverflow.com/questions/415958/how-to-automatically-free-classes-objects)

The stuff maybe used for "one-line" create classes and allows to forget about pattern 

```pascal
MyClass := TMyclass.Create;
   try
   ...
   finally
      freeandnil(MyCLass);
   end;
```

Using:
```pascal
 MyClass := GC(TMyclass.Create).Add;
 
//Or

 MyClass := GC(TMyclass.Create(param1,param2)).Add;
 ```
 
 
 
 

