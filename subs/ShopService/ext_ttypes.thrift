// ShopServiceForLiff [Mix]
include "../Types.thrift"
include "./ttypes.thrift"

struct GetTotalCoinBalanceResponse {
    1: required string totalBalance,
    2: required string paidCoinBalance,
    3: required string freeCoinBalance,
    4: required string rewardCoinBalance,
    5: required string expectedAutoExchangedCoinBalance,
}

struct FriendProfile {
    1: required string friendId,
    2: required string displayName,
    3: required string pictureUrl,
}

struct GetFriendsProfilesResponse {
    1: required list<FriendProfile> friendsProfiles,
}

struct CanFriendReceiveGiftResponse {
    1: required bool canReceive,
    2: required ShopErrorCode shopErrorCode,
}

struct BirthdayGiftAssociationVerifyForLiffResponse {
    1: required BirthdayGiftAssociationVerifyTokenStatus tokenStatus,
    2: required FriendProfile friendProfile,
}

struct EmailRegistrationStatusResponse {
    1: required bool emailRegistered,
}

enum BannerType {
    EVENT  = 0,
    NEW    = 1,
    SALE   = 2,
    NOTICE = 3,
}

struct TextBanner {
    1: required BannerType bannerType,
    2: required string title,
    3: required string link,
    4: required string id,
}

struct ImageBanner {
    1: required string link,
    2: required string imageLink,
    4: required string id,
}

struct MarketingBanner {
    1: required string redirectLink,
    2: required string imageLink,
    3: required string id,
}

struct GetEndPagePromotionResponse {
    1: required TextBanner textBanner,
    2: required ImageBanner imageBanner,
}

struct GetMarketingBannerResponse {
    1: required MarketingBanner marketingBanner,
}

struct GetFriendStatusWithPremiumOaResponse {
    1: required GetFriendStatusWithPremiumOaResult result,
}

struct WishProduct {
    1: required ProductSearchSummary product,
    2: required bool owned,
    3: required bool canPresent,
    4: required i64 wishedTimeMillis,
}

struct GetWishListResponse {
    1: required i32 totalSize,
    2: required string continuationToken,
    3: required list<WishProduct> products,
}

struct GetWishStatusResponse {
    1: required bool wished,
}

struct AddWishResponse {
}

struct RemoveWishResponse {
}

struct GetDisplayPopularTabForAuthorResponse {
    1: required bool displayPopularTab,
}

enum GrantWelcomeStickerIncentiveState {
    SUCCESS               = 0,
    USER_DOES_NOT_QUALIFY = 1,
    ERROR                 = 2,
}

struct GrantWelcomeStickerIncentiveResponse {
    1: required GrantWelcomeStickerIncentiveState state,
}

struct StickerDetailForCombinationSticker {
    1: required string packageId,
    2: required SubType subtype,
    3: required string name,
    4: required i64 latestVersion,
    5: required StickerResourceType stickerResourceType,
    6: required string authorId,
    7: required string author,
    8: required i32 priceTier,
    9: required string priceInLineCoin,
    10: required ProductSubscriptionProperty subscriptionProperty,
    11: required PromotionInfo promotionInfo,
    12: required set<string> salesFlags,
}

struct GetCombinationStickerDetailsResponse {
    1: required string id,
    2: required list<StickerDetailForCombinationSticker> stickerDetails,
}