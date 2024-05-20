include "./ttypes.thrift"
include "./ext_ttypes.thrift"
include "../Exceptions.thrift"

service ShopServiceForLiff {
    GetTotalCoinBalanceResponse getTotalCoinBalance() throws(1: ShopException e),
    GetFriendsProfilesResponse getFriendProfiles() throws(1: ShopException e),
    CanFriendReceiveGiftResponse canFriendReceiveGift() throws(1: ShopException e),
    GetProductResponse getProduct() throws(1: ShopException e),
    BirthdayGiftAssociationVerifyForLiffResponse verifyBirthdayGiftAssociationToken() throws(1: ShopException e),
    ShowcaseV3 getShowcase() throws(1: ShopException e),
    EmailRegistrationStatusResponse checkEmailRegistered() throws(1: ShopException e),
    GetEndPagePromotionResponse getEndPagePromotions() throws(1: ShopException e),
    GetMarketingBannerResponse getMarketingBanner() throws(1: ShopException e),
    GetFriendStatusWithPremiumOaResponse getFriendStatusWithPremiumOa() throws(1: ShopException e),
    GetWishListResponse getWishList() throws(1: ShopException e),
    GetWishStatusResponse getWishStatus() throws(1: ShopException e),
    AddWishResponse addWish() throws(1: ShopException e),
    RemoveWishResponse removeWish() throws(1: ShopException e),
    GetDisplayPopularTabForAuthorResponse getDisplayPopularTabForAuthor() throws(1: ShopException e),
    GetFriendStatusWithPremiumOaResponse getFriendStatusWithPremiumOa() throws(1: ShopException e),
    GrantWelcomeStickerIncentiveResponse grantWelcomeStickerIncentive() throws(1: ShopException e),
    GetCombinationStickerDetailsResponse getCombinationStickerDetails() throws(1: ShopException e),
}