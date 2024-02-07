import Owner from 0x05

pub fun main(account: Address): Owner.Features {
    return Owner.owners[account]!
}

