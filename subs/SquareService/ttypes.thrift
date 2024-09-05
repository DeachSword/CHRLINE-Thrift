include "../Types.thrift"
include "../SquareLiveTalkService/ttypes.thrift"

enum SquareMessageState {
    SENT      = 1,
    DELETED   = 2,
    FORBIDDEN = 3,
    UNSENT    = 4,
}

enum SquareEventType {
    RECEIVE_MESSAGE                              = 0,
    SEND_MESSAGE                                 = 1,
    NOTIFIED_JOIN_SQUARE_CHAT                    = 2,
    NOTIFIED_INVITE_INTO_SQUARE_CHAT             = 3,
    NOTIFIED_LEAVE_SQUARE_CHAT                   = 4,
    NOTIFIED_DESTROY_MESSAGE                     = 5,
    NOTIFIED_MARK_AS_READ                        = 6,
    NOTIFIED_UPDATE_SQUARE_MEMBER_PROFILE        = 7,
    NOTIFIED_UPDATE_SQUARE                       = 8,
    NOTIFIED_UPDATE_SQUARE_STATUS                = 9,
    NOTIFIED_UPDATE_SQUARE_AUTHORITY             = 10,
    NOTIFIED_UPDATE_SQUARE_MEMBER                = 11,
    NOTIFIED_UPDATE_SQUARE_CHAT                  = 12,
    NOTIFIED_UPDATE_SQUARE_CHAT_STATUS           = 13,
    NOTIFIED_UPDATE_SQUARE_CHAT_MEMBER           = 14,
    NOTIFIED_CREATE_SQUARE_MEMBER                = 15,
    NOTIFIED_CREATE_SQUARE_CHAT_MEMBER           = 16,
    NOTIFIED_UPDATE_SQUARE_MEMBER_RELATION       = 17,
    NOTIFIED_SHUTDOWN_SQUARE                     = 18,
    NOTIFIED_KICKOUT_FROM_SQUARE                 = 19,
    NOTIFIED_DELETE_SQUARE_CHAT                  = 20,
    NOTIFICATION_JOIN_REQUEST                    = 21,
    NOTIFICATION_JOINED                          = 22,
    NOTIFICATION_PROMOTED_COADMIN                = 23,
    NOTIFICATION_PROMOTED_ADMIN                  = 24,
    NOTIFICATION_DEMOTED_MEMBER                  = 25,
    NOTIFICATION_KICKED_OUT                      = 26,
    NOTIFICATION_SQUARE_DELETE                   = 27,
    NOTIFICATION_SQUARE_CHAT_DELETE              = 28,
    NOTIFICATION_MESSAGE                         = 29,
    NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_NAME     = 30,
    NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_IMAGE    = 31,
    NOTIFIED_UPDATE_SQUARE_FEATURE_SET           = 32,
    NOTIFIED_ADD_BOT                             = 33,
    NOTIFIED_REMOVE_BOT                          = 34,
    NOTIFIED_UPDATE_SQUARE_NOTE_STATUS           = 36,
    NOTIFIED_UPDATE_SQUARE_CHAT_ANNOUNCEMENT     = 37,
    NOTIFIED_UPDATE_SQUARE_CHAT_MAX_MEMBER_COUNT = 38,
    NOTIFICATION_POST_ANNOUNCEMENT               = 39,
    NOTIFICATION_POST                            = 40,
    MUTATE_MESSAGE                               = 41,
    NOTIFICATION_NEW_CHAT_MEMBER                 = 42,
    NOTIFIED_UPDATE_READONLY_CHAT                = 43,
    NOTIFIED_UPDATE_MESSAGE_STATUS               = 46,
    NOTIFICATION_MESSAGE_REACTION                = 47,
    NOTIFIED_CHAT_POPUP                          = 48,
    NOTIFIED_SYSTEM_MESSAGE                      = 49,
    NOTIFIED_UPDATE_SQUARE_CHAT_FEATURE_SET      = 50,
    NOTIFIED_UPDATE_LIVE_TALK                    = 51,
    NOTIFICATION_LIVE_TALK                       = 52,
    NOTIFIED_UPDATE_LIVE_TALK_INFO               = 53,
    NOTIFICATION_THREAD_MESSAGE                  = 54,
    NOTIFICATION_THREAD_MESSAGE_REACTION         = 55,
    NOTIFIED_UPDATE_THREAD                       = 56,
    NOTIFIED_UPDATE_THREAD_STATUS                = 57,
    NOTIFIED_UPDATE_THREAD_MEMBER                = 58,
    NOTIFIED_UPDATE_THREAD_ROOT_MESSAGE          = 59,
    NOTIFIED_UPDATE_THREAD_ROOT_MESSAGE_STATUS   = 60,
}

enum SquareEventStatus {
    NORMAL         = 1,
    ALERT_DISABLED = 2,
}

struct SquareMessage {
    1: required Message message,
    3: required MIDType fromType,
    4: required i64 squareMessageRevision,
    5: required SquareMessageState state,
}

enum SquareMembershipState {
    JOIN_REQUESTED = 1,
    JOINED         = 2,
    REJECTED       = 3,
    LEFT           = 4,
    KICK_OUT       = 5,
    BANNED         = 6,
    DELETED        = 7,
}

enum SquareMemberRole {
    ADMIN    = 1,
    CO_ADMIN = 2,
    MEMBER   = 10,
}

struct SquarePreference {
    1: required i64 favoriteTimestamp,
    2: required bool notiForNewJoinRequest,
}

struct SquareMember {
    1: required string squareMemberMid,
    2: required string squareMid,
    3: required string displayName,
    4: required string profileImageObsHash,
    5: required bool ableToReceiveMessage,
    7: required SquareMembershipState membershipState,
    8: required SquareMemberRole role,
    9: required i64 revision,
    10: required SquarePreference preference,
    11: required string joinMessage,
}

struct SquareMessageReaction {
    1: required MessageReactionType type,
    2: required SquareMember reactor,
    3: required i64 createdAt,
    4: required i64 updatedAt,
}

struct SquareMessageReactionStatus {
    1: required i32 totalCount,
    2: required map<MessageReactionType, i32> countByReactionType,
    3: required SquareMessageReaction myReaction,
}

struct SquareEventReceiveMessage {
    1: required string squareChatMid,
    2: required SquareMessage squareMessage,
    3: required string senderDisplayName,
    4: required SquareMessageReactionStatus messageReactionStatus,
    5: required i64 senderRevision,
    6: required string squareMid,
}

struct SquareEventSendMessage {
    1: required string squareChatMid,
    2: required SquareMessage squareMessage,
    3: required i32 reqSeq,
    4: required string senderDisplayName,
    5: required SquareMessageReactionStatus messageReactionStatus,
}

struct SquareEventMutateMessage {
    1: required string squareChatMid,
    2: required SquareMessage squareMessage,
    3: required i32 reqSeq,
    4: required string senderDisplayName,
}

struct SquareEventNotifiedJoinSquareChat {
    1: required string squareChatMid,
    2: required SquareMember joinedMember,
}

enum SquareMemberRelationState {
    NONE    = 1,
    BLOCKED = 2,
}

struct SquareMemberRelation {
    1: required SquareMemberRelationState state,
    2: required i64 revision,
}

struct SquareEventNotifiedInviteIntoSquareChat {
    1: required string squareChatMid,
    2: required list<SquareMember> invitees,
    3: required SquareMember invitor,
    4: required SquareMemberRelation invitorRelation,
}

struct SquareEventNotifiedLeaveSquareChat {
    1: required string squareChatMid,
    2: required string squareMemberMid,
    3: required bool sayGoodbye,
    4: required SquareMember squareMember,
}

struct SquareEventNotifiedDestroyMessage {
    1: required string squareChatMid,
    3: required string messageId,
}

struct SquareEventNotifiedMarkAsRead {
    1: required string squareChatMid,
    2: required string sMemberMid,
    4: required string messageId,
}

struct SquareEventNotifiedUpdateSquareMemberProfile {
    1: required string squareChatMid,
    2: required SquareMember squareMember,
}

struct SquareEventNotifiedKickoutFromSquare {
    1: required string squareChatMid,
    2: required list<SquareMember> kickees,
    4: required SquareMember kicker,
}

enum SquareType {
    CLOSED = 0,
    OPEN   = 1,
}

enum SquareState {
    ALIVE     = 0,
    DELETED   = 1,
    SUSPENDED = 2,
}

enum SquareEmblem {
    SUPER    = 1,
    OFFICIAL = 2,
}

enum SquareJoinMethodType {
    NONE     = 0,
    APPROVAL = 1,
    CODE     = 2,
}

struct ApprovalValue {
    1: required string message,
}

struct CodeValue {
    1: required string code,
}

struct SquareJoinMethodValue {
    1: required ApprovalValue approvalValue,
    2: required CodeValue codeValue,
}

struct SquareJoinMethod {
    1: required SquareJoinMethodType type,
    2: required SquareJoinMethodValue value,
}

enum BooleanState {
    NONE = 0,
    OFF  = 1,
    ON   = 2,
}

struct Square {
    1: required string mid,
    2: required string name,
    3: required string welcomeMessage,
    4: required string profileImageObsHash,
    5: required string desc,
    6: required bool searchable,
    7: required SquareType type,
    8: required i32 categoryId,
    9: required string invitationURL,
    10: required i64 revision,
    11: required bool ableToUseInvitationTicket,
    12: required SquareState state,
    13: required list<SquareEmblem> emblems,
    14: required SquareJoinMethod joinMethod,
    15: required BooleanState adultOnly,
    16: required list<string> svcTags,
    17: required i64 createdAt,
}

struct SquareEventNotifiedShutdownSquare {
    1: required string squareChatMid,
    2: required Square square,
}

enum SquareChatType {
    OPEN           = 1,
    SECRET         = 2,
    ONE_ON_ONE     = 3,
    SQUARE_DEFAULT = 4,
}

enum SquareChatState {
    ALIVE     = 0,
    DELETED   = 1,
    SUSPENDED = 2,
}

struct MessageVisibility {
    1: required bool showJoinMessage,
    2: required bool showLeaveMessage,
    3: required bool showKickoutMessage,
}

struct SquareChat {
    1: required string squareChatMid,
    2: required string squareMid,
    3: required SquareChatType type,
    4: required string name,
    5: required string chatImageObsHash,
    6: required i64 squareChatRevision,
    7: required i32 maxMemberCount,
    8: required SquareChatState state,
    9: required string invitationUrl,
    10: required MessageVisibility messageVisibility,
    11: required BooleanState ableToSearchMessage,
}

struct SquareEventNotifiedDeleteSquareChat {
    1: required SquareChat squareChat,
}

struct SquareEventNotifiedUpdateSquareChatProfileName {
    1: required string squareChatMid,
    2: required SquareMember editor,
    3: required string updatedChatName,
}

struct SquareEventNotifiedUpdateSquareChatProfileImage {
    1: required string squareChatMid,
    2: required SquareMember editor,
}

struct SquareEventNotifiedUpdateSquareChatMaxMemberCount {
    1: required string squareChatMid,
    2: required i32 maxMemberCount,
    3: required SquareMember editor,
}

struct SquareEventNotifiedAddBot {
    1: required string squareChatMid,
    2: required SquareMember squareMember,
    3: required string botMid,
    4: required string botDisplayName,
}

struct SquareEventNotifiedRemoveBot {
    1: required string squareChatMid,
    2: required SquareMember squareMember,
    3: required string botMid,
    4: required string botDisplayName,
}

struct SquareEventNotifiedUpdateReadonlyChat {
    1: required string squareChatMid,
    2: required bool readonly,
}

enum MessageStatusType {
}

struct MessageStatusContents {
    1: required SquareMessageReactionStatus messageReactionStatus,
}

struct SquareMessageStatus {
    1: required string squareChatMid,
    2: required string globalMessageId,
    3: required MessageStatusType type,
    4: required MessageStatusContents contents,
    5: required i64 publishedAt,
}

struct SquareEventNotifiedUpdateMessageStatus {
    1: required string squareChatMid,
    2: required string messageId,
    3: required SquareMessageStatus messageStatus,
}

struct UrlButton {
    1: required string text,
    2: required string url,
}

struct TextButton {
    1: required string text,
}

struct OkButton {
    1: required string text,
}

struct ButtonContent {
    1: required UrlButton urlButton,
    2: required TextButton textButton,
    3: required OkButton okButton,
}

struct SquareEventChatPopup {
    1: required string squareChatMid,
    2: required i64 popupId,
    3: required string flexJson,
    4: required ButtonContent button,
}

struct SquareEventNotifiedSystemMessage {
    1: required string squareChatMid,
    2: required string text,
}

struct SquareEventNotifiedUpdateSquare {
    1: required string squareChatMid,
    2: required Square square,
}

struct SquareStatus {
    1: required i32 memberCount,
    2: required i32 joinRequestCount,
    3: required i64 lastJoinRequestAt,
    4: required i32 openChatCount,
}

struct SquareEventNotifiedUpdateSquareStatus {
    1: required string squareChatMid,
    2: required SquareStatus squareStatus,
}

struct SquareEventNotifiedUpdateSquareMember {
    1: required string squareChatMid,
    2: required string squareMemberMid,
    3: required SquareMember squareMember,
}

struct SquareEventNotifiedUpdateSquareChat {
    1: required string squareMid,
    2: required string squareChatMid,
    3: required SquareChat squareChat,
}

enum NotifiedMessageType {
    MENTION = 1,
    REPLY   = 2,
}

enum StatusBadge {
    LIVETALK_ONAIR = 1,
}

struct SquareChatStatusWithoutMessage {
    1: required i32 memberCount,
    2: required i32 unreadMessageCount,
    3: required string markedAsReadMessageId,
    4: required string mentionedMessageId,
    5: required NotifiedMessageType notifiedMessageType,
    6: required list<StatusBadge> badges,
}

struct SquareEventNotifiedUpdateSquareChatStatus {
    1: required string squareChatMid,
    2: required SquareChatStatusWithoutMessage statusWithoutMessage,
}

enum SquareChatMembershipState {
    JOINED = 1,
    LEFT   = 2,
}

struct SquareChatMember {
    1: required string squareMemberMid,
    2: required string squareChatMid,
    3: required i64 revision,
    4: required SquareChatMembershipState membershipState,
    5: required bool notificationForMessage,
    6: required bool notificationForNewMember,
}

struct SquareEventNotifiedUpdateSquareChatMember {
    1: required string squareChatMid,
    2: required SquareChatMember squareChatMember,
}

struct SquareAuthority {
    1: required string squareMid,
    2: required SquareMemberRole updateSquareProfile,
    3: required SquareMemberRole inviteNewMember,
    4: required SquareMemberRole approveJoinRequest,
    5: required SquareMemberRole createPost,
    6: required SquareMemberRole createOpenSquareChat,
    7: required SquareMemberRole deleteSquareChatOrPost,
    8: required SquareMemberRole removeSquareMember,
    9: required SquareMemberRole grantRole,
    10: required SquareMemberRole enableInvitationTicket,
    11: required i64 revision,
    12: required SquareMemberRole createSquareChatAnnouncement,
    13: required SquareMemberRole updateMaxChatMemberCount,
    14: required SquareMemberRole useReadonlyDefaultChat,
    15: required SquareMemberRole sendAllMention,
}

struct SquareEventNotifiedUpdateSquareAuthority {
    1: required string squareMid,
    2: required SquareAuthority squareAuthority,
}

enum SquareFeatureControlState {
    DISABLED = 1,
    ENABLED  = 2,
}

struct SquareFeature {
    1: required SquareFeatureControlState controlState,
    2: required BooleanState booleanValue,
}

struct SquareFeatureSet {
    1: required string squareMid,
    2: required i64 revision,
    11: required SquareFeature creatingSecretSquareChat,
    12: required SquareFeature invitingIntoOpenSquareChat,
    13: required SquareFeature creatingSquareChat,
    14: required SquareFeature readonlyDefaultChat,
    15: required SquareFeature showingAdvertisement,
    16: required SquareFeature delegateJoinToPlug,
    17: required SquareFeature delegateKickOutToPlug,
    18: required SquareFeature disableUpdateJoinMethod,
    19: required SquareFeature disableTransferAdmin,
    20: required SquareFeature creatingLiveTalk,
    21: required SquareFeature disableUpdateSearchable,
}

struct NoteStatus {
    1: required i32 noteCount,
    2: required i64 latestCreatedAt,
}

struct SquareEventNotifiedCreateSquareMember {
    1: required Square square,
    2: required SquareAuthority squareAuthority,
    3: required SquareStatus squareStatus,
    4: required SquareMember squareMember,
    5: required SquareFeatureSet squareFeatureSet,
    6: required NoteStatus noteStatus,
}

struct SquareChatStatus {
    3: required SquareMessage lastMessage,
    4: required string senderDisplayName,
    5: required SquareChatStatusWithoutMessage otherStatus,
}

enum SquareChatFeatureControlState {
    DISABLED = 1,
    ENABLED  = 2,
}

struct SquareChatFeature {
    1: required SquareChatFeatureControlState controlState,
    2: required BooleanState booleanValue,
}

struct SquareChatFeatureSet {
    1: required string squareChatMid,
    2: required i64 revision,
    11: required SquareChatFeature disableUpdateMaxChatMemberCount,
    12: required SquareChatFeature disableMarkAsReadEvent,
}

struct SquareEventNotifiedCreateSquareChatMember {
    1: required SquareChat chat,
    2: required SquareChatStatus chatStatus,
    3: required SquareChatMember chatMember,
    4: required i64 joinedAt,
    5: required SquareMember peerSquareMember,
    6: required SquareChatFeatureSet squareChatFeatureSet,
}

struct SquareEventNotifiedUpdateSquareMemberRelation {
    1: required string squareMid,
    2: required string myMemberMid,
    3: required string targetSquareMemberMid,
    4: required SquareMemberRelation squareMemberRelation,
}

struct SquareEventNotifiedUpdateSquareFeatureSet {
    1: required SquareFeatureSet squareFeatureSet,
}

struct SquareEventNotifiedUpdateSquareChatFeatureSet {
    1: required SquareChatFeatureSet squareChatFeatureSet,
}

struct SquareEventNotifiedUpdateLiveTalkInfo {
    1: required string squareChatMid,
    2: required LiveTalk liveTalk,
    3: required bool liveTalkOnAir,
}

struct SquareEventNotifiedUpdateLiveTalk {
    1: required string squareChatMid,
    2: required string sessionId,
    3: required bool liveTalkOnAir,
}

struct SquareEventNotificationLiveTalk {
    1: required string squareChatMid,
    2: required string liveTalkInvitationTicket,
    3: required string squareChatName,
    4: required string chatImageObsHash,
}

struct SquareEventNotificationThreadMessage {
    1: required string threadMid,
    2: required string chatMid,
    3: required SquareMessage squareMessage,
    4: required string senderDisplayName,
    5: required i64 unreadCount,
    6: required i64 totalMessageCount,
    7: required string threadRootMessageId,
}

struct SquareEventNotificationThreadMessageReaction {
    1: required string threadMid,
    2: required string chatMid,
    3: required string messageId,
    4: required string senderDisplayName,
    5: required string squareChatName,
    6: required string reactorName,
    7: required string thumbnailObsHash,
}

enum SquareThreadState {
    ALIVE   = 1,
    DELETED = 2,
}

struct SquareThread {
    1: required string threadMid,
    2: required string chatMid,
    3: required string squareMid,
    4: required string messageId,
    5: required SquareThreadState state,
    6: required i64 expiresAt,
    7: required i64 readOnlyAt,
    8: required i64 revision,
}

struct SquareEventNotifiedUpdateThread {
    1: required SquareThread squareThread,
}

struct SquareEventNotifiedUpdateThreadStatus {
    1: required string threadMid,
    2: required string chatMid,
    3: required i64 unreadCount,
    4: required string markAsReadMessageId,
}

enum SquareThreadMembershipState {
    JOINED = 1,
    LEFT   = 2,
}

struct SquareThreadMember {
    1: required string squareMemberMid,
    2: required string threadMid,
    3: required string chatMid,
    4: required i64 revision,
    5: required SquareThreadMembershipState membershipState,
}

struct SquareEventNotifiedUpdateThreadMember {
    1: required SquareThreadMember threadMember,
    2: required SquareThread squareThread,
    3: required SquareMessage threadRootMessage,
    4: required i64 totalMessageCount,
    5: required SquareMessage lastMessage,
    6: required string lastMessageSenderDisplayName,
}

struct SquareEventNotifiedUpdateThreadRootMessage {
    1: required SquareThread squareThread,
}

struct SquareEventNotifiedUpdateThreadRootMessageStatus {
    1: required string chatMid,
    2: required string threadMid,
    3: required string threadRootMessageId,
    4: required i64 totalMessageCount,
    5: required i64 lastMessageAt,
}

struct SquareEventNotifiedUpdateSquareNoteStatus {
    1: required string squareMid,
    2: required NoteStatus noteStatus,
}

struct SquareEventNotifiedUpdateSquareChatAnnouncement {
    1: required string squareChatMid,
    2: required i64 announcementSeq,
}

struct SquareEventNotificationJoinRequest {
    1: required string squareMid,
    2: required string squareName,
    3: required string requestMemberName,
    4: required string profileImageObsHash,
}

struct SquareEventNotificationMemberUpdate {
    1: required string squareMid,
    2: required string squareName,
    3: required string profileImageObsHash,
}

struct SquareEventNotificationSquareDelete {
    1: required string squareMid,
    2: required string squareName,
    3: required string profileImageObsHash,
}

struct SquareEventNotificationSquareChatDelete {
    1: required string squareChatMid,
    2: required string squareChatName,
    3: required string profileImageObsHash,
}

struct SquareEventNotificationMessage {
    1: required string squareChatMid,
    2: required SquareMessage squareMessage,
    3: required string senderDisplayName,
    4: required i32 unreadCount,
    5: required bool requiredToFetchChatEvents,
    6: required string mentionedMessageId,
    7: required NotifiedMessageType notifiedMessageType,
    8: required i32 reqSeq,
}

struct SquareEventNotificationPostAnnouncement {
    1: required string squareMid,
    2: required string squareName,
    3: required string squareProfileImageObsHash,
    4: required string actionUri,
}

enum NotificationPostType {
    POST_MENTION         = 2,
    POST_LIKE            = 3,
    POST_COMMENT         = 4,
    POST_COMMENT_MENTION = 5,
    POST_COMMENT_LIKE    = 6,
    POST_RELAY_JOIN      = 7,
}

struct SquareEventNotificationPost {
    1: required string squareMid,
    2: required NotificationPostType notificationPostType,
    3: required string thumbnailObsHash,
    4: required string text,
    5: required string actionUri,
}

struct SquareEventNotificationNewChatMember {
    1: required string squareChatMid,
    2: required string squareChatName,
}

struct SquareEventNotificationMessageReaction {
    1: required string squareChatMid,
    2: required string messageId,
    3: required string squareChatName,
    4: required string reactorName,
    5: required string thumbnailObsHash,
    6: required string messageText,
    7: required MessageReactionType type,
}

struct SquareEventPayload {
    1: required SquareEventReceiveMessage receiveMessage,
    2: required SquareEventSendMessage sendMessage,
    3: required SquareEventNotifiedJoinSquareChat notifiedJoinSquareChat,
    4: required SquareEventNotifiedInviteIntoSquareChat notifiedInviteIntoSquareChat,
    5: required SquareEventNotifiedLeaveSquareChat notifiedLeaveSquareChat,
    6: required SquareEventNotifiedDestroyMessage notifiedDestroyMessage,
    7: required SquareEventNotifiedMarkAsRead notifiedMarkAsRead,
    8: required SquareEventNotifiedUpdateSquareMemberProfile notifiedUpdateSquareMemberProfile,
    9: required SquareEventNotifiedUpdateSquare notifiedUpdateSquare,
    10: required SquareEventNotifiedUpdateSquareMember notifiedUpdateSquareMember,
    11: required SquareEventNotifiedUpdateSquareChat notifiedUpdateSquareChat,
    12: required SquareEventNotifiedUpdateSquareChatMember notifiedUpdateSquareChatMember,
    13: required SquareEventNotifiedUpdateSquareAuthority notifiedUpdateSquareAuthority,
    14: required SquareEventNotifiedUpdateSquareStatus notifiedUpdateSquareStatus,
    15: required SquareEventNotifiedUpdateSquareChatStatus notifiedUpdateSquareChatStatus,
    16: required SquareEventNotifiedCreateSquareMember notifiedCreateSquareMember,
    17: required SquareEventNotifiedCreateSquareChatMember notifiedCreateSquareChatMember,
    18: required SquareEventNotifiedUpdateSquareMemberRelation notifiedUpdateSquareMemberRelation,
    19: required SquareEventNotifiedShutdownSquare notifiedShutdownSquare,
    20: required SquareEventNotifiedKickoutFromSquare notifiedKickoutFromSquare,
    21: required SquareEventNotifiedDeleteSquareChat notifiedDeleteSquareChat,
    22: required SquareEventNotificationJoinRequest notificationJoinRequest,
    23: required SquareEventNotificationMemberUpdate notificationJoined,
    24: required SquareEventNotificationMemberUpdate notificationPromoteCoadmin,
    25: required SquareEventNotificationMemberUpdate notificationPromoteAdmin,
    26: required SquareEventNotificationMemberUpdate notificationDemoteMember,
    27: required SquareEventNotificationMemberUpdate notificationKickedOut,
    28: required SquareEventNotificationSquareDelete notificationSquareDelete,
    29: required SquareEventNotificationSquareChatDelete notificationSquareChatDelete,
    30: required SquareEventNotificationMessage notificationMessage,
    31: required SquareEventNotifiedUpdateSquareChatProfileName notifiedUpdateSquareChatProfileName,
    32: required SquareEventNotifiedUpdateSquareChatProfileImage notifiedUpdateSquareChatProfileImage,
    33: required SquareEventNotifiedUpdateSquareFeatureSet notifiedUpdateSquareFeatureSet,
    34: required SquareEventNotifiedAddBot notifiedAddBot,
    35: required SquareEventNotifiedRemoveBot notifiedRemoveBot,
    36: required SquareEventNotifiedUpdateSquareNoteStatus notifiedUpdateSquareNoteStatus,
    37: required SquareEventNotifiedUpdateSquareChatAnnouncement notifiedUpdateSquareChatAnnouncement,
    38: required SquareEventNotifiedUpdateSquareChatMaxMemberCount notifiedUpdateSquareChatMaxMemberCount,
    39: required SquareEventNotificationPostAnnouncement notificationPostAnnouncement,
    40: required SquareEventNotificationPost notificationPost,
    41: required SquareEventMutateMessage mutateMessage,
    42: required SquareEventNotificationNewChatMember notificationNewChatMember,
    43: required SquareEventNotifiedUpdateReadonlyChat notifiedUpdateReadonlyChat,
    44: required SquareEventNotifiedUpdateMessageStatus notifiedUpdateMessageStatus,
    45: required SquareEventNotificationMessageReaction notificationMessageReaction,
    46: required SquareEventChatPopup chatPopup,
    47: required SquareEventNotifiedSystemMessage notifiedSystemMessage,
    48: required SquareEventNotifiedUpdateSquareChatFeatureSet notifiedUpdateSquareChatFeatureSet,
    49: optional SquareEventNotifiedUpdateLiveTalkInfo notifiedUpdateLiveTalkInfo,
    50: optional SquareEventNotifiedUpdateLiveTalk notifiedUpdateLiveTalk,
    51: optional SquareEventNotificationLiveTalk notificationLiveTalk,
    52: optional SquareEventNotificationThreadMessage notificationThreadMessage,
    53: optional SquareEventNotificationThreadMessageReaction notificationThreadMessageReaction,
    54: optional SquareEventNotifiedUpdateThread notifiedUpdateThread,
    55: optional SquareEventNotifiedUpdateThreadStatus notifiedUpdateThreadStatus,
    56: optional SquareEventNotifiedUpdateThreadMember notifiedUpdateThreadMember,
    57: optional SquareEventNotifiedUpdateThreadRootMessage notifiedUpdateThreadRootMessage,
    58: optional SquareEventNotifiedUpdateThreadRootMessageStatus notifiedUpdateThreadRootMessageStatus,
}

struct SquareEvent {
    2: required i64 createdTime,
    3: required SquareEventType type,
    4: required SquareEventPayload payload,
    5: required string syncToken,
    6: required SquareEventStatus eventStatus,
}

struct SendMessageResponse {
    1: required SquareMessage createdSquareMessage,
}

struct UnsendMessageResponse {
    1: required SquareMessage unsentMessage,
}

struct FetchMyEventsResponse {
    1: required SubscriptionState subscription,
    2: required list<SquareEvent> events,
    3: required string syncToken,
    4: required string continuationToken,
}

struct GetSquareEmidResponse {
    1: required string squareEmid,
}

struct GetSquareMembersBySquareResponse {
    1: required list<SquareMember> members,
}

struct ManualRepairResponse {
    1: required list<SquareEvent> events,
    2: required string syncToken,
    3: required string continuationToken,
}

struct InviteIntoSquareChatResponse {
    1: required list<string> inviteeMids,
}

struct InviteToSquareResponse {
}

struct GetJoinedSquaresResponse {
    1: required list<Square> squares,
    2: required map<string, SquareMember> members,
    3: required map<string, SquareAuthority> authorities,
    4: required map<string, SquareStatus> statuses,
    5: required string continuationToken,
    6: required map<string, NoteStatus> noteStatuses,
}

struct MarkAsReadResponse {
}

struct ReactToMessageResponse {
    1: required SquareMessageReaction reaction,
    2: required SquareMessageReactionStatus status,
}

struct FindSquareByInvitationTicketResponse {
    1: required Square square,
    2: required SquareMember myMembership,
    3: required SquareAuthority squareAuthority,
    4: required SquareStatus squareStatus,
    5: required SquareFeatureSet squareFeatureSet,
    6: required NoteStatus noteStatus,
    7: required SquareChat chat,
    8: required SquareChatStatus chatStatus,
}

struct SubscriptionState {
    1: required i64 subscriptionId,
    2: required i64 ttlMillis,
}

struct FetchSquareChatEventsResponse {
    1: required SubscriptionState subscription,
    2: required list<SquareEvent> events,
    3: required string syncToken,
    4: required string continuationToken,
}

struct GetSquareResponse {
    1: required Square square,
    2: required SquareMember myMembership,
    3: required SquareAuthority squareAuthority,
    4: required SquareStatus squareStatus,
    5: required SquareFeatureSet squareFeatureSet,
    6: required NoteStatus noteStatus,
}

struct GetJoinableSquareChatsResponse {
    1: required list<SquareChat> squareChats,
    2: required string continuationToken,
    3: required i32 totalSquareChatCount,
    4: required map<string, SquareChatStatus> squareChatStatuses,
}

struct CreateSquareResponse {
    1: required Square square,
    2: required SquareMember creator,
    3: required SquareAuthority authority,
    4: required SquareStatus status,
    5: required SquareFeatureSet featureSet,
    6: required NoteStatus noteStatus,
    7: required SquareChat squareChat,
    8: required SquareChatStatus squareChatStatus,
    9: required SquareChatMember squareChatMember,
    10: required SquareChatFeatureSet squareChatFeatureSet,
}

struct TextMessageAnnouncementContents {
    1: required string messageId,
    2: required string text,
    3: required string senderSquareMemberMid,
    4: required i64 createdAt,
    5: required string senderMid,
}

struct SquareChatAnnouncementContents {
    1: required TextMessageAnnouncementContents textMessageAnnouncementContents,
}

struct SquareChatAnnouncement {
    1: required i64 announcementSeq,
    2: required SquareChatAnnouncementType type,
    3: required SquareChatAnnouncementContents contents,
    4: required i64 createdAt,
    5: required string creator,
}

struct GetSquareChatAnnouncementsResponse {
    1: required list<SquareChatAnnouncement> announcements,
}

struct GetSquareFeatureSetResponse {
    1: required SquareFeatureSet squareFeatureSet,
}

struct GetSquareChatFeatureSetResponse {
    1: required SquareChatFeatureSet squareChatFeatureSet,
}

struct SyncSquareMembersResponse {
    1: required list<SquareMember> updatedSquareMembers,
}

enum SquareChatThreadState {
    ACTIVE   = 1,
    INACTIVE = 2,
}

struct SquareChatThread {
    1: required string squareChatThreadMid,
    2: required string squareChatMid,
    3: required string squareMid,
    4: required string messageId,
    5: required SquareChatThreadState state,
}

struct GetJoinedSquareChatThreadsResponse {
    1: required list<SquareChatThread> squareChatThreads,
    2: required string continuationToken,
}

struct CreateSquareChatThreadResponse {
    1: required SquareChatThread squareChatThread,
}

enum SquareChatThreadeMembershipState {
    ACTIVATED   = 1,
    DEACTIVATED = 2,
}

struct SquareChatThreadMember {
    1: required string squareMemberMid,
    2: required string squareChatThreadMid,
    3: required i64 revision,
    4: required SquareChatThreadeMembershipState membershipState,
}

struct GetSquareChatThreadResponse {
    1: required SquareChatThread squareChatThread,
    2: required SquareChatThreadMember mySquareChatThreadMember,
}

struct JoinSquareChatThreadResponse {
    1: required SquareChatThread squareChatThread,
}