include "../../CHRLINE.thrift"
include "../Types.thrift"

enum SquareMessageState {
    SENT      = 1;
    DELETED   = 2;
    FORBIDDEN = 3;
    UNSENT    = 4;
}

enum SquareEventType {
    RECEIVE_MESSAGE                              = 0;
    SEND_MESSAGE                                 = 1;
    MUTATE_MESSAGE                               = 41;
    NOTIFIED_JOIN_SQUARE_CHAT                    = 2;
    NOTIFIED_INVITE_INTO_SQUARE_CHAT             = 3;
    NOTIFIED_LEAVE_SQUARE_CHAT                   = 4;
    NOTIFIED_DESTROY_MESSAGE                     = 5;
    NOTIFIED_MARK_AS_READ                        = 6;
    NOTIFIED_UPDATE_SQUARE_MEMBER_PROFILE        = 7;
    NOTIFIED_KICKOUT_FROM_SQUARE                 = 19;
    NOTIFIED_SHUTDOWN_SQUARE                     = 18;
    NOTIFIED_DELETE_SQUARE_CHAT                  = 20;
    NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_NAME     = 30;
    NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_IMAGE    = 31;
    NOTIFIED_UPDATE_SQUARE_CHAT_MAX_MEMBER_COUNT = 38;
    NOTIFIED_UPDATE_SQUARE_CHAT_ANNOUNCEMENT     = 37;
    NOTIFIED_ADD_BOT                             = 33;
    NOTIFIED_REMOVE_BOT                          = 34;
    NOTIFIED_UPDATE_READONLY_CHAT                = 43;
    NOTIFIED_UPDATE_MESSAGE_STATUS               = 46;
    NOTIFIED_CHAT_POPUP                          = 48;
    NOTIFIED_SYSTEM_MESSAGE                      = 49;
    NOTIFIED_UPDATE_SQUARE                       = 8;
    NOTIFIED_UPDATE_SQUARE_STATUS                = 9;
    NOTIFIED_UPDATE_SQUARE_AUTHORITY             = 10;
    NOTIFIED_UPDATE_SQUARE_MEMBER                = 11;
    NOTIFIED_UPDATE_SQUARE_CHAT                  = 12;
    NOTIFIED_UPDATE_SQUARE_CHAT_STATUS           = 13;
    NOTIFIED_UPDATE_SQUARE_CHAT_MEMBER           = 14;
    NOTIFIED_CREATE_SQUARE_MEMBER                = 15;
    NOTIFIED_CREATE_SQUARE_CHAT_MEMBER           = 16;
    NOTIFIED_UPDATE_SQUARE_MEMBER_RELATION       = 17;
    NOTIFIED_UPDATE_SQUARE_FEATURE_SET           = 32;
    NOTIFIED_UPDATE_SQUARE_CHAT_FEATURE_SET      = 50;
    NOTIFIED_UPDATE_SQUARE_NOTE_STATUS           = 36;
    NOTIFICATION_JOIN_REQUEST                    = 21;
    NOTIFICATION_JOINED                          = 22;
    NOTIFICATION_PROMOTED_COADMIN                = 23;
    NOTIFICATION_PROMOTED_ADMIN                  = 24;
    NOTIFICATION_DEMOTED_MEMBER                  = 25;
    NOTIFICATION_KICKED_OUT                      = 26;
    NOTIFICATION_SQUARE_DELETE                   = 27;
    NOTIFICATION_SQUARE_CHAT_DELETE              = 28;
    NOTIFICATION_MESSAGE                         = 29;
    NOTIFICATION_POST_ANNOUNCEMENT               = 39;
    NOTIFICATION_POST                            = 40;
    NOTIFICATION_NEW_CHAT_MEMBER                 = 42;
    NOTIFICATION_MESSAGE_REACTION                = 47;
}

enum SquareEventStatus {
    NORMAL         = 1;
    ALERT_DISABLED = 2;
}

struct SquareMessage {
    1: Message message;
    3: MIDType fromType;
    4: i64 squareMessageRevision;
    5: SquareMessageState state;
}

enum SquareMembershipState {
    JOIN_REQUESTED = 1;
    JOINED         = 2;
    REJECTED       = 3;
    LEFT           = 4;
    KICK_OUT       = 5;
    BANNED         = 6;
    DELETED        = 7;
}

enum SquareMemberRole {
    ADMIN    = 1;
    CO_ADMIN = 2;
    MEMBER   = 10;
}

struct SquarePreference {
    1: i64 favoriteTimestamp;
    2: bool notiForNewJoinRequest;
}

struct SquareMember {
    1: string squareMemberMid;
    2: string squareMid;
    3: string displayName;
    4: string profileImageObsHash;
    5: bool ableToReceiveMessage;
    7: SquareMembershipState membershipState;
    8: SquareMemberRole role;
    9: i64 revision;
    10: SquarePreference preference;
    11: string joinMessage;
}

struct SquareMessageReaction {
    1: MessageReactionType type;
    2: SquareMember reactor;
    3: i64 createdAt;
    4: i64 updatedAt;
}

struct SquareMessageReactionStatus {
    1: i32 totalCount;
    2: map<MessageReactionType, i32> countByReactionType;
    3: SquareMessageReaction myReaction;
}

struct SquareEventReceiveMessage {
    1: string squareChatMid;
    2: SquareMessage squareMessage;
    3: string senderDisplayName;
    4: SquareMessageReactionStatus messageReactionStatus;
    5: i64 senderRevision;
    6: string squareMid;
}

struct SquareEventSendMessage {
    1: string squareChatMid;
    2: SquareMessage squareMessage;
    3: i32 reqSeq;
    4: string senderDisplayName;
    5: SquareMessageReactionStatus messageReactionStatus;
}

struct SquareEventMutateMessage {
    1: string squareChatMid;
    2: SquareMessage squareMessage;
    3: i32 reqSeq;
    4: string senderDisplayName;
}

struct SquareEventNotifiedJoinSquareChat {
    1: string squareChatMid;
    2: SquareMember joinedMember;
}

enum SquareMemberRelationState {
    NONE    = 1;
    BLOCKED = 2;
}

struct SquareMemberRelation {
    1: SquareMemberRelationState state;
    2: i64 revision;
}

struct SquareEventNotifiedInviteIntoSquareChat {
    1: string squareChatMid;
    2: list<SquareMember> invitees;
    3: SquareMember invitor;
    4: SquareMemberRelation invitorRelation;
}

struct SquareEventNotifiedLeaveSquareChat {
    1: string squareChatMid;
    2: string squareMemberMid;
    3: bool sayGoodbye;
    4: SquareMember squareMember;
}

struct SquareEventNotifiedDestroyMessage {
    1: string squareChatMid;
    3: string messageId;
}

struct SquareEventNotifiedMarkAsRead {
    1: string squareChatMid;
    2: string sMemberMid;
    4: string messageId;
}

struct SquareEventNotifiedUpdateSquareMemberProfile {
    1: string squareChatMid;
    2: SquareMember squareMember;
}

struct SquareEventNotifiedKickoutFromSquare {
    1: string squareChatMid;
    2: list<SquareMember> kickees;
    4: SquareMember kicker;
}

enum SquareType {
    CLOSED = 0;
    OPEN   = 1;
}

enum SquareState {
    ALIVE     = 0;
    DELETED   = 1;
    SUSPENDED = 2;
}

enum SquareEmblem {
    SUPER    = 1;
    OFFICIAL = 2;
}

enum SquareJoinMethodType {
    NONE     = 0;
    APPROVAL = 1;
    CODE     = 2;
}

struct ApprovalValue {
    1: string message;
}

struct CodeValue {
    1: string code;
}

struct SquareJoinMethodValue {
    1: ApprovalValue approvalValue;
    2: CodeValue codeValue;
}

struct SquareJoinMethod {
    1: SquareJoinMethodType type;
    2: SquareJoinMethodValue value;
}

enum BooleanState {
    NONE = 0;
    OFF  = 1;
    ON   = 2;
}

struct Square {
    1: string mid;
    2: string name;
    3: string welcomeMessage;
    4: string profileImageObsHash;
    5: string desc;
    6: bool searchable;
    7: SquareType type;
    8: i32 categoryId;
    9: string invitationURL;
    10: i64 revision;
    11: bool ableToUseInvitationTicket;
    12: SquareState state;
    13: list<SquareEmblem> emblems;
    14: SquareJoinMethod joinMethod;
    15: BooleanState adultOnly;
    16: list<string> svcTags;
    17: i64 createdAt;
}

struct SquareEventNotifiedShutdownSquare {
    1: string squareChatMid;
    2: Square square;
}

enum SquareChatType {
    OPEN           = 1;
    SECRET         = 2;
    ONE_ON_ONE     = 3;
    SQUARE_DEFAULT = 4;
}

enum SquareChatState {
    ALIVE     = 0;
    DELETED   = 1;
    SUSPENDED = 2;
}

struct MessageVisibility {
    1: bool showJoinMessage;
    2: bool showLeaveMessage;
    3: bool showKickoutMessage;
}

struct SquareChat {
    1: string squareChatMid;
    2: string squareMid;
    3: SquareChatType type;
    4: string name;
    5: string chatImageObsHash;
    6: i64 squareChatRevision;
    7: i32 maxMemberCount;
    8: SquareChatState state;
    9: string invitationUrl;
    10: MessageVisibility messageVisibility;
    11: BooleanState ableToSearchMessage;
}

struct SquareEventNotifiedDeleteSquareChat {
    1: SquareChat squareChat;
}

struct SquareEventNotifiedUpdateSquareChatProfileName {
    1: string squareChatMid;
    2: SquareMember editor;
    3: string updatedChatName;
}

struct SquareEventNotifiedUpdateSquareChatProfileImage {
    1: string squareChatMid;
    2: SquareMember editor;
}

struct SquareEventNotifiedUpdateSquareChatMaxMemberCount {
    1: string squareChatMid;
    2: i32 maxMemberCount;
    3: SquareMember editor;
}

struct SquareEventNotifiedAddBot {
    1: string squareChatMid;
    2: SquareMember squareMember;
    3: string botMid;
    4: string botDisplayName;
}

struct SquareEventNotifiedRemoveBot {
    1: string squareChatMid;
    2: SquareMember squareMember;
    3: string botMid;
    4: string botDisplayName;
}

struct SquareEventNotifiedUpdateReadonlyChat {
    1: string squareChatMid;
    2: bool readonly;
}

enum MessageStatusType {
}

struct MessageStatusContents {
    1: SquareMessageReactionStatus messageReactionStatus;
}

struct SquareMessageStatus {
    1: string squareChatMid;
    2: string globalMessageId;
    3: MessageStatusType type;
    4: MessageStatusContents contents;
    5: i64 publishedAt;
}

struct SquareEventNotifiedUpdateMessageStatus {
    1: string squareChatMid;
    2: string messageId;
    3: SquareMessageStatus messageStatus;
}

struct UrlButton {
    1: string text;
    2: string url;
}

struct TextButton {
    1: string text;
}

struct OkButton {
    1: string text;
}

struct ButtonContent {
    1: UrlButton urlButton;
    2: TextButton textButton;
    3: OkButton okButton;
}

struct SquareEventChatPopup {
    1: string squareChatMid;
    2: i64 popupId;
    3: string flexJson;
    4: ButtonContent button;
}

struct SquareEventNotifiedSystemMessage {
    1: string squareChatMid;
    2: string text;
}

struct SquareEventNotifiedUpdateSquare {
    1: string squareChatMid;
    2: Square square;
}

struct SquareStatus {
    1: i32 memberCount;
    2: i32 joinRequestCount;
    3: i64 lastJoinRequestAt;
    4: i32 openChatCount;
}

struct SquareEventNotifiedUpdateSquareStatus {
    1: string squareChatMid;
    2: SquareStatus squareStatus;
}

struct SquareEventNotifiedUpdateSquareMember {
    1: string squareChatMid;
    2: string squareMemberMid;
    3: SquareMember squareMember;
}

struct SquareEventNotifiedUpdateSquareChat {
    1: string squareMid;
    2: string squareChatMid;
    3: SquareChat squareChat;
}

enum NotifiedMessageType {
    MENTION = 1;
    REPLY   = 2;
}

struct SquareChatStatusWithoutMessage {
    1: i32 memberCount;
    2: i32 unreadMessageCount;
    3: string markedAsReadMessageId;
    4: string mentionedMessageId;
    5: NotifiedMessageType notifiedMessageType;
}

struct SquareEventNotifiedUpdateSquareChatStatus {
    1: string squareChatMid;
    2: SquareChatStatusWithoutMessage statusWithoutMessage;
}

enum SquareChatMembershipState {
    JOINED = 1;
    LEFT   = 2;
}

struct SquareChatMember {
    1: string squareMemberMid;
    2: string squareChatMid;
    3: i64 revision;
    4: SquareChatMembershipState membershipState;
    5: bool notificationForMessage;
    6: bool notificationForNewMember;
}

struct SquareEventNotifiedUpdateSquareChatMember {
    1: string squareChatMid;
    2: SquareChatMember squareChatMember;
}

struct SquareAuthority {
    1: string squareMid;
    2: SquareMemberRole updateSquareProfile;
    3: SquareMemberRole inviteNewMember;
    4: SquareMemberRole approveJoinRequest;
    5: SquareMemberRole createPost;
    6: SquareMemberRole createOpenSquareChat;
    7: SquareMemberRole deleteSquareChatOrPost;
    8: SquareMemberRole removeSquareMember;
    9: SquareMemberRole grantRole;
    10: SquareMemberRole enableInvitationTicket;
    11: i64 revision;
    12: SquareMemberRole createSquareChatAnnouncement;
    13: SquareMemberRole updateMaxChatMemberCount;
    14: SquareMemberRole useReadonlyDefaultChat;
}

struct SquareEventNotifiedUpdateSquareAuthority {
    1: string squareMid;
    2: SquareAuthority squareAuthority;
}

enum SquareFeatureControlState {
    DISABLED = 1;
    ENABLED  = 2;
}

struct SquareFeature {
    1: SquareFeatureControlState controlState;
    2: BooleanState booleanValue;
}

struct SquareFeatureSet {
    1: string squareMid;
    2: i64 revision;
    11: SquareFeature creatingSecretSquareChat;
    12: SquareFeature invitingIntoOpenSquareChat;
    13: SquareFeature creatingSquareChat;
    14: SquareFeature readonlyDefaultChat;
    15: SquareFeature showingAdvertisement;
    16: SquareFeature delegateJoinToPlug;
    17: SquareFeature delegateKickOutToPlug;
    18: SquareFeature disableUpdateJoinMethod;
    19: SquareFeature disableTransferAdmin;
    20: SquareFeature creatingLiveTalk;
    21: SquareFeature _notSure;
}

struct NoteStatus {
    1: i32 noteCount;
    2: i64 latestCreatedAt;
}

struct SquareEventNotifiedCreateSquareMember {
    1: Square square;
    2: SquareAuthority squareAuthority;
    3: SquareStatus squareStatus;
    4: SquareMember squareMember;
    5: SquareFeatureSet squareFeatureSet;
    6: NoteStatus noteStatus;
}

struct SquareChatStatus {
    3: SquareMessage lastMessage;
    4: string senderDisplayName;
    5: SquareChatStatusWithoutMessage otherStatus;
}

enum SquareChatFeatureControlState {
    DISABLED = 1;
    ENABLED  = 2;
}

struct SquareChatFeature {
    1: SquareChatFeatureControlState controlState;
    2: BooleanState booleanValue;
}

struct SquareChatFeatureSet {
    1: string squareChatMid;
    2: i64 revision;
    11: SquareChatFeature disableUpdateMaxChatMemberCount;
    12: SquareChatFeature disableMarkAsReadEvent;
}

struct SquareEventNotifiedCreateSquareChatMember {
    1: SquareChat chat;
    2: SquareChatStatus chatStatus;
    3: SquareChatMember chatMember;
    4: i64 joinedAt;
    5: SquareMember peerSquareMember;
    6: SquareChatFeatureSet squareChatFeatureSet;
}

struct SquareEventNotifiedUpdateSquareMemberRelation {
    1: string squareMid;
    2: string myMemberMid;
    3: string targetSquareMemberMid;
    4: SquareMemberRelation squareMemberRelation;
}

struct SquareEventNotifiedUpdateSquareFeatureSet {
    1: SquareFeatureSet squareFeatureSet;
}

struct SquareEventNotifiedUpdateSquareChatFeatureSet {
    1: SquareChatFeatureSet squareChatFeatureSet;
}

struct SquareEventNotifiedUpdateSquareNoteStatus {
    1: string squareMid;
    2: NoteStatus noteStatus;
}

struct SquareEventNotifiedUpdateSquareChatAnnouncement {
    1: string squareChatMid;
    2: i64 announcementSeq;
}

struct SquareEventNotificationJoinRequest {
    1: string squareMid;
    2: string squareName;
    3: string requestMemberName;
    4: string profileImageObsHash;
}

struct SquareEventNotificationMemberUpdate {
    1: string squareMid;
    2: string squareName;
    3: string profileImageObsHash;
}

struct SquareEventNotificationSquareDelete {
    1: string squareMid;
    2: string squareName;
    3: string profileImageObsHash;
}

struct SquareEventNotificationSquareChatDelete {
    1: string squareChatMid;
    2: string squareChatName;
    3: string profileImageObsHash;
}

struct SquareEventNotificationMessage {
    1: string squareChatMid;
    2: SquareMessage squareMessage;
    3: string senderDisplayName;
    4: i32 unreadCount;
    5: bool requiredToFetchChatEvents;
    6: string mentionedMessageId;
    7: NotifiedMessageType notifiedMessageType;
    8: i32 reqSeq;
}

struct SquareEventNotificationPostAnnouncement {
    1: string squareMid;
    2: string squareName;
    3: string squareProfileImageObsHash;
    4: string actionUri;
}

enum NotificationPostType {
    POST_MENTION         = 2;
    POST_LIKE            = 3;
    POST_COMMENT         = 4;
    POST_COMMENT_MENTION = 5;
    POST_COMMENT_LIKE    = 6;
    POST_RELAY_JOIN      = 7;
}

struct SquareEventNotificationPost {
    1: string squareMid;
    2: NotificationPostType notificationPostType;
    3: string thumbnailObsHash;
    4: string text;
    5: string actionUri;
}

struct SquareEventNotificationNewChatMember {
    1: string squareChatMid;
    2: string squareChatName;
}

struct SquareEventNotificationMessageReaction {
    1: string squareChatMid;
    2: string messageId;
    3: string squareChatName;
    4: string reactorName;
    5: string thumbnailObsHash;
    6: string messageText;
    7: MessageReactionType type;
}

struct SquareEventPayload {
    1: SquareEventReceiveMessage receiveMessage;
    2: SquareEventSendMessage sendMessage;
    3: SquareEventNotifiedJoinSquareChat notifiedJoinSquareChat;
    4: SquareEventNotifiedInviteIntoSquareChat notifiedInviteIntoSquareChat;
    5: SquareEventNotifiedLeaveSquareChat notifiedLeaveSquareChat;
    6: SquareEventNotifiedDestroyMessage notifiedDestroyMessage;
    7: SquareEventNotifiedMarkAsRead notifiedMarkAsRead;
    8: SquareEventNotifiedUpdateSquareMemberProfile notifiedUpdateSquareMemberProfile;
    9: SquareEventNotifiedUpdateSquare notifiedUpdateSquare;
    10: SquareEventNotifiedUpdateSquareMember notifiedUpdateSquareMember;
    11: SquareEventNotifiedUpdateSquareChat notifiedUpdateSquareChat;
    12: SquareEventNotifiedUpdateSquareChatMember notifiedUpdateSquareChatMember;
    13: SquareEventNotifiedUpdateSquareAuthority notifiedUpdateSquareAuthority;
    14: SquareEventNotifiedUpdateSquareStatus notifiedUpdateSquareStatus;
    15: SquareEventNotifiedUpdateSquareChatStatus notifiedUpdateSquareChatStatus;
    16: SquareEventNotifiedCreateSquareMember notifiedCreateSquareMember;
    17: SquareEventNotifiedCreateSquareChatMember notifiedCreateSquareChatMember;
    18: SquareEventNotifiedUpdateSquareMemberRelation notifiedUpdateSquareMemberRelation;
    19: SquareEventNotifiedShutdownSquare notifiedShutdownSquare;
    20: SquareEventNotifiedKickoutFromSquare notifiedKickoutFromSquare;
    21: SquareEventNotifiedDeleteSquareChat notifiedDeleteSquareChat;
    22: SquareEventNotificationJoinRequest notificationJoinRequest;
    23: SquareEventNotificationMemberUpdate notificationJoined;
    24: SquareEventNotificationMemberUpdate notificationPromoteCoadmin;
    25: SquareEventNotificationMemberUpdate notificationPromoteAdmin;
    26: SquareEventNotificationMemberUpdate notificationDemoteMember;
    27: SquareEventNotificationMemberUpdate notificationKickedOut;
    28: SquareEventNotificationSquareDelete notificationSquareDelete;
    29: SquareEventNotificationSquareChatDelete notificationSquareChatDelete;
    30: SquareEventNotificationMessage notificationMessage;
    31: SquareEventNotifiedUpdateSquareChatProfileName notifiedUpdateSquareChatProfileName;
    32: SquareEventNotifiedUpdateSquareChatProfileImage notifiedUpdateSquareChatProfileImage;
    33: SquareEventNotifiedUpdateSquareFeatureSet notifiedUpdateSquareFeatureSet;
    34: SquareEventNotifiedAddBot notifiedAddBot;
    35: SquareEventNotifiedRemoveBot notifiedRemoveBot;
    36: SquareEventNotifiedUpdateSquareNoteStatus notifiedUpdateSquareNoteStatus;
    37: SquareEventNotifiedUpdateSquareChatAnnouncement notifiedUpdateSquareChatAnnouncement;
    38: SquareEventNotifiedUpdateSquareChatMaxMemberCount notifiedUpdateSquareChatMaxMemberCount;
    39: SquareEventNotificationPostAnnouncement notificationPostAnnouncement;
    40: SquareEventNotificationPost notificationPost;
    41: SquareEventMutateMessage mutateMessage;
    42: SquareEventNotificationNewChatMember notificationNewChatMember;
    43: SquareEventNotifiedUpdateReadonlyChat notifiedUpdateReadonlyChat;
    44: SquareEventNotifiedUpdateMessageStatus notifiedUpdateMessageStatus;
    45: SquareEventNotificationMessageReaction notificationMessageReaction;
    46: SquareEventChatPopup chatPopup;
    47: SquareEventNotifiedSystemMessage notifiedSystemMessage;
    48: SquareEventNotifiedUpdateSquareChatFeatureSet notifiedUpdateSquareChatFeatureSet;
}

struct SquareEvent {
    2: i64 createdTime;
    3: SquareEventType type;
    4: SquareEventPayload payload;
    5: string syncToken;
    6: SquareEventStatus eventStatus;
}

struct SendMessageResponse {
    1: SquareMessage createdSquareMessage;
}

struct UnsendMessageResponse {
    1: SquareMessage unsentMessage;
}

struct FetchMyEventsResponse {
    1: SquareMessage subscription;
    2: list<SquareEvent> events;
    3: string syncToken;
    4: string continuationToken;
}

struct GetSquareEmidResponse {
    1: string squareEmid;
}

struct GetSquareMembersBySquareResponse {
    1: list<SquareMember> members;
}

struct ManualRepairResponse {
    1: list<SquareEvent> events;
    2: string syncToken;
    3: string continuationToken;
}

struct InviteIntoSquareChatResponse {
    1: list<string> inviteeMids;
}

struct InviteToSquareResponse {
}

struct GetJoinedSquaresResponse {
    1: list<Square> squares;
    2: map<string, SquareMember> members;
    3: map<string, SquareAuthority> authorities;
    4: map<string, SquareStatus> statuses;
    5: string continuationToken;
    6: map<string, NoteStatus> noteStatuses;
}

struct MarkAsReadResponse {
}

struct ReactToMessageResponse {
    1: SquareMessageReaction reaction;
    2: SquareMessageReactionStatus status;
}

struct FindSquareByInvitationTicketResponse {
    1: Square square;
    2: SquareMember myMembership;
    3: SquareAuthority squareAuthority;
    4: SquareStatus squareStatus;
    5: SquareFeatureSet squareFeatureSet;
    6: NoteStatus noteStatus;
    7: SquareChat chat;
    8: SquareChatStatus chatStatus;
}

struct SubscriptionState {
    1: i64 subscriptionId;
    2: i64 ttlMillis;
}

struct FetchSquareChatEventsResponse {
    1: SubscriptionState subscription;
    2: list<SquareEvent> events;
    3: string syncToken;
    4: string continuationToken;
}

struct GetSquareResponse {
    1: Square square;
    2: SquareMember myMembership;
    3: SquareAuthority squareAuthority;
    4: SquareStatus squareStatus;
    5: SquareFeatureSet squareFeatureSet;
    6: NoteStatus noteStatus;
}

struct GetJoinableSquareChatsResponse {
    1: list<SquareChat> squareChats;
    2: string continuationToken;
    3: i32 totalSquareChatCount;
    4: map<string, SquareChatStatus> squareChatStatuses;
}

struct CreateSquareResponse {
    1: Square square;
    2: SquareMember creator;
    3: SquareAuthority authority;
    4: SquareStatus status;
    5: SquareFeatureSet featureSet;
    6: NoteStatus noteStatus;
    7: SquareChat squareChat;
    8: SquareChatStatus squareChatStatus;
    9: SquareChatMember squareChatMember;
    10: SquareChatFeatureSet squareChatFeatureSet;
}

struct TextMessageAnnouncementContents {
    1: string messageId;
    2: string text;
    3: string senderSquareMemberMid;
    4: i64 createdAt;
    5: string senderMid;
}

struct SquareChatAnnouncementContents {
    1: TextMessageAnnouncementContents textMessageAnnouncementContents;
}

struct SquareChatAnnouncement {
    1: i64 announcementSeq;
    2: SquareChatAnnouncementType type;
    3: SquareChatAnnouncementContents contents;
    4: i64 createdAt;
    5: string creator;
}

struct GetSquareChatAnnouncementsResponse {
    1: list<SquareChatAnnouncement> announcements;
}

struct GetSquareFeatureSetResponse {
    1: SquareFeatureSet squareFeatureSet;
}