unit uGC;

interface

uses System.Sysutils;

type
  IGarbo = interface
    ['{A6E17957-C233-4433-BCBD-3B53C0C2C596}']
    function Add: Pointer;
  end;

  TGarbo = class(TInterfacedObject, IGarbo)
  private
    FObj: Tobject;
  public
    function Add: Pointer;
  public
    constructor Create(anObject: Tobject);
    destructor Destroy; override;
  end;

function GC(Obj: Tobject): IGarbo;

implementation

function GC(Obj: Tobject): IGarbo;
begin
  result := TGarbo.Create(Obj);
end;

constructor TGarbo.Create(anObject: Tobject);
begin
  FObj := anObject;
end;

destructor TGarbo.Destroy;
begin
  if Assigned(FObj) then
    FreeAndNil(FObj);
  inherited;
end;

function TGarbo.Add: Pointer;
begin
  result := FObj;
end;

end.
