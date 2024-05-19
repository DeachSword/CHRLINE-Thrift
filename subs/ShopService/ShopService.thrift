enum ProductType {
    STICKER = 1,
    THEME = 2,
    STICON = 3;
}

enum StickerResourceType {
    STATIC = 1,
    ANIMATION = 2,
    SOUND = 3,
    ANIMATION_SOUND = 4,
    POPUP = 5,
    POPUP_SOUND = 6,
    NAME_TEXT = 7,
    PER_STICKER_TEXT = 8;
}

enum ThemeResourceType {
    STATIC = 1;
    ANIMATION = 2;
}

enum SticonResourceType {
    STATIC = 1;
    ANIMATION = 2;
}

enum ImageTextPropertyStatusType {
    OK = 0,
    PRODUCT_UNSUPPORTED = 1,
    TEXT_NOT_SPECIFIED = 2,
    TEXT_STYLE_UNAVAILABLE = 3,
    CHARACTER_COUNT_LIMIT_EXCEEDED = 4,
    CONTAINS_INVALID_WORD = 5;
}

enum SubType {
    GENERAL = 0,
    CREATORS = 1,
    STICON = 2;
}

enum StickerSize {
    NORMAL = 0;
    BIG = 1;
}

enum PopupLayer {
    FOREGROUND = 0;
    BACKGROUND = 1;
}

enum ProductSalesState {
    ON_SALE = 0,
    OUTDATED_VERSION = 1,
    NOT_ON_SALE = 2;
}

enum PromotionType {
    NONE = 0,
    CARRIER = 1,
    BUDDY = 2,
    INSTALL = 3,
    MISSION = 4,
    MUSTBUY = 5;
}

enum PromotionMissionType {
    DEFAULT = 1;
    VIEW_VIDEO = 2;
}

enum ContactStatus {
    UNSPECIFIED       = 0;
    FRIEND            = 1;
    FRIEND_BLOCKED    = 2;
    RECOMMEND         = 3;
    RECOMMEND_BLOCKED = 4;
    DELETED           = 5;
    DELETED_BLOCKED   = 6;
}

enum DefaulteditorsPickShowcaseType {
    STATIC = 0,
    POPULAR = 1,
    NEW_RELEASE = 2;
}

enum ShopErrorCode {
    UNKNOWN = 0,
    NONE = 1,
    ILLEGAL_ARGUMENT = 16641,
    NOT_FOUND = 16642,
    NOT_AVAILABLE = 16643,
    NOT_PAID_PRODUCT = 16644,
    NOT_FREE_PRODUCT = 16645,
    ALREADY_OWNED = 16646,
    ERROR_WITH_CUSTOM_MESSAGE = 16647,
    NOT_AVAILABLE_TO_RECIPIENT = 16648,
    NOT_AVAILABLE_FOR_CHANNEL_ID = 16649,
    NOT_SALE_FOR_COUNTRY = 16650,
    NOT_SALES_PERIOD = 16651,
    NOT_SALE_FOR_DEVICE = 16652,
    NOT_SALE_FOR_VERSION = 16653,
    ALREADY_EXPIRED = 16654,
    AUTHENTICATION_FAILED = 16897,
    BALANCE_SHORTAGE = 17153,
    INTERNAL_SERVER_ERROR = 20737,
    SERVICE_IN_MAINTENANCE_MODE = 20738,
    SERVICE_UNAVAILABLE = 20739;
}

struct Locale {
    1: string language,
    2: string country;
}

struct GetProductRequest {
    1: ProductType productType,
    2: string productId,
    3: string carrierCode,
    4: bool saveBrowsingHistory;
}

struct GetProductResponse {
    1: ProductDetail productDetail;
}

struct ProductDetail {
    1: string id,
    2: string billingItemId,
    3: string type,
    4: SubType subtype,
    5: string billingCpId,
    11: string name,
    12: string author,
    13: string details,
    14: string copyright,
    15: string notice,
    16: PromotionInfo promotionInfo,
    21: i64 latestVersion,
    22: string latestVersionString,
    23: i64 version,
    24: string versionString,
    25: ApplicationVersionRange applicationVersionRange,
    31: bool owned,
    32: bool grantedByDefault,
    41: i32 validFor,
    42: i64 validUntil,
    51: bool onSale,
    52: set<string> salesFlag,
    53: bool availableForPresent,
    54: bool availableForMyself,
    61: i32 priceTier,
    62: Price price,
    63: string priceInLineCoin,
    64: Price localizedPrice,
    91: map<string, list<string>> images,
    92: map<string, string> attributes,
    93: string authorId,
    94: StickerResourceType stickerResourceType,
    95: ProductProperty productProperty,
    96: ProductSalesState productSalesState,
    97: i64 installedTime,
    101: ProductWishProperty productWishProperty,
    102: ProductSubscriptionProperty productSubscriptionProperty,
    103: ProductPromotionProperty productPromotionProperty,
    104: bool availableInCountry,
    105: list<EditorsPickBannerForClient> editorsPickBanners,
    106: bool ableToBeGivenAsPresent;
}

struct ApplicationVersionRange {
    1: string lowerBound,
    2: bool lowerBoundInclusive,
    3: string upperBound,
    4: bool upperBoundInclusive;
}

struct EditorsPickBannerForClient {
    1: i64 id,
    2: string endPageBannerImageUrl,
    3: DefaulteditorsPickShowcaseType defaulteditorsPickShowcaseType,
    4: bool showNewBadge,
    5: string name,
    6: string description;
}

struct Price {
    1: string currency,
    2: string amount,
    3: string priceString;
}

struct ProductProperty {
    1: StickerProperty stickerProperty,
    2: ThemeProperty themeProperty,
    3: SticonProperty sticonProperty;
}

struct StickerProperty {
    1: bool hasAnimation,
    2: bool hasSound,
    3: bool hasPopup,
    4: StickerResourceType stickerResourceType,
    5: string StickerOptions,
    6: i32 compactStickerOptions,
    7: string stickerHash,
    9: list<string> stickerIds,
    10: ImageTextProperty nameTextProperty,
    11: bool availableForPhotoEdit,
    12: map<string, string> stickerDefaultTexts,
    13: StickerSize stickerSize,
    14: PopupLayer popupLayer,
    15: bool cpdProduct;
}

struct ThemeProperty {
    1: string thumbnail,
    2: ThemeResourceType themeResourceType;
}

struct SticonProperty {
    2: list<string> sticonIds,
    3: bool availableForPhotoEdit,
    4: SticonResourceType sticonResourceType,
    5: list<list<string>> endPageMainImages;
}

struct ImageTextProperty {
    1: ImageTextPropertyStatusType status,
    2: string plaintext,
    3: i32 nameTextMaxCharacterCount,
    4: string encryptedText;
}

struct LpPromotionProperty {
    1: string andingPageUrl,
    2: string label,
    3: string buttonLabel;
}

struct ProductWishProperty {
    1: i64 totalCount;
}

struct ProductSubscriptionProperty {
    1: bool availableForSubscribe,
    2: i32 subscriptionAvailability;
}

struct ProductPromotionProperty {
    1: LpPromotionProperty lpPromotionProperty;
}

struct PromotionDetail {
    1: PromotionBuddyInfo promotionBuddyInfo,
    2: PromotionInstallInfo promotionInstallInfo,
    3: PromotionMissionInfo promotionMissionInfo;
}

struct PromotionInfo {
    1: PromotionType promotionType,
    2: PromotionDetail promotionDetail,
    3: PromotionBuddyInfo promotionBuddyInfo;
}

struct PromotionBuddyInfo {
    1: string buddyMid,
    2: PromotionBuddyDetail promotionBuddyDetail;
}

struct PromotionInstallInfo {
    1: string downloadUrl,
    2: string customUrlSchema;
}

struct PromotionMissionInfo {
    1: PromotionMissionType promotionMissionType,
    2: bool missionCompleted,
    3: string downloadUrl,
    4: string customUrlSchema;
}

struct PromotionBuddyDetail {
    1: string searchId,
    2: ContactStatus contactStatus,
    3: string name,
    4: string pictureUrl,
    5: string statusMessage;
}

struct PurchaseOrder {
    1: string shopId,
    2: string productId,
    5: string recipientMid,
    11: Price price,
    12: bool enableLinePointAutoExchange,
    21: Locale locale,
    31: map<string, string> presentAttributes;
}

struct PurchaseOrderResponse {
    1: string orderId,
    11: map<string, string> attributes,
    12: string billingConfirmUrl;
}

struct PurchaseRecordList {
    1: list<PurchaseRecord> purchaseRecords,
    2: i32 offset,
    3: i32 totalSize;
}

struct PurchaseRecord {
    1: ProductDetail productDetail,
    11: i64 purchasedTime,
    21: string giver,
    22: string recipient,
    31: Price purchasedPrice;
}

struct DetailedProductList {
    1: list<ProductDetail> productList,
    2: i32 offset,
    3: i32 totalSize;
}

struct CreateCombinationStickerResponse {
    1: string id;
}

exception ShopException {
    1: ShopErrorCode code,
    2: string reason,
    3: map<string, string> parameterMap;
}

service ShopService {

    CreateCombinationStickerResponse createCombinationSticker () throws (1: ShopException e);

    GetProductResponse getProductV2 () throws (1: ShopException e);

    PurchaseOrderResponse placePurchaseOrderForFreeProduct () throws (1: ShopException e);

    PurchaseOrderResponse placePurchaseOrderWithLineCoin () throws (1: ShopException e);

    void canReceivePresent () throws (1: ShopException e);

    PurchaseRecordList getSentPresents () throws (1: ShopException e);

    PurchaseRecordList getPurchasedProducts () throws (1: ShopException e);

    PurchaseRecordList getReceivedPresents () throws (1: ShopException e);

    DetailedProductList getOwnedProducts () throws (1: ShopException e);

}
