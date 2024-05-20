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

enum ProductAvailability {
    PURCHASE_ONLY            = 0,
    PURCHASE_OR_SUBSCRIPTION = 1,
    SUBSCRIPTION_ONLY        = 2,
}

struct ProductSearchSummary {
    1: required string id,
    2: required ProductType type,
    3: required string name,
    4: required string author,
    5: required PromotionInfo promotionInfo,
    6: required i64 version,
    7: required bool newFlag,
    8: required i32 priceTier,
    9: required string priceInLineCoin,
    10: required ProductProperty property,
    11: required SubType subType,
    12: required bool onSale,
    13: required bool availableForPresent,
    14: required bool availableForPurchase,
    15: required i32 validDays,
    16: required string authorId,
    17: required bool bargainFlag,
    18: required string copyright,
    19: required ProductAvailability availability,
    20: required string interactionEventParameter,
    21: required set<i64> editorsPickIds,
}

enum DemographicGenderType {
    ALL    = 0,
    MALE   = 1,
    FEMALE = 2,
}

enum DemographicAgeType {
    ALL        = 0,
    AGE_0_19   = 1,
    AGE_20_29  = 2,
    AGE_30_39  = 3,
    AGE_40_INF = 4,
    AGE_40_49  = 5,
    AGE_50_INF = 6,
}

enum ShowcaseType {
    POPULAR                    = 0,
    NEW_RELEASE                = 1,
    EVENT                      = 2,
    RECOMMENDED                = 3,
    POPULAR_WEEKLY             = 4,
    POPULAR_MONTHLY            = 5,
    POPULAR_RECENTLY_PUBLISHED = 6,
    BUDDY                      = 7,
    EXTRA_EVENT                = 8,
    BROWSING_HISTORY           = 9,
    POPULAR_TOTAL_SALES        = 10,
    NEW_SUBSCRIPTION           = 11,
    POPULAR_SUBSCRIPTION_30D   = 12,
    CPD_STICKER                = 13,
    POPULAR_WITH_FREE          = 14,
}

struct DemographicType {
    1: required DemographicGenderType demographicGenderType,
    2: required DemographicAgeType demographicAgeType,
    3: required bool defaultOrder,
}

struct ShowcaseV3 {
    1: required list<ProductSearchSummary> productList,
    2: required string continuationToken,
    3: required i64 totalSize,
    4: required ShowcaseType showcaseType,
    5: required ProductType productType,
    6: required SubType subType,
    7: required DemographicType demographicType,
}

struct StickerIdRange {
    1: required i64 start,
    2: required i32 size,
}

struct StickerSummary {
    1: required list<StickerIdRange> stickerIdRanges,
    2: required i64 suggestVersion,
    3: required string stickerHash,
    4: required bool defaultDisplayOnKeyboard,
    5: required StickerResourceType stickerResourceType,
    6: required ImageTextProperty nameTextProperty,
    7: required bool availableForPhotoEdit,
    8: required PopupLayer popupLayer,
    9: required StickerSize stickerSize,
    10: required bool availableForCombinationSticker,
}

struct ThemeSummary {
    1: required string imagePath,
    2: required i64 version,
    3: required string versionString,
}

struct SticonSummary {
    1: required i64 suggestVersion,
    2: required bool availableForPhotoEdit,
    3: required SticonResourceType sticonResourceType,
}

struct ProductTypeSummary {
    1: required StickerSummary stickerSummary,
    2: required ThemeSummary themeSummary,
    3: required SticonSummary sticonSummary,
}

struct ProductSummary {
    1: required string id,
    11: required string name,
    21: required i64 latestVersion,
    25: required ApplicationVersionRange applicationVersionRange,
    32: required bool grantedByDefault,
    92: required map<string, string> attributes,
    93: required ProductTypeSummary productTypeSummary,
    94: required i64 validUntil,
    95: required i32 validFor,
    96: required i64 installedTime,
    97: required ProductAvailability availability,
    98: required string authorId,
    99: required bool canAutoDownload,
    100: required PromotionInfo promotionInfo,
}

struct ProductSummaryList {
    1: required list<ProductSummary> productList,
    2: required i32 offset,
    3: required i32 totalSize,
}

struct ProductValidationScheme {
    10: required string key,
    11: required i64 offset,
    12: required i64 size,
}

struct ProductValidationResult {
    1: required bool validated,
}

struct ShopUpdates {
    1: required string shopId,
    11: required i64 latestUpdateTime,
}

struct SearchProductsV2Response {
    1: required list<ProductSearchSummary> results,
    2: required string continuationToken,
    3: required i64 totalSize,
}

struct EditorsPickBanner {
    1: required i64 id,
    2: required string imageUrl,
    3: required string homeBannerImageUrl,
    4: required string showcaseBannerImageUrl,
    5: required list<EditorsPickShowcaseType> enableEditorsPickShowcaseTypes,
    6: required EditorsPickShowcaseType defaulteditorsPickShowcaseType,
    7: required string homeBannerV2ImageUrl,
    8: required string name,
    9: required bool containsProducts,
    10: required i64 displayPeriodBegin,
    11: required string description,
    12: required bool showNewBadge,
}

struct AuthorForShowcase {
    1: required i64 authorId,
    2: required list<ProductSearchSummary> productList,
    3: required i64 productTotalSize,
}

struct ImageSearchSummary {
    1: required string imageId,
    2: required ProductSearchSummary product,
}

struct KeywordImageList {
    1: required string tagId,
    2: required string keyword,
    3: required list<ImageSearchSummary> imageList,
}

struct URLItem {
    1: required string title,
    2: required string imageUrl,
    3: required string url,
}

struct EditorsPickContent {
    1: required URLItem urlItem,
    2: required ProductDetail productDetail,
}

enum EditorsPickContentType {                 // ContentType
    STICKER = 1,
    URL     = 2,
    THEME   = 3,
    EMOJI   = 4,
}

struct EditorsPick {
    1: required EditorsPickContentType contentType,
    2: required EditorsPickContent editorsPickContent,
}

struct EditorsPickTab {
    1: required i64 editorsPickId,
    2: required string name,
    3: required ShowcaseType showcaseType,
}

struct EditorsPickShowcase {
    1: required i64 id,
    2: required string name,
    3: required EditorsPickBanner banner,
    4: required list<EditorsPick> editorsPicks,
    5: required string continuationToken,
    6: required i32 totalSize,
    7: required string description,
    8: required EditorsPickShowcaseType type,
    9: required list<EditorsPickTab> tabs,
}

struct Category {
    1: required i64 id,
    11: required string name,
    12: required bool newFlag,
    13: required i32 productCount,
    14: required string thumbnailUrl,
}

enum TagType {
    UNKNOWN   = 0,
    CHARACTER = 1,
    TASTE     = 2,
}

struct Tag {
    1: required i64 id,
    11: required string name,
    12: required TagType tagType,
    13: required i32 productCount,
    14: required string thumbnailUrl,
}

struct ProductList {
    1: required list<ProductDetail> productList,
    2: required i32 offset,
    3: required i32 totalSize,
    11: required string title,
}

struct CategoryProductList {
    1: required Category category,
    2: required ProductList productList,
}

struct AggregatedHomeV2Response {
    1: required list<ShowcaseV3> showcases,
    2: required list<EditorsPickBanner> editorsPickBanners,
    3: required list<AuthorForShowcase> authorList,
    4: required list<KeywordImageList> keywordStickerList,
    5: required EditorsPickShowcase detailedEditorsPick,
    6: required list<CategoryProductList> detailedCategoryList,
    7: required list<Category> categoryList,
    8: required list<Tag> tagList,
}

enum CategoryType {
    GENERAL_CATEGORY = 1,
    CREATORS_TAG     = 2,
}

struct AggregatedCategory {
    1: required i64 id,
    2: required CategoryType categoryType,
    3: required string name,
    4: required i32 productCount,
    5: required string thumbnailUrl,
}

struct ListContentData {
    1: required ShowcaseV3 showcase,
    2: required list<EditorsPickBanner> editorsPickBanners,
    3: required list<AggregatedCategory> categories,
}

struct ListContent {
    1: required ListContentData contentData,
    2: required string localizedTitle,
    3: required string tsKey,
    4: required string moreLinkFragment,
}

struct AggregatedHomeNativeResponse {
    1: required list<ListContent> listContents,
}

struct DynamicHomeNativeResponse {
    1: required list<ListContent> listContents,
}

struct TagsProductList {
    1: required Tag tasteTag,
    2: required Tag characterTag,
    3: required list<ProductSearchSummary> products,
}

struct AggregatedPremiumHomeResponse {
    1: required list<ShowcaseV3> showcases,
    2: required list<EditorsPickBanner> editorsPickBanners,
    3: required AuthorForShowcase popularCreator,
    4: required TagsProductList featuredCategory,
    5: required list<TagsProductList> categoryList,
    6: required ShowcaseV3 browsingHistory,
    7: required ShowcaseV3 subscriptionSlotHistory,
}

struct AggregatedShowcaseV4 {
    1: required list<ShowcaseV3> showcases,
}

struct GetRecommendationResponse {
    1: required list<ProductSearchSummary> results,
    2: required string continuationToken,
    3: required i64 totalSize,
}

struct AuthorListResponse {
    1: required list<AuthorForShowcase> authorList,
    2: required i64 totalSize,
    3: required string continuationToken,
}

struct ProductResourceType {
    1: required StickerResourceType stickerResourceType,
    2: required ThemeResourceType themeResourceType,
    3: required SticonResourceType sticonResourceType,
}

struct LatestProductByAuthorItem {
    1: required string productId,
    2: required string displayName,
    3: required i64 version,
    4: required bool newFlag,
    5: required ProductResourceType productResourceType,
    6: required PopupLayer popupLayer,
}

struct LatestProductsByAuthorResponse {
    1: required i64 authorId,
    2: required string author,
    3: required list<LatestProductByAuthorItem> items,
}

struct GetExperimentsResponse {
    1: required map<string, string> variables,
}

struct ProductSummaryForAutoSuggest {
    1: required string id,
    2: required i64 version,
    3: required string name,
    4: required StickerResourceType stickerResourceType,
    5: required i64 suggestVersion,
    6: required PopupLayer popupLayer,
    7: required ProductType type,
    8: required ProductResourceType resourceType,
    9: required StickerSize stickerSize,
}

struct AutoSuggestionShowcaseResponse {
    1: required list<ProductSummaryForAutoSuggest> productList,
    2: required i64 totalSize,
}

struct SuggestResource {
    1: required string dataUrl,
    2: required i64 version,
    3: required i64 updatedTime,
}

struct SuggestDictionarySetting {
    1: required string language,
    2: required string name,
    3: required bool preload,
    4: required SuggestResource suggestResource,
    5: required map<i64, string> patch,
    6: required SuggestResource suggestTagResource,
    7: required map<i64, string> tagPatch,
    8: required SuggestResource corpusResource,
}

struct GetSuggestDictionarySettingResponse {
    1: required list<SuggestDictionarySetting> results,
}

struct GetRecommendOaResponse {
    1: required list<string> buddyMids,
}

struct GetSuggestResourcesResponse {
    1: required map<i64, SuggestResource> suggestResources,
}

struct GetSuggestResourcesV2Response {
    1: required map<string, SuggestResource> suggestResources,
}

struct GetTagClusterFileResponse {
    1: required string path,
    2: required i64 updatedTimeMillis,
}

struct GetResourceFileReponse {
    1: required GetTagClusterFileResponse tagClusterFileResponse,
}

struct BrowsingHistory {
    1: required ProductSearchSummary productSearchSummary,
    2: required i64 browsingTime,
}

struct GetBrowsingHistoryResponse {
    1: required list<BrowsingHistory> browsingHistory,
    2: required string continuationToken,
    3: required i32 totalSize,
}

struct DeleteAllBrowsingHistoryResponse {
}

struct SticonProductMapping {
    1: required string productId,
    2: required string oldProductId,
    3: required map<string, string> newToOldSticonIdMapping,
    4: required i32 oldPackageVersion,
    5: required i32 oldMetaVersion,
    6: required i64 stickerPackageId,
    7: required i32 stickerPackageVersion,
    8: required map<string, string> stickerIds,
}

struct GetOldSticonMappingResponse {
    1: required list<SticonProductMapping> sticonProductMappings,
    2: required i64 updatedTimeMillis,
    3: required bool updated,
}

struct SimilarImageShowcase {
    1: required ImageSearchSummary chosenImage,
    2: required list<ImageSearchSummary> similarImageList,
    3: required string continuationToken,
}

struct CustomizeImageTextResponse {
    1: required ImageTextProperty nameTextProperty,
}

enum SubscriptionPlanAvailability {
    AVAILABLE         = 0,
    DIFFERENT_STORE   = 1,
    NOT_STUDENT       = 2,
    ALREADY_PURCHASED = 3,
}

enum SubscriptionServiceType {
    STICKERS_PREMIUM = 1,
}

enum SubscriptionPlanTarget {
    GENERAL = 1,
    STUDENT = 2,
}

enum SubscriptionPlanType {
    MONTHLY = 1,
    YEARLY  = 2,
}

enum SubscriptionPlanTier {
    BASIC  = 1,
    DELUXE = 2,
}

enum SubscriptionSlotModificationResult {
    OK              = 0,
    UNKNOWN         = 1,
    NO_SUBSCRIPTION = 2,
    EXISTS          = 3,
    NOT_FOUND       = 4,
    EXCEEDS_LIMIT   = 5,
    NOT_AVAILABLE   = 6,
}

enum SubscriptionBillingResult {
    OK                     = 0,
    UNKNOWN                = 1,
    NOT_SUPPORTED          = 2,
    NO_SUBSCRIPTION        = 3,
    SUBSCRIPTION_EXISTS    = 4,
    NOT_AVAILABLE          = 5,
    CONFLICT               = 6,
    OUTDATED_VERSION       = 7,
    NO_STUDENT_INFORMATION = 8,
    ACCOUNT_HOLD           = 9,
    RETRY_STATE            = 10,
}

enum SubscriptionCampaignType {
    MISSION    = 1,
    FREE_TRIAL = 2,
}

enum SubscriptionSortType {
    DATE_ASC  = 1,
    DATE_DESC = 2,
}

enum StartBundleSubscriptionResult {
    OK                = 0,
    UNKNOWN           = 1,
    INVALID_PARAMETER = 2,
    NOT_ELIGIBLE      = 3,
    CONFLICT          = 4,
    ACCOUNT_HOLD      = 5,
    RETRY_STATE       = 6,
}

enum StopBundleSubscriptionResult {
    OK                = 0,
    INVALID_PARAMETER = 1,
    NOT_FOUND         = 2,
    NOT_SUPPORTED     = 3,
    CONFLICT          = 4,
    NOT_ELIGIBLE      = 5,
}

enum GetSubscriptionCouponCodeResult {
    OK             = 0,
    UNKNOWN        = 1,
    NOT_SUPPORTED  = 2,
    NOT_AVAILABLE  = 3,
    NOT_APPLICABLE = 4,
}

enum GetFriendStatusWithPremiumOaResult {
    FRIEND     = 0,
    BLOCKED    = 1,
    NOT_FRIEND = 2,
    ERROR      = 3,
}

enum SubscriptionCouponCampaignStatus {
    OK             = 0,
    UNKNOWN        = 1,
    NOT_SUPPORTED  = 2,
    NOT_ACTIVE     = 3,
    NOT_APPLICABLE = 4,
}

enum AcceptSubscriptionAgreementResult {
    OK              = 0,
    UNKNOWN         = 1,
    NOT_SUPPORTED   = 2,
    NO_SUBSCRIPTION = 3,
}

enum StoreCode {
    GOOGLE     = 0,
    APPLE      = 1,
    WEBSTORE   = 2,
    LINEMO     = 3,
    LINE_MUSIC = 4,
    LYP        = 5,
    TW_CHT     = 6,
    FREEMIUM   = 7,
}

struct SubscriptionPlan {
    1: required string billingItemId,
    2: required SubscriptionServiceType subscriptionService,
    3: required SubscriptionPlanTarget target,
    4: required SubscriptionPlanType type,
    5: required string period,
    6: required string freeTrial,
    7: required string localizedName,
    8: required Price price,
    9: required SubscriptionPlanAvailability availability,
    10: required string cpId,
    11: required string nameKey,
    12: required SubscriptionPlanTier tier,
}

struct GetSubscriptionPlansResponse {
    1: required list<SubscriptionPlan> plans,
}

struct SubscriptionStatus {
    1: required string billingItemId,
    2: required SubscriptionServiceType subscriptionService,
    3: required string period,
    4: required string localizedName,
    5: required bool freeTrial,
    6: required bool expired,
    7: required i64 validUntil,
    8: required i32 maxSlotCount,
    9: required SubscriptionPlanTarget target,
    10: required SubscriptionPlanType type,
    11: required StoreCode storeCode,
    12: required string nameKey,
    13: required SubscriptionPlanTier tier,
    14: required bool accountHold,
    15: required map<ProductType, i32> maxSlotCountsByProductType,
    16: required bool agreementAccepted,
}

struct GetSubscriptionStatusResponse {
    1: required map<i32, SubscriptionStatus> subscriptions,
    2: required bool hasValidStudentInformation,
    3: required map<i32, list<SubscriptionStatus>> otherOwnedSubscriptions,
}

struct GetProductSummariesInSubscriptionSlotsResponse {
    1: required list<ProductSummary> products,
    2: required string continuationToken,
    3: required i64 totalSize,
    4: required i32 maxSlotCount,
}

struct AddProductToSubscriptionSlotResponse {
    1: required SubscriptionSlotModificationResult result,
}

struct AddThemeToSubscriptionSlotResponse {
    1: required SubscriptionSlotModificationResult result,
}

struct RemoveProductFromSubscriptionSlotResponse {
    1: required SubscriptionSlotModificationResult result,
}

struct PurchaseSubscriptionResponse {
    1: required SubscriptionBillingResult result,
    2: required string orderId,
    3: required string confirmUrl,
}

struct ChangeSubscriptionResponse {
    1: required SubscriptionBillingResult result,
    2: required string orderId,
    3: required string confirmUrl,
}

struct RestoreSubscriptionResponse {
    1: required SubscriptionBillingResult result,
    2: required string orderId,
    3: required string confirmUrl,
}

struct GetProductsByTagsV2Response {
    1: required list<ProductSearchSummary> results,
    2: required string continuationToken,
    3: required i64 totalSize,
}

struct StudentInformation {
    1: required string schoolName,
    2: required string graduationDate,
}

struct GetStudentInformationResponse {
    1: required StudentInformation studentInformation,
    2: required bool isValid,
}

struct SaveStudentInformationResponse {
}

struct PurchasedSubscription {
    1: required string orderId,
    2: required SubscriptionServiceType subscriptionService,
    3: required string billingItemId,
    4: required SubscriptionPlanType type,
    5: required string localizedName,
    6: required i64 purchasedTime,
    7: required i64 validUntil,
    8: required Price price,
    9: required string nameKey,
    10: required SubscriptionPlanTier tier,
}

struct GetPurchasedSubscriptionsResponse {
    1: required list<PurchasedSubscription> subscriptions,
    2: required string continuationToken,
    3: required i64 totalSize,
}

struct FindRestorablePlanResponse {
    1: required SubscriptionBillingResult result,
    2: required string billingItemId,
    3: required string storeOrderId,
    4: required string originalStoreOrderId,
    5: required string orderId,
    6: required string mid,
}

struct SubscriptionMissionCampaign {
    1: required ProductType productType,
    2: required string productId,
}

struct SubscriptionCampaignPayload {
    1: required SubscriptionMissionCampaign mission,
}

struct SubscriptionCampaign {
    1: required string campaignId,
    2: required i64 fromInclusive,
    3: required i64 toExclusive,
    4: required SubscriptionCampaignType type,
    5: required SubscriptionCampaignPayload payload,
}

struct GetSubscriptionCampaignsResponse {
    1: required list<SubscriptionCampaign> campaigns,
}

struct GetSubscriptionRecommendationsResponse {
    1: required list<ProductSearchSummary> products,
}

struct InteractionEventResponse {
    1: required i32 responseStatus,
}

struct LibraExperiment {
    1: required string experimentId,
    2: required string groupId,
}

struct GetExperimentsV2Response {
    1: required map<string, LibraExperiment> experiments,
}

enum BirthdayGiftAssociationVerifyTokenStatus {
    VALID   = 0,
    INVALID = 1,
}

struct BirthdayGiftAssociationVerifyResponse {
    1: required BirthdayGiftAssociationVerifyTokenStatus tokenStatus,
    2: required string recipientUserMid,
}

struct SubscriptionSlotHistory {
    1: required ProductSearchSummary product,
    2: required i64 addedTime,
    3: required i64 removedTime,
}

struct GetSubscriptionSlotHistoryResponse {
    1: required list<SubscriptionSlotHistory> history,
    2: required string continuationToken,
    3: required i64 totalSize,
}

struct PopupDisplaySettings {
    1: required set<i32> pages,
    2: required set<string> editorsPickIds,
}

struct PopupPage {
    1: required string imageUrl,
    2: required string title,
    3: required string body,
}

struct PopupActionButton {
    1: required string label,
    2: required string actionUrl,
    3: required string textColorCode,
    4: required string backgroundColorCode,
}

struct PopupDismissButton {
    1: required string label,
    2: required string textColorCode,
    3: required string backgroundColorCode,
}

struct PopupContent {
    1: required list<PopupPage> pages,
    2: required PopupActionButton actionButton,
    3: required PopupDismissButton dismissButton,
}

enum PopupDesignTemplate {
    FIXED = 0,
}

enum PopupDisplayCount {
    ONCE = 0,
}

enum PopupVisualType {
    BASIC      = 0,
    FULLSCREEN = 1,
}

struct ShopPopup {
    1: required string popupId,
    2: required PopupDisplaySettings displaySettings,
    3: required PopupDisplayCount displayCount,
    4: required PopupContent content,
    5: required i32 displayPriority,
    6: required PopupVisualType visualType,
    7: required i32 displayIntervalInDays,
}

struct GetPopupsResponse {
    1: required list<ShopPopup> popups,
}

struct GetSubscriptionSlotStatusResponse {
    1: required set<string> productIdsInSlots,
    2: required i32 usedSlotCount,
    3: required i32 maxSlotCount,
}

struct GetProductKeyboardListResponse {
    1: required ProductType productType,
    2: required list<string> keyboardProductIds,
}

struct GetMusicSubscriptionStatusResponse {
    1: required i64 validUntil,
    2: required bool expired,
    3: required bool isStickersPremiumEnabled,
}

struct StartBundleSubscriptionResponse {
    1: required StartBundleSubscriptionResult result,
}

struct StopBundleSubscriptionResponse {
    1: required StopBundleSubscriptionResult result,
}

struct GetSubscriptionCouponCodeResponse {
    1: required GetSubscriptionCouponCodeResult result,
    2: required string couponCode,
}

struct GetSubscriptionCouponCampaignResponse {
    1: required SubscriptionCouponCampaignStatus status,
}

struct PopupModel {
    1: required string popupId,
    2: required bool active,
}

struct GetPopupDisplayStatusResponse {
    1: required map<string, PopupModel> popups,
}

struct GetFilteredProductsResponse {
    1: required list<ProductSearchSummary> results,
    2: required string continuationToken,
    3: required i64 totalSize,
}

struct GetProductLatestVersionForUserResponse {
    1: required i64 latestVersion,
    2: required string latestVersionString,
}

struct GetSubscriptionAgreementStatusResponse {
    1: required bool accepted,
}

struct AcceptSubscriptionAgreementResponse {
    1: required AcceptSubscriptionAgreementResult result,
}

struct ShouldShowWelcomeStickerBannerResponse {
    1: required bool shouldShowBanner,
}