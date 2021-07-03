public class AccountUpdate
{
    public void show(id myid,string phone)
    {
        List<Contact> cons=new List<Contact>();
        Account a1=[select id,phone,(select lastname,firstname,phone from contacts) from Account where id=:myid];
        a1.phone=phone;
        update a1;
        
        for(Contact c1:a1.contacts)
        {
            c1.phone=phone;
            cons.add(c1);
        }
        update cons;
    }
}