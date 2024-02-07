import Owner from 0x05

transaction(cyclename: String, brandname: String, modelno: String, manufacturingyear: Int, account: Address)
{
    prepare(signer:AuthAccount)
    {

    }
    execute 
    {
        Owner.addowner(cyclename: cyclename, brandname: brandname, modelno: modelno, manufacturingyear: manufacturingyear, account: account)
        log("Features Stored")
    }
}
