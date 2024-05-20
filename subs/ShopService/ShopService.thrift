include "./ttypes.thrift"
include "../Exceptions.thrift"

service ShopService {
    CreateCombinationStickerResponse createCombinationSticker() throws(1: ShopException e),
    GetProductResponse getProductV2() throws(1: ShopException e),
    PurchaseOrderResponse placePurchaseOrderForFreeProduct() throws(1: ShopException e),
    PurchaseOrderResponse placePurchaseOrderWithLineCoin() throws(1: ShopException e),
    void canReceivePresent() throws(1: ShopException e),
    PurchaseRecordList getSentPresents() throws(1: ShopException e),
    PurchaseRecordList getPurchasedProducts() throws(1: ShopException e),
    PurchaseRecordList getReceivedPresents() throws(1: ShopException e),
    DetailedProductList getOwnedProducts() throws(1: ShopException e),
}