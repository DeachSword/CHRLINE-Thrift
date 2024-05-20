include "../Exceptions.thrift"

enum ProductType {
    STICKER = 1,
    THEME   = 2,
    STICON  = 3,
}

enum StickerResourceType {
    STATIC           = 1,
    ANIMATION        = 2,
    SOUND            = 3,
    ANIMATION_SOUND  = 4,
    POPUP            = 5,
    POPUP_SOUND      = 6,
    NAME_TEXT        = 7,
    PER_STICKER_TEXT = 8,
}

enum ThemeResourceType {
    STATIC    = 1,
    ANIMATION = 2,
}

enum SticonResourceType {
    STATIC    = 1,
    ANIMATION = 2,
}

enum ImageTextStatus {
    OK                             = 0,
    PRODUCT_UNSUPPORTED            = 1,
    TEXT_NOT_SPECIFIED             = 2,
    TEXT_STYLE_UNAVAILABLE         = 3,
    CHARACTER_COUNT_LIMIT_EXCEEDED = 4,
    CONTAINS_INVALID_WORD          = 5,
}

enum SubType {
    GENERAL  = 0,
    CREATORS = 1,
    STICON   = 2,
}

enum StickerSize {
    NORMAL = 0,
    BIG    = 1,
}

enum PopupLayer {
    FOREGROUND = 0,
    BACKGROUND = 1,
}

enum ProductSalesState {
    ON_SALE          = 0,
    OUTDATED_VERSION = 1,
    NOT_ON_SALE      = 2,
}

enum PromotionType {
    NONE    = 0,
    CARRIER = 1,
    BUDDY   = 2,
    INSTALL = 3,
    MISSION = 4,
    MUSTBUY = 5,
}

enum PromotionMissionType {
    DEFAULT    = 1,
    VIEW_VIDEO = 2,
}

enum BrandType {
    PREMIUM    = 1,
    VERIFIED   = 2,
    UNVERIFIED = 3,
}

enum EditorsPickShowcaseType {
    STATIC      = 0,
    POPULAR     = 1,
    NEW_RELEASE = 2,
}

struct Locale {
    1: required string language,
    2: required string country,
}

struct GetProductRequest {
    1: required ProductType productType,
    2: required string productId,
    3: required string carrierCode,
    4: required bool saveBrowsingHistory,
}

struct GetProductResponse {
    1: required ProductDetail productDetail,
}

struct ProductDetail {
    1: required string id,
    2: required string billingItemId,
    3: required string type,
    4: required SubType subtype,
    5: required string billingCpId,
    11: required string name,
    12: required string author,
    13: required string details,
    14: required string copyright,
    15: required string notice,
    16: required PromotionInfo promotionInfo,
    21: required i64 latestVersion,
    22: required string latestVersionString,
    23: required i64 version,
    24: required string versionString,
    25: required ApplicationVersionRange applicationVersionRange,
    31: required bool owned,
    32: required bool grantedByDefault,
    41: required i32 validFor,
    42: required i64 validUntil,
    51: required bool onSale,
    52: required set<string> salesFlag,
    53: required bool availableForPresent,
    54: required bool availableForMyself,
    61: required i32 priceTier,
    62: required Price price,
    63: required string priceInLineCoin,
    64: required Price localizedPrice,
    91: required map<string, list<string>> images,
    92: required map<string, string> attributes,
    93: required string authorId,
    94: required StickerResourceType stickerResourceType,
    95: required ProductProperty productProperty,
    96: required ProductSalesState productSalesState,
    97: required i64 installedTime,
    101: required ProductWishProperty wishProperty,
    102: required ProductSubscriptionProperty subscriptionProperty,
    103: required ProductPromotionProperty productPromotionProperty,
    104: required bool availableInCountry,
    105: required list<EditorsPickBannerForClient> editorsPickBanners,
    106: required bool ableToBeGivenAsPresent,
    107: required bool madeWithStickerMaker,
    108: required string customDownloadButtonLabel,
}

struct ApplicationVersionRange {
    1: required string lowerBound,
    2: required bool lowerBoundInclusive,
    3: required string upperBound,
    4: required bool upperBoundInclusive,
}

struct EditorsPickBannerForClient {
    1: required i64 id,
    2: required string endPageBannerImageUrl,
    3: required EditorsPickShowcaseType defaulteditorsPickShowcaseType,
    4: required bool showNewBadge,
    5: required string name,
    6: required string description,
}

struct Price {
    1: required string currency,
    2: required string amount,
    3: required string priceString,
}

struct ProductProperty {
    1: required StickerProperty stickerProperty,
    2: required ThemeProperty themeProperty,
    3: required SticonProperty sticonProperty,
}

struct StickerProperty {
    1: required bool hasAnimation,
    2: required bool hasSound,
    3: required bool hasPopup,
    4: required StickerResourceType stickerResourceType,
    5: required string stickerOptions,
    6: required i32 compactStickerOptions,
    7: required string stickerHash,
    9: required list<string> stickerIds,
    10: required ImageTextProperty nameTextProperty,
    11: required bool availableForPhotoEdit,
    12: required map<string, string> stickerDefaultTexts,
    13: required StickerSize stickerSize,
    14: required PopupLayer popupLayer,
    15: required bool cpdProduct,
    16: required bool availableForCombinationSticker,
}

struct ThemeProperty {
    1: required string thumbnail,
    2: required ThemeResourceType themeResourceType,
}

struct SticonProperty {
    2: required list<string> sticonIds,
    3: required bool availableForPhotoEdit,
    4: required SticonResourceType sticonResourceType,
    5: required list<list<string>> endPageMainImages,
}

struct ImageTextProperty {
    1: required ImageTextStatus status,
    2: required string plaintext,
    3: required i32 nameTextMaxCharacterCount,
    4: required string encryptedText,
}

struct LpPromotionProperty {
    1: required string landingPageUrl,
    2: required string label,
    3: required string buttonLabel,
}

struct ProductWishProperty {
    1: required i64 totalCount,
}

struct ProductSubscriptionProperty {
    1: required bool availableForSubscribe,
    2: required i32 subscriptionAvailability,
}

struct ProductPromotionProperty {
    1: required LpPromotionProperty lpPromotionProperty,
}

struct PromotionDetail {
    1: required PromotionBuddyInfo promotionBuddyInfo,
    2: required PromotionInstallInfo promotionInstallInfo,
    3: required PromotionMissionInfo promotionMissionInfo,
}

struct PromotionInfo {
    1: required PromotionType promotionType,
    2: required PromotionDetail promotionDetail,
    51: required PromotionBuddyInfo buddyInfo,
}

struct PromotionBuddyInfo {
    1: required string buddyMid,
    2: required PromotionBuddyDetail promotionBuddyDetail,
    3: required bool showBanner,
}

struct PromotionInstallInfo {
    1: required string downloadUrl,
    2: required string customUrlSchema,
}

struct PromotionMissionInfo {
    1: required PromotionMissionType promotionMissionType,
    2: required bool missionCompleted,
    3: required string downloadUrl,
    4: required string customUrlSchema,
    5: required string oaMid,
}

struct PromotionBuddyDetail {
    1: required string searchId,
    2: required ContactStatus contactStatus,
    3: required string name,
    4: required string pictureUrl,
    5: required string statusMessage,
    6: required BrandType brandType,
}

struct PurchaseOrder {
    1: required string shopId,
    2: required string productId,
    5: required string recipientMid,
    11: required Price price,
    12: required bool enableLinePointAutoExchange,
    21: required Locale locale,
    31: required map<string, string> presentAttributes,
}

struct PurchaseOrderResponse {
    1: required string orderId,
    11: required map<string, string> attributes,
    12: required string billingConfirmUrl,
}

struct PurchaseRecordList {
    1: required list<PurchaseRecord> purchaseRecords,
    2: required i32 offset,
    3: required i32 totalSize,
}

struct PurchaseRecord {
    1: required ProductDetail productDetail,
    11: required i64 purchasedTime,
    21: required string giver,
    22: required string recipient,
    31: required Price purchasedPrice,
}

struct DetailedProductList {
    1: required list<ProductDetail> productList,
    2: required i32 offset,
    3: required i32 totalSize,
}

struct CreateCombinationStickerResponse {
    1: required string id,
}