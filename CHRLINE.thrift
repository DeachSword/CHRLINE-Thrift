include "./subs/Types.thrift"

struct BeaconCondition {
    1: string inFriends;
    2: string notInFriends;
    3: bool termsAgreed;
}

struct BeaconBackgroundNotification {
    1: i64 actionInterval;
    2: list<BeaconCondition> actionAndConditions;
    3: i64 actionDelay;
    4: list<BeaconCondition> actionConditions;
}

struct LiffErrorPayload {
    3: LiffErrorConsentRequired consentRequired;
}

struct LiffErrorConsentRequired {
    1: string channelId;
    2: string consentUrl;
}

struct ErrorExtraInfo {
    1: PreconditionFailedExtraInfo preconditionFailedExtraInfo;
    2: UserRestrictionExtraInfo userRestrictionInfo;
}

struct UserRestrictionExtraInfo {
    1: string linkUrl;
}

struct WebAuthDetails {
    1: string baseUrl;
    2: string token;
}

struct Profile {
    1: string mid;
    3: string userid;
    10: string phone;
    11: string email;
    12: string regionCode;
    20: string displayName;
    21: string phoneticName;
    22: string pictureStatus;
    23: string thumbnailUrl;
    24: string statusMessage;
    31: bool allowSearchByUserid;
    32: bool allowSearchByEmail;
    33: string picturePath;
    34: string musicProfile;
    35: string videoProfile;
    36: map<string, string> statusMessageContentMetadata;
    37: AvatarProfile avatarProfile;
    38: bool nftProfile;
}

struct AvatarProfile {
    1: string version;
    2: i64 updatedMillis;
    3: string thumbnail;
    4: bool usablePublicly;
}

struct Operation {
    1: i64 revision;
    2: i64 createdTime;
    3: OpType type;
    4: i32 reqSeq;
    5: string checksum;
    7: OpStatus status;
    10: string param1;
    11: string param2;
    12: string param3;
    20: Message message;
}

struct Message {
    1: string _from;
    2: string to;
    3: MIDType toType;
    4: string id;
    5: i64 createdTime;
    6: i64 deliveredTime;
    10: string text;
    11: Location location;
    14: bool hasContent;
    15: ContentType contentType;
    17: binary contentPreview;
    18: map<string, string> contentMetadata;
    19: i8 sessionId;
    20: list<binary> chunks;
    21: string relatedMessageId;
    22: MessageRelationType messageRelationType;
    23: i64 readCount;
    24: ServiceCode relatedMessageServiceCode;
    25: AppExtensionType appExtensionType;
    27: list<Reaction> reactions;
}

struct Reaction {
    1: string fromUserMid;
    2: i64 atMillis;
    3: ReactionType reactionType;
}

struct ReactionType {
    1: PredefinedReactionType predefinedReactionType;
}

struct ReactRequest {
    1: i32 reqSeq;
    2: i64 messageId;
    3: ReactionType reactionType;
}

struct Location {
    1: string title;
    2: string address;
    3: double latitude;
    4: double longitude;
    5: string phone;
    6: string categoryId;
    7: PlaceSearchProvider provider;
    8: GeolocationAccuracy accuracy;
    9: double altitudeMeters;
}

struct GeolocationAccuracy {
    1: double radiusMeters;
    2: double radiusConfidence;
    3: double altitudeAccuracy;
    4: double velocityAccuracy;
    5: double bearingAccuracy;
    6: GeolocationAccuracyMode accuracyMode;
}

struct Contact {
    1: string mid;
    2: i64 createdTime;
    10: ContactType type;
    11: ContactStatus status;
    21: ContactRelation relation;
    22: string displayName;
    23: string phoneticName;
    24: string pictureStatus;
    25: string thumbnailUrl;
    26: string statusMessage;
    27: string displayNameOverridden;
    28: i64 favoriteTime;
    31: bool capableVoiceCall;
    32: bool capableVideoCall;
    33: bool capableMyhome;
    34: bool capableBuddy;
    35: i32 attributes;
    36: i64 settings;
    37: string picturePath;
    38: string recommendParams;
    39: FriendRequestStatus friendRequestStatus;
    40: string musicProfile;
    42: string videoProfile;
    43: map<string, string> statusMessageContentMetadata;
    44: AvatarProfile avatarProfile;
}

struct GetContactsV2Request {
    1: list<string> targetUserMids;
    2: set<ContactCalendarEventType> neededContactCalendarEvents;
    3: bool withUserStatus;
}

struct GetContactsV2Response {
    1: map<string, ContactEntry> contacts;
}

struct ContactEntry {
    1: UserStatus userStatus;
    2: i64 snapshotTimeMillis;
    3: Contact contact;
    4: ContactCalendarEvents calendarEvents;
}

struct ContactCalendarEvents {
    1: map<ContactCalendarEventType, ContactCalendarEvent> events;
}

struct ContactCalendarEvent {
    1: string id;
    2: ContactCalendarEventState state;
    3: i32 year;
    4: i32 month;
    5: i32 day;
}

struct Configurations {
    1: i64 revision;
    2: map<string, string> configMap;
}

struct E2EEPublicKey {
    1: i32 version;
    2: i32 keyId;
    4: binary keyData;
    5: i64 createdTime;
}

struct RSAKey {
    1: string keynm;
    2: string nvalue;
    3: string evalue;
    4: string sessionKey;
}

struct Settings {
    10: bool notificationEnable;
    11: i64 notificationMuteExpiration;
    12: bool notificationNewMessage;
    13: bool notificationGroupInvitation;
    14: bool notificationShowMessage;
    15: bool notificationIncomingCall;
    16: string notificationSoundMessage;
    17: string notificationSoundGroup;
    18: bool notificationDisabledWithSub;
    19: bool notificationPayment;
    20: bool privacySyncContacts;
    21: bool privacySearchByPhoneNumber;
    22: bool privacySearchByUserid;
    23: bool privacySearchByEmail;
    24: bool privacyAllowSecondaryDeviceLogin;
    25: bool privacyProfileImagePostToMyhome;
    26: bool privacyReceiveMessagesFromNotFriend;
    27: bool privacyAgreeUseLineCoinToPaidCall;
    28: bool privacyAgreeUsePaidCall;
    29: bool privacyAllowFriendRequest;
    30: string contactMyTicket;
    40: IdentityProvider identityProvider;
    41: string identityIdentifier;
    42: map<SnsIdType, string> snsAccounts;
    43: bool phoneRegistration;
    44: EmailConfirmationStatus emailConfirmationStatus;
    45: AccountMigrationPincodeType accountMigrationPincodeType;
    46: bool enforcedInputAccountMigrationPincode;
    47: SecurityCenterSettingsType securityCenterSettingsType;
    48: bool allowUnregistrationSecondaryDevice;
    49: bool pwlessPrimaryCredentialRegistration;
    50: string preferenceLocale;
    60: map<CustomMode, string> customModes;
    61: bool e2eeEnable;
    62: bool hitokotoBackupRequested;
    63: bool privacyProfileMusicPostToMyhome;
    65: bool privacyAllowNearby;
    66: i64 agreementNearbyTime;
    67: i64 agreementSquareTime;
    68: bool notificationMention;
    69: i64 botUseAgreementAcceptedAt;
    70: i64 agreementShakeFunction;
    71: i64 agreementMobileContactName;
    73: i64 agreementSoundToText;
    74: string privacyPolicyVersion;
    75: i64 agreementAdByWebAccess;
    76: i64 agreementPhoneNumberMatching;
    77: i64 agreementCommunicationInfo;
    78: UserSharePersonalInfoToFriendsType privacySharePersonalInfoToFriends;
    79: i64 agreementThingsWirelessCommunication;
    80: i64 agreementGdpr;
    81: UserStatusMessageHistoryType privacyStatusMessageHistory;
    82: i64 agreementProvideLocation;
    83: i64 agreementBeacon;
    85: UserAllowProfileHistoryType privacyAllowProfileHistory;
    86: i64 agreementContentsSuggest;
    87: i64 agreementContentsSuggestDataCollection;
    88: UserAgeType privacyAgeResult;
    89: bool privacyAgeResultReceived;
    72: bool notificationThumbnail;
    90: i64 agreementOcrImageCollection;
    91: bool privacyAllowFollow;
    92: bool privacyShowFollowList;
    93: bool notificationBadgeTalkOnly;
    94: i64 agreementIcna;
    95: bool notificationReaction;
    96: i64 agreementMid;
    97: bool homeNotificationNewFriend;
    98: bool homeNotificationFavoriteFriendUpdate;
    99: bool homeNotificationGroupMemberUpdate;
    100: bool homeNotificationBirthday;
    101: map<SnsIdType, bool> eapAllowedToConnect;
    102: i64 agreementLineOutUse;
    103: i64 agreementLineOutProvideInfo;
    104: bool notificationShowProfileImage;
    105: i64 agreementPdpa;
    106: string agreementLocationVersion;
    107: bool zhdPageAllowedToShow;
}

struct E2EENegotiationResult {
    1: set<ContentType> allowedTypes;
    2: E2EEPublicKey publicKey;
    3: i32 specVersion;
}

struct ContactRegistration {
    1: Contact contact;
    10: string luid;
    11: ContactType contactType;
    12: string contactKey;
}

struct E2EEGroupSharedKey {
    1: i32 keyVersion;
    2: i32 groupKeyId;
    3: string creator;
    4: i32 creatorKeyId;
    5: string receiver;
    6: i32 receiverKeyId;
    7: binary encryptedSharedKey;
    8: set<ContentType> allowedTypes;
    9: i32 specVersion;
}

struct VerificationSessionData {
    1: string sessionId;
    2: VerificationMethod method;
    3: string callback;
    4: string normalizedPhone;
    5: string countryCode;
    6: string nationalSignificantNumber;
    7: list<VerificationMethod> availableVerificationMethods;
    8: string callerIdMask;
}

struct FollowRequest {
    1: FollowMid followMid;
}

struct FollowMid {
    1: string mid;
    2: string eMid;
}

struct UnfollowRequest {
    1: FollowMid followMid;
}

struct Ticket {
    1: string id;
    10: i64 expirationTime;
    21: i32 maxUseCount;
}

struct GetChatsRequest {
    1: list<string> chatMids;
    2: bool withMembers;
    3: bool withInvitees;
}

struct GetChatsResponse {
    1: list<Chat> chats;
}

struct Chat {
    1: CharType type;
    2: string chatMid;
    3: i64 createdTime;
    4: bool notificationDisabled;
    5: i64 favoriteTimestamp;
    6: string chatName;
    7: string picturePath;
    8: Extra extra;
}

struct Extra {
    1: GroupExtra groupExtra;
    2: PeerExtra peerExtra;
}

struct GroupExtra {
    1: string creator;
    2: bool preventedJoinByTicket;
    3: string invitationTicket;
    4: map<string, i64> memberMids;
    5: map<string, i64> inviteeMids;
    6: bool addFriendDisabled;
    7: bool ticketDisabled;
}

struct PeerExtra {
// ?
}

struct GetFollowersRequest {
    1: FollowMid followMid;
    2: string cursor;
}

struct GetFollowersResponse {
    1: list<FollowProfile> profiles;
    2: string cursor;
    3: i64 followingCount;
    4: i64 followerCount;
}

struct FollowProfile {
    1: FollowMid followMid;
    2: string displayName;
    3: string picturePath;
    4: bool following;
    5: bool allowFollow;
    6: FollowBuddyDetail followBuddyDetail;
}

struct FollowBuddyDetail {
    1: i32 iconType;
}

struct GetFollowingsRequest {
    1: FollowMid followMid;
    2: string cursor;
}

struct GetFollowingsResponse {
    1: list<FollowProfile> profiles;
    2: string cursor;
    3: i64 followingCount;
    4: i64 followerCount;
}

struct Room {
    1: string mid;
    2: i64 createdTime;
    10: list<Contact> contacts;
    31: bool notificationDisabled;
    40: list<string> memberMids;
}

struct ContactModification {
    1: ModificationType type;
    2: string luid;
    11: list<string> phones;
    12: list<string> emails;
    13: list<string> userids;
}

struct GetE2EEKeyBackupCertificatesRequest {
}

struct GetE2EEKeyBackupCertificatesResponse {
    1: list<string> urlHashList;
}

struct DeleteOtherFromChatRequest {
    1: i32 reqSeq;
    2: string chatMid;
    3: set<string> targetUserMids;
}

struct DeleteOtherFromChatResponse {
}

struct InviteIntoChatRequest {
    1: i32 reqSeq;
    2: string chatMid;
    3: set<string> targetUserMids;
}

struct InviteIntoChatResponse {
}

struct CancelChatInvitationRequest {
    1: i32 reqSeq;
    2: string chatMid;
    3: set<string> targetUserMids;
}

struct CancelChatInvitationResponse {
}

struct DeleteSelfFromChatRequest {
    1: i32 reqSeq;
    2: string chatMid;
    3: i64 lastSeenMessageDeliveredTime;
    4: string lastSeenMessageId;
    5: i64 lastMessageDeliveredTime;
    6: string lastMessageId;
}

struct DeleteSelfFromChatResponse {
}

struct AcceptChatInvitationRequest {
    1: i32 reqSeq;
    2: string chatMid;
}

struct AcceptChatInvitationResponse {
}

struct ReissueChatTicketRequest {
    1: i32 reqSeq;
    2: string groupMid;
}

struct ReissueChatTicketResponse {
    1: string ticketId;
}

struct FindChatByTicketRequest {
    1: string ticketId;
}

struct FindChatByTicketResponse {
    1: Chat chat;
}

struct AcceptChatInvitationByTicketRequest {
    1: i32 reqSeq;
    2: string chatMid;
    3: string ticketId;
}

struct AcceptChatInvitationByTicketResponse {
}

struct UpdateChatRequest {
    1: i32 reqSeq;
    2: Chat chat;
    3: ChatAttribute updatedAttribute;
}

struct UpdateChatResponse {
}

struct RefreshAccessTokenRequest {
    1: string refreshToken;
}

struct RefreshAccessTokenResponse {
    1: string accessToken;
    2: i64 durationUntilRefreshInSec;
    3: RetryPolicy retryPolicy;
    4: i64 tokenIssueTimeEpochSec;
    5: string refreshToken;
}

struct RetryPolicy {
    1: i64 initialDelayInMillis;
    2: i64 maxDelayInMillis;
    3: double multiplier;
    4: double jitterRate;
}

struct TMessageReadRange {
    1: string chatId;
    2: map<string, list<TMessageReadRangeEntry>> ranges;
}

struct TMessageReadRangeEntry {
    1: i64 startMessageId;
    2: i64 endMessageId;
    3: i64 startTime;
    4: i64 endTime;
}

struct BuddyDetail {
    1: string mid;
    2: i64 memberCount;
    3: bool onAir;
    4: bool businessAccount;
    5: bool addable;
    6: set<ContentType> acceptableContentTypes;
    7: bool capableMyhome;
    8: bool freePhoneCallable;
    9: string phoneNumberToDial;
    10: bool needPermissionApproval;
    11: string channelId;
    12: string channelProviderName;
    13: i32 iconType;
    14: BotType botType;
    15: bool showRichMenu;
    16: i64 richMenuRevision;
    17: BuddyOnAirLabel onAirLabel;
    18: bool useTheme;
    19: string themeId;
    20: bool useBar;
    21: i64 barRevision;
    22: bool useBackground;
    23: string backgroundId;
    24: bool statusBarEnabled;
    25: i64 statusBarRevision;
    26: string searchId;
    27: i32 onAirVersion;
    28: bool blockable;
    29: BuddyBotActiveStatus botActiveStatus;
    30: bool membershipEnabled;
}

struct MessageBoxV2MessageId {
    1: i64 deliveredTime;
    2: i64 messageId;
}

struct GetPreviousMessagesV2Request {
    1: string messageBoxId;
    2: MessageBoxV2MessageId endMessageId;
    3: i32 messagesCount;
    4: bool withReadCount;
    5: bool receivedOnly;
}

struct ChannelToken {
    1: string token;
    2: string obsToken;
    3: i64 expiration;
    4: string refreshToken;
    5: string channelAccessToken;
}

struct GroupCall {
    1: bool online;
    2: string chatMid;
    3: string hostMids;
    4: list<string> memberMids;
    5: i64 started;
    6: GroupCallMediaType mediaType;
    7: GroupCallProtocol protocol;
}

struct SyncResponse {
    1: OperationResponse operationResponse;
    2: FullSyncResponse fullSyncResponse;
    3: PartialFullSyncResponse partialFullSyncResponse
}

struct OperationResponse {
    1: list<Operation> operations;
    2: bool hasMoreOps;
    3: TGlobalEvents globalEvents;
    4: TIndividualEvents individualEvents;
}

struct FullSyncResponse {
    1: set<SyncTriggerReason> reasons;
    2: i64 nextRevision
}

struct PartialFullSyncResponse {
    1: map<SyncCategories, i64> targetCategories;
}

struct TGlobalEvents {
    1: map<GlobalEventType, GlobalEvent> events;
    2: i64 lastRevision;
}

struct TIndividualEvents {
    1: set<NotificationStatus> events
    2: i64 lastRevision;
}

struct GlobalEvent {
    1: GlobalEventType type;
    2: i32 minDelayInMinutes;
    3: i32 maxDelayInMinutes;
    4: i64 createTimeMillis;
    5: bool maxDelayHardLimit;
}

struct DetermineMediaMessageFlowResponse {
    1: map<ContentType, MediaMessageFlow> flowMap;
    2: i64 cacheTtlMillis;
}