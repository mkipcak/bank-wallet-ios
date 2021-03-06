protocol IDepositView: class {
    func showCopied()
}

protocol IDepositViewDelegate {
    var addressItems: [AddressItem] { get }
    func onCopy(index: Int)
    func onShare(index: Int)
}

protocol IDepositInteractor {
    func adapters(forCoin coin: Coin?) -> [IAdapter]
    func copy(address: String)
}

protocol IDepositInteractorDelegate: class {
}

protocol IDepositRouter {
    func share(address: String)
}
