include "./ttypes.thrift"
include "../Exceptions.thrift"

service ShopCollectionService {
    GetUserCollectionsResponse getUserCollections() throws(1: ShopException e),
    CreateCollectionForUserResponse createCollectionForUser() throws(1: ShopException e),
    AddItemToCollectionResponse addItemToCollection() throws(1: ShopException e),
    RemoveItemFromCollectionResponse removeItemFromCollection() throws(1: ShopException e),
    IsProductForCollectionsResponse isProductForCollections() throws(1: ShopException e),
}