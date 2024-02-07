pub contract Owner {

    pub var owners: {Address: Features}
    
    pub struct Features {
        pub let cyclename: String
        pub let brandname: String
        pub let modelno: String
        pub let manufacturingyear: Int
        pub let account: Address

        init(_cyclename: String, _brandname: String, _modelno: String, _manufacturingyear:Int, _account: Address) {
            self.cyclename = _cyclename
            self.brandname = _brandname
            self.modelno = _modelno
            self.manufacturingyear = _manufacturingyear 
            self.account = _account
        }
    }

    pub fun addowner(cyclename: String, brandname: String, modelno: String, manufacturingyear: Int , account: Address) {
        let newone = Features(_cyclename: cyclename, _brandname: brandname, _modelno: modelno, _manufacturingyear: manufacturingyear, _account: account)
        self.owners[account] = newone
    }

    init() {
        self.owners = {}
    }

}
