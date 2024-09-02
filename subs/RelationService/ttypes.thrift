enum UserType {
    USER = 1,
    BOT  = 2,
}

struct RichString {
    1: required string content,
    2: required map<string, string> meta,
}

struct TargetProfileDetail {
    1: required i64 snapshotTimeMillis,
    2: required string profileName,
    3: required string picturePath,
    4: required RichString statusMessage,
    5: required string musicProfile,
    6: required string videoProfile,
    7: required AvatarProfile avatarProfile,
    8: required PictureSource pictureSource,
    9: required string pictureStatus,
}

struct UserFriendDetail {
    1: required i64 createdTime,
    3: required string overriddenName,
    4: required i64 favoriteTime,
    6: required bool hidden,
    7: required string ringtone,
    8: required string ringbackTone,
}

struct BotFriendDetail {
    1: required i64 createdTime,
    4: required i64 favoriteTime,
    6: required bool hidden,
}

struct NotFriend {
}

struct FriendDetail {
    1: required UserFriendDetail user,
    2: required BotFriendDetail bot,
    3: required NotFriend notFriend,
}

struct UserBlockDetail {
    3: required bool deletedFromBlockList,
}

struct BotBlockDetail {
    3: required bool deletedFromBlockList,
}

struct NotBlocked {
}

struct BlockDetail {
    1: required UserBlockDetail user,
    2: required BotBlockDetail bot,
    3: required NotBlocked notBlocked,
}

struct RecommendationReasonSharedChat {
    1: required string chatMid,
}

struct RecommendationReasonReverseFriendByUserId {
}

struct RecommendationReasonReverseFriendByQRCode {
}

struct RecommendationReasonReverseFriendByPhone {
}

struct RecommendationReason {
    1: required RecommendationReasonSharedChat sharedChat,
    2: required RecommendationReasonReverseFriendByUserId reverseFriendByUserId,
    3: required RecommendationReasonReverseFriendByQRCode reverseFriendByQrCode,
    4: required RecommendationReasonReverseFriendByPhone reverseFriendByPhone,
}

struct Recommended {
    1: required i64 createdTime,
    2: required list<RecommendationReason> reasons,
    4: required bool hidden,
}

struct NotRecommended {
}

struct RecommendationDetail {
    1: required Recommended recommendationDetail,
    2: required NotRecommended notRecommended,
}

struct NotificationSetting {
    1: required bool mute,
}

struct NotificationSettingEntry {
    1: required NotificationSetting notificationSetting,
}

struct GetContactV3Response {
    1: required string targetUserMid,
    2: required UserType userType,
    3: required TargetProfileDetail targetProfileDetail,
    4: required FriendDetail friendDetail,
    5: required BlockDetail blockDetail,
    6: required RecommendationDetail recommendationDetail,
    7: required NotificationSettingEntry notificationSettingEntry,
}

struct GetContactsV3Response {
    1: required list<GetContactV3Response> responses,
}

struct AddFriendByMidResponse {
}

struct GetContactCalendarEventResponse {
    1: required string targetUserMid,
    2: required UserType userType,
    3: required ContactCalendarEvents contactCalendarEvents,
    4: required i64 snapshotTimeMillis,
}

struct GetContactCalendarEventsResponse {
    1: required list<GetContactCalendarEventResponse> responses,
}