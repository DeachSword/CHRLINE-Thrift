include "../../CHRLINE.thrift"
include "../Types.thrift"
include "../SquareService/ttypes.thrift"

struct AcceptSpeakersResponse {
}

struct AcceptToChangeRoleResponse {
}

struct AcceptToListenResponse {
}

struct AcceptToSpeakResponse {
}

struct CancelToSpeakResponse {
}

struct EndLiveTalkResponse {
}

enum LiveTalkEventType {
    NOTIFIED_UPDATE_LIVE_TALK_TITLE                  = 1;
    NOTIFIED_UPDATE_LIVE_TALK_SPEAKER_SETTING        = 2;
    NOTIFIED_UPDATE_LIVE_TALK_ANNOUNCEMENT           = 3;
    NOTIFIED_UPDATE_SQUARE_MEMBER_ROLE               = 4;
    NOTIFIED_UPDATE_LIVE_TALK_ALLOW_REQUEST_TO_SPEAK = 5;
}

struct LiveTalkEventNotifiedUpdateLiveTalkTitle {
    1: string title;
}

enum LiveTalkSpeakerSetting {
    LIMITED_SPEAKERS = 1;
    ALL_AS_SPEAKERS  = 2;
}

struct LiveTalkEventNotifiedUpdateLiveTalkSpeakerSetting {
    1: LiveTalkSpeakerSetting speakerSetting;
}

struct LiveTalkEventNotifiedUpdateLiveTalkAnnouncement {
    1: string announcement;
}

struct LiveTalkEventNotifiedUpdateSquareMemberRole {
    1: string squareMemberMid;
    2: SquareMemberRole role;
}

struct LiveTalkEventNotifiedUpdateLiveTalkAllowRequestToSpeak {
    1: bool allowRequestToSpeak;
}

struct LiveTalkEventPayload {
    1: LiveTalkEventNotifiedUpdateLiveTalkTitle notifiedUpdateLiveTalkTitle;
    2: LiveTalkEventNotifiedUpdateLiveTalkSpeakerSetting notifiedUpdateLiveTalkSpeakerSetting;
    3: LiveTalkEventNotifiedUpdateLiveTalkAnnouncement notifiedUpdateLiveTalkAnnouncement;
    4: LiveTalkEventNotifiedUpdateSquareMemberRole notifiedUpdateSquareMemberRole;
    5: LiveTalkEventNotifiedUpdateLiveTalkAllowRequestToSpeak notifiedUpdateLiveTalkAllowRequestToSpeak;
}

struct LiveTalkEvent {
    1: LiveTalkEventType type;
    2: LiveTalkEventPayload payload;
    3: string syncToken;
}

struct FetchLiveTalkEventsResponse {
    1: list<LiveTalkEvent> events;
    2: string syncToken;
    3: bool hasMore;
}

enum LiveTalkType {
    PUBLIC  = 1;
    PRIVATE = 2;
}

struct LiveTalk {
    1: string squareChatMid;
    2: string sessionId;
    3: string title;
    4: LiveTalkType type;
    5: LiveTalkSpeakerSetting speakerSetting;
    6: bool allowRequestToSpeak;
    7: string announcement;
    8: i32 participantCount;
    9: i64 revision;
    10: i64 startedAt;
}

struct FindLiveTalkByInvitationTicketResponse {
    1: string chatInvitationTicket;
    2: LiveTalk liveTalk;
    3: SquareChat chat;
    4: SquareMember squareMember;
    5: SquareChatMembershipState chatMembershipState;
}

struct ForceEndLiveTalkResponse {
}

struct LiveTalkSpeaker {
    1: string displayName;
    2: string profileImageObsHash;
    3: SquareMemberRole role;
}

struct GetLiveTalkInfoForNonMemberResponse {
    1: string chatName;
    2: LiveTalk liveTalk;
    3: list<LiveTalkSpeaker> speakers
    4: string chatInvitationUrl;
}

struct GetLiveTalkInvitationUrlResponse {
    1: string invitationUrl;
}

struct GetLiveTalkSpeakersForNonMemberResponse {
    1: list<LiveTalkSpeaker> speakers;
}

struct GetSquareInfoByChatMidResponse {
    1: string defaultChatMid;
    2: string squareName;
    3: string squareDesc;
}

struct InviteToChangeRoleResponse {
}

struct InviteToListenResponse {
}

struct InviteToLiveTalkResponse {
}

struct InviteToSpeakResponse {
    1: string inviteRequestId;
}

struct JoinLiveTalkResponse {
    1: string hostMemberMid;
    2: string memberSessionId;
    3: string token;
    4: string proto;
    5: string voipAddress;
    6: string voipAddress6;
    7: i32 voipUdpPort;
    8: i32 voipTcpPort;
    9: string fromZone;
    10: string commParam;
    11: string orionAddress;
    12: string polarisAddress;
    13: string polarisZone;
    14: i32 polarisUdpPort;
}

struct KickOutLiveTalkParticipantsResponse {
}

struct RejectSpeakersResponse {
}

struct RejectToSpeakResponse {
}

struct ReportLiveTalkResponse {
}

struct ReportLiveTalkSpeakerResponse {
}

struct RequestToListenResponse {
}

struct RequestToSpeakResponse {
}

struct StartLiveTalkResponse {
    1: LiveTalk liveTalk;
}

struct UpdateLiveTalkAttrsResponse {
}