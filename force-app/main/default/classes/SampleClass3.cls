public static SampleClass3
{

  public Account CreateAccount (String name){ Account a= new Account()
    
    a.Name=name;
    system.System.debug('Name'+a.Name);
    insert a;
    return a;
    }
  }
