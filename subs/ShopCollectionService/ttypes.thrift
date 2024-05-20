struct StickerDisplayData {
    1: required string stickerHash,
    2: required StickerResourceType stickerResourceType,
    3: required ImageTextProperty nameTextProperty,
    4: required PopupLayer popupLayer,
    5: required StickerSize stickerSize,
    6: required ProductAvailability productAvailability,
    7: required i32 height,
    8: required i32 width,
    9: required i64 version,
    10: required bool availableForCombinationSticker,
}

struct DisplayData {
    1: required StickerDisplayData stickerSummary,
}

struct CollectionItem {
    1: required string itemId,
    2: required string productId,
    3: required DisplayData displayData,
    4: required i32 sortId,
}

struct Collection {
    1: required string collectionId,
    2: required list<CollectionItem> items,
    3: required ProductType productType,
    4: required i64 createdTimeMillis,
    5: required i64 updatedTimeMillis,
}

struct GetUserCollectionsResponse {
    1: required list<Collection> collections,
    2: required bool updated,
}

struct CreateCollectionForUserResponse {
    1: required Collection collection,
}

struct AddItemToCollectionResponse {
}

struct RemoveItemFromCollectionResponse {
}

struct IsProductForCollectionsResponse {
    1: required bool isAvailable,
}