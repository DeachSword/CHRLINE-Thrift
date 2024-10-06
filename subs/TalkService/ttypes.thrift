struct UpdateChatRequest {
    1: required i32 reqSeq,
    2: required Chat chat,
    3: required i32 updatedAttribute,
}

struct UpdateChatResponse {
}

struct AcceptChatInvitationByTicketRequest {
    1: required i32 reqSeq,
    2: required string chatMid,
    3: required string ticketId,
}

struct AcceptChatInvitationByTicketResponse {
}

struct AcceptChatInvitationRequest {
    1: required i32 reqSeq,
    2: required string chatMid,
}

struct ReissueChatTicketRequest {
    1: required i32 reqSeq,
    2: required string groupMid,
}

struct AcceptChatInvitationResponse {
}

struct ReissueChatTicketResponse {
    1: required string ticketId,
}

struct RejectChatInvitationRequest {
    1: required i32 reqSeq,
    2: required string chatMid,
}

struct GetAllChatMidsRequest {
    1: optional bool withMemberChats,
    2: optional bool withInvitedChats,
}

struct RejectChatInvitationResponse {
}

struct GetAllChatMidsResponse {
    1: required set<string> memberChatMids,
    2: required set<string> invitedChatMids,
}

struct CreateChatRequest {
    1: required i32 reqSeq,
    2: required i32 type,
    3: optional string name,
    4: required set<string> targetUserMids,
    5: optional string picturePath,
}

struct CreateChatResponse {
    1: required Chat chat,
}

struct BeaconCondition {
    1: required string inFriends,
    2: required string notInFriends,
    3: required bool termsAgreed,
}

struct BeaconBackgroundNotification {
    1: required i64 actionInterval,
    2: required list<BeaconCondition> actionAndConditions,
    3: required i64 actionDelay,
    4: required list<BeaconCondition> actionConditions,
}

struct LiffErrorPayload {
    3: required LiffErrorConsentRequired consentRequired,
}

struct LiffErrorConsentRequired {
    1: required string channelId,
    2: required string consentUrl,
}

struct ErrorExtraInfo {
    1: required PreconditionFailedExtraInfo preconditionFailedExtraInfo,
    2: required UserRestrictionExtraInfo userRestrictionInfo,
}

struct UserRestrictionExtraInfo {
    1: required string linkUrl,
}

struct WebAuthDetails {
    1: required string baseUrl,
    2: required string token,
}

struct Profile {
    1: required string mid,
    3: required string userid,
    10: required string phone,
    11: required string email,
    12: required string regionCode,
    20: required string displayName,
    21: required string phoneticName,
    22: required string pictureStatus,
    23: required string thumbnailUrl,
    24: required string statusMessage,
    31: required bool allowSearchByUserid,
    32: required bool allowSearchByEmail,
    33: required string picturePath,
    34: required string musicProfile,
    35: required string videoProfile,
    36: required map<string, string> statusMessageContentMetadata,
    37: required AvatarProfile avatarProfile,
    38: required bool nftProfile,
    39: required PictureSource pictureSource,
    40: optional string profileId,
    41: optional ProfileType profileType,
    42: optional i64 createdTimeMillis,
}

struct AvatarProfile {
    1: required string version,
    2: required i64 updatedMillis,
    3: required string thumbnail,
    4: required bool usablePublicly,
}

struct Operation {
    1: required i64 revision,
    2: required i64 createdTime,
    3: required OpType type,
    4: required i32 reqSeq,
    5: required string checksum,
    7: required OpStatus status,
    10: required string param1,
    11: required string param2,
    12: required string param3,
    20: required Message message,
}

struct Message {
    1: required string _from,
    2: required string to,
    3: required MIDType toType,
    4: required string id,
    5: required i64 createdTime,
    6: required i64 deliveredTime,
    10: required string text,
    11: required Location location,
    14: required bool hasContent,
    15: required ContentType contentType,
    17: required binary contentPreview,
    18: required map<string, string> contentMetadata,
    19: required i8 sessionId,
    20: required list<binary> chunks,
    21: required string relatedMessageId,
    22: required MessageRelationType messageRelationType,
    23: required i64 readCount,
    24: required ServiceCode relatedMessageServiceCode,
    25: required AppExtensionType appExtensionType,
    27: required list<Reaction> reactions,
}

struct Reaction {
    1: required string fromUserMid,
    2: required i64 atMillis,
    3: required ReactionType reactionType,
}

struct ReactionType {
    1: required PredefinedReactionType predefinedReactionType,
}

struct ReactRequest {
    1: required i32 reqSeq,
    2: required i64 messageId,
    3: required ReactionType reactionType,
}

struct Location {
    1: required string title,
    2: required string address,
    3: required double latitude,
    4: required double longitude,
    5: required string phone,
    6: required string categoryId,
    7: required PlaceSearchProvider provider,
    8: required GeolocationAccuracy accuracy,
    9: required double altitudeMeters,
}

struct GeolocationAccuracy {
    1: required double radiusMeters,
    2: required double radiusConfidence,
    3: required double altitudeAccuracy,
    4: required double velocityAccuracy,
    5: required double bearingAccuracy,
    6: required GeolocationAccuracyMode accuracyMode,
}

struct Contact {
    1: required string mid,
    2: required i64 createdTime,
    10: required ContactType type,
    11: required ContactStatus status,
    21: required ContactRelation relation,
    22: required string displayName,
    23: required string phoneticName,
    24: required string pictureStatus,
    25: required string thumbnailUrl,
    26: required string statusMessage,
    27: required string displayNameOverridden,
    28: required i64 favoriteTime,
    31: required bool capableVoiceCall,
    32: required bool capableVideoCall,
    33: required bool capableMyhome,
    34: required bool capableBuddy,
    35: required i32 attributes,
    36: required i64 settings,
    37: required string picturePath,
    38: required string recommendParams,
    39: required FriendRequestStatus friendRequestStatus,
    40: required string musicProfile,
    42: required string videoProfile,
    43: required map<string, string> statusMessageContentMetadata,
    44: required AvatarProfile avatarProfile,
    45: required string friendRingtone,
    46: required string friendRingbackTone,
    47: required bool nftProfile,
    48: required PictureSource pictureSource,
    49: optional string profileId,
}

struct GetContactsV2Request {
    1: required list<string> targetUserMids,
    2: required set<ContactCalendarEventType> neededContactCalendarEvents,
    3: required bool withUserStatus,
}

struct GetContactsV2Response {
    1: required map<string, ContactEntry> contacts,
}

struct ContactEntry {
    1: required UserStatus userStatus,
    2: required i64 snapshotTimeMillis,
    3: required Contact contact,
    4: required ContactCalendarEvents calendarEvents,
}

struct ContactCalendarEvents {
    1: required map<ContactCalendarEventType, ContactCalendarEvent> events,
}

struct ContactCalendarEvent {
    1: required string id,
    2: required ContactCalendarEventState state,
    3: required i32 year,
    4: required i32 month,
    5: required i32 day,
}

struct Configurations {
    1: required i64 revision,
    2: required map<string, string> configMap,
}

struct E2EEPublicKey {
    1: required i32 version,
    2: required i32 keyId,
    4: required binary keyData,
    5: required i64 createdTime,
}

struct RSAKey {
    1: required string keynm,
    2: required string nvalue,
    3: required string evalue,
    4: required string sessionKey,
}

struct Settings {
    10: required bool notificationEnable,
    11: required i64 notificationMuteExpiration,
    12: required bool notificationNewMessage,
    13: required bool notificationGroupInvitation,
    14: required bool notificationShowMessage,
    15: required bool notificationIncomingCall,
    16: required string notificationSoundMessage,
    17: required string notificationSoundGroup,
    18: required bool notificationDisabledWithSub,
    19: required bool notificationPayment,
    20: required bool privacySyncContacts,
    21: required bool privacySearchByPhoneNumber,
    22: required bool privacySearchByUserid,
    23: required bool privacySearchByEmail,
    24: required bool privacyAllowSecondaryDeviceLogin,
    25: required bool privacyProfileImagePostToMyhome,
    26: required bool privacyReceiveMessagesFromNotFriend,
    27: required bool privacyAgreeUseLineCoinToPaidCall,
    28: required bool privacyAgreeUsePaidCall,
    29: required bool privacyAllowFriendRequest,
    30: required string contactMyTicket,
    40: required IdentityProvider identityProvider,
    41: required string identityIdentifier,
    42: required map<SnsIdType, string> snsAccounts,
    43: required bool phoneRegistration,
    44: required EmailConfirmationStatus emailConfirmationStatus,
    45: required AccountMigrationPincodeType accountMigrationPincodeType,
    46: required bool enforcedInputAccountMigrationPincode,
    47: required SecurityCenterSettingsType securityCenterSettingsType,
    48: required bool allowUnregistrationSecondaryDevice,
    49: required bool pwlessPrimaryCredentialRegistration,
    50: required string preferenceLocale,
    60: required map<CustomMode, string> customModes,
    61: required bool e2eeEnable,
    62: required bool hitokotoBackupRequested,
    63: required bool privacyProfileMusicPostToMyhome,
    65: required bool privacyAllowNearby,
    66: required i64 agreementNearbyTime,
    67: required i64 agreementSquareTime,
    68: required bool notificationMention,
    69: required i64 botUseAgreementAcceptedAt,
    70: required i64 agreementShakeFunction,
    71: required i64 agreementMobileContactName,
    73: required i64 agreementSoundToText,
    74: required string privacyPolicyVersion,
    75: required i64 agreementAdByWebAccess,
    76: required i64 agreementPhoneNumberMatching,
    77: required i64 agreementCommunicationInfo,
    78: required UserSharePersonalInfoToFriendsType privacySharePersonalInfoToFriends,
    79: required i64 agreementThingsWirelessCommunication,
    80: required i64 agreementGdpr,
    81: required UserStatusMessageHistoryType privacyStatusMessageHistory,
    82: required i64 agreementProvideLocation,
    83: required i64 agreementBeacon,
    85: required UserAllowProfileHistoryType privacyAllowProfileHistory,
    86: required i64 agreementContentsSuggest,
    87: required i64 agreementContentsSuggestDataCollection,
    88: required UserAgeType privacyAgeResult,
    89: required bool privacyAgeResultReceived,
    72: required bool notificationThumbnail,
    90: required i64 agreementOcrImageCollection,
    91: required bool privacyAllowFollow,
    92: required bool privacyShowFollowList,
    93: required bool notificationBadgeTalkOnly,
    94: required i64 agreementIcna,
    95: required bool notificationReaction,
    96: required i64 agreementMid,
    97: required bool homeNotificationNewFriend,
    98: required bool homeNotificationFavoriteFriendUpdate,
    99: required bool homeNotificationGroupMemberUpdate,
    100: required bool homeNotificationBirthday,
    101: required map<SnsIdType, bool> eapAllowedToConnect,
    102: required i64 agreementLineOutUse,
    103: required i64 agreementLineOutProvideInfo,
    104: required bool notificationShowProfileImage,
    105: required i64 agreementPdpa,
    106: required string agreementLocationVersion,
    107: required bool zhdPageAllowedToShow,
}

struct E2EENegotiationResult {
    1: required set<ContentType> allowedTypes,
    2: required E2EEPublicKey publicKey,
    3: required i32 specVersion,
}

struct ContactRegistration {
    1: required Contact contact,
    10: required string luid,
    11: required ContactType contactType,
    12: required string contactKey,
}

struct E2EEGroupSharedKey {
    1: required i32 keyVersion,
    2: required i32 groupKeyId,
    3: required string creator,
    4: required i32 creatorKeyId,
    5: required string receiver,
    6: required i32 receiverKeyId,
    7: required binary encryptedSharedKey,
    8: required set<ContentType> allowedTypes,
    9: required i32 specVersion,
}

struct VerificationSessionData {
    1: required string sessionId,
    2: required VerificationMethod method,
    3: required string callback,
    4: required string normalizedPhone,
    5: required string countryCode,
    6: required string nationalSignificantNumber,
    7: required list<VerificationMethod> availableVerificationMethods,
    8: required string callerIdMask,
}

struct FollowRequest {
    1: required FollowMid followMid,
}

struct FollowMid {
    1: required string mid,
    2: required string eMid,
}

struct UnfollowRequest {
    1: required FollowMid followMid,
}

struct Ticket {
    1: required string id,
    10: required i64 expirationTime,
    21: required i32 maxUseCount,
}

struct GetChatsRequest {
    1: required list<string> chatMids,
    2: required bool withMembers,
    3: required bool withInvitees,
}

struct GetChatsResponse {
    1: required list<Chat> chats,
}

struct Chat {
    1: required CharType type,
    2: required string chatMid,
    3: required i64 createdTime,
    4: required bool notificationDisabled,
    5: required i64 favoriteTimestamp,
    6: required string chatName,
    7: required string picturePath,
    8: required Extra extra,
}

struct Extra {
    1: required GroupExtra groupExtra,
    2: required PeerExtra peerExtra,
}

struct GroupExtra {
    1: required string creator,
    2: required bool preventedJoinByTicket,
    3: required string invitationTicket,
    4: required map<string, i64> memberMids,
    5: required map<string, i64> inviteeMids,
    6: required bool addFriendDisabled,
    7: required bool ticketDisabled,
    8: required bool autoName,
}

struct PeerExtra {
// ?
}

struct GetFollowersRequest {
    1: required FollowMid followMid,
    2: required string cursor,
}

struct GetFollowersResponse {
    1: required list<FollowProfile> profiles,
    2: required string cursor,
    3: required i64 followingCount,
    4: required i64 followerCount,
}

struct FollowProfile {
    1: required FollowMid followMid,
    2: required string displayName,
    3: required string picturePath,
    4: required bool following,
    5: required bool allowFollow,
    6: required FollowBuddyDetail followBuddyDetail,
}

struct FollowBuddyDetail {
    1: required i32 iconType,
}

struct GetFollowingsRequest {
    1: required FollowMid followMid,
    2: required string cursor,
}

struct GetFollowingsResponse {
    1: required list<FollowProfile> profiles,
    2: required string cursor,
    3: required i64 followingCount,
    4: required i64 followerCount,
}

struct Room {
    1: required string mid,
    2: required i64 createdTime,
    10: required list<Contact> contacts,
    31: required bool notificationDisabled,
    40: required list<string> memberMids,
}

struct ContactModification {
    1: required ModificationType type,
    2: required string luid,
    11: required list<string> phones,
    12: required list<string> emails,
    13: required list<string> userids,
}

struct GetE2EEKeyBackupCertificatesRequest {
}

struct GetE2EEKeyBackupCertificatesResponse {
    1: required list<string> urlHashList,
}

struct DeleteOtherFromChatRequest {
    1: required i32 reqSeq,
    2: required string chatMid,
    3: required set<string> targetUserMids,
}

struct DeleteOtherFromChatResponse {
}

struct InviteIntoChatRequest {
    1: required i32 reqSeq,
    2: required string chatMid,
    3: required set<string> targetUserMids,
}

struct InviteIntoChatResponse {
}

struct CancelChatInvitationRequest {
    1: required i32 reqSeq,
    2: required string chatMid,
    3: required set<string> targetUserMids,
}

struct CancelChatInvitationResponse {
}

struct DeleteSelfFromChatRequest {
    1: required i32 reqSeq,
    2: required string chatMid,
    3: required i64 lastSeenMessageDeliveredTime,
    4: required string lastSeenMessageId,
    5: required i64 lastMessageDeliveredTime,
    6: required string lastMessageId,
}

struct DeleteSelfFromChatResponse {
}

struct FindChatByTicketRequest {
    1: required string ticketId,
}

struct FindChatByTicketResponse {
    1: required Chat chat,
}

struct RefreshAccessTokenRequest {
    1: required string refreshToken,
}

struct RefreshAccessTokenResponse {
    1: required string accessToken,
    2: required i64 durationUntilRefreshInSec,
    3: required RetryPolicy retryPolicy,
    4: required i64 tokenIssueTimeEpochSec,
    5: required string refreshToken,
}

struct RetryPolicy {
    1: required i64 initialDelayInMillis,
    2: required i64 maxDelayInMillis,
    3: required double multiplier,
    4: required double jitterRate,
}

struct TMessageReadRange {
    1: required string chatId,
    2: required map<string, list<TMessageReadRangeEntry>> ranges,
}

struct TMessageReadRangeEntry {
    1: required i64 startMessageId,
    2: required i64 endMessageId,
    3: required i64 startTime,
    4: required i64 endTime,
}

struct BuddyDetail {
    1: required string mid,
    2: required i64 memberCount,
    3: required bool onAir,
    4: required bool businessAccount,
    5: required bool addable,
    6: required set<ContentType> acceptableContentTypes,
    7: required bool capableMyhome,
    8: required bool freePhoneCallable,
    9: required string phoneNumberToDial,
    10: required bool needPermissionApproval,
    11: required string channelId,
    12: required string channelProviderName,
    13: required i32 iconType,
    14: required BotType botType,
    15: required bool showRichMenu,
    16: required i64 richMenuRevision,
    17: required BuddyOnAirLabel onAirLabel,
    18: required bool useTheme,
    19: required string themeId,
    20: required bool useBar,
    21: required i64 barRevision,
    22: required bool useBackground,
    23: required string backgroundId,
    24: required bool statusBarEnabled,
    25: required i64 statusBarRevision,
    26: required string searchId,
    27: required i32 onAirVersion,
    28: required bool blockable,
    29: required BuddyBotActiveStatus botActiveStatus,
    30: required bool membershipEnabled,
}

struct MessageBoxV2MessageId {
    1: required i64 deliveredTime,
    2: required i64 messageId,
}

struct GetPreviousMessagesV2Request {
    1: required string messageBoxId,
    2: required MessageBoxV2MessageId endMessageId,
    3: required i32 messagesCount,
    4: required bool withReadCount,
    5: required bool receivedOnly,
}

struct ChannelToken {
    1: required string token,
    2: required string obsToken,
    3: required i64 expiration,
    4: required string refreshToken,
    5: required string channelAccessToken,
}

struct GroupCall {
    1: required bool online,
    2: required string chatMid,
    3: required string hostMids,
    4: required list<string> memberMids,
    5: required i64 started,
    6: required GroupCallMediaType mediaType,
    7: required GroupCallProtocol protocol,
}

struct SyncResponse {
    1: required OperationResponse operationResponse,
    2: required FullSyncResponse fullSyncResponse,
    3: required PartialFullSyncResponse partialFullSyncResponse,
}

struct OperationResponse {
    1: required list<Operation> operations,
    2: required bool hasMoreOps,
    3: required TGlobalEvents globalEvents,
    4: required TIndividualEvents individualEvents,
}

struct FullSyncResponse {
    1: required set<SyncTriggerReason> reasons,
    2: required i64 nextRevision,
}

struct PartialFullSyncResponse {
    1: required map<SyncCategories, i64> targetCategories,
}

struct TGlobalEvents {
    1: required map<GlobalEventType, GlobalEvent> events,
    2: required i64 lastRevision,
}

struct TIndividualEvents {
    1: required set<NotificationStatus> events,
    2: required i64 lastRevision,
}

struct GlobalEvent {
    1: required GlobalEventType type,
    2: required i32 minDelayInMinutes,
    3: required i32 maxDelayInMinutes,
    4: required i64 createTimeMillis,
    5: required bool maxDelayHardLimit,
}

struct DetermineMediaMessageFlowResponse {
    1: required map<ContentType, MediaMessageFlow> flowMap,
    2: required i64 cacheTtlMillis,
}

struct ChatRoomAnnouncementContentMetadata {
    1: required string replace,
    2: required string sticonOwnership,
    3: required string postNotificationMetadata,
}

struct ChatRoomAnnouncementContents {
    1: required i32 displayFields,
    2: required string text,
    3: required string link,
    4: required string thumbnail,
    5: required ChatRoomAnnouncementContentMetadata contentMetadata,
}

struct ChatRoomAnnouncement {
    1: required i64 announcementSeq,
    2: required i32 type,
    3: required ChatRoomAnnouncementContents contents,
    4: required string creatorMid,
    5: required i64 createdTime,
    6: required i32 deletePermission,
}