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
    NOTIFIED_UPDATE_LIVE_TALK_TITLE                  = 1,
    NOTIFIED_UPDATE_LIVE_TALK_SPEAKER_SETTING        = 2,
    NOTIFIED_UPDATE_LIVE_TALK_ANNOUNCEMENT           = 3,
    NOTIFIED_UPDATE_SQUARE_MEMBER_ROLE               = 4,
    NOTIFIED_UPDATE_LIVE_TALK_ALLOW_REQUEST_TO_SPEAK = 5,
}

struct LiveTalkEventNotifiedUpdateLiveTalkTitle {
    1: required string title,
}

enum LiveTalkSpeakerSetting {
    LIMITED_SPEAKERS = 1,
    ALL_AS_SPEAKERS  = 2,
}

struct LiveTalkEventNotifiedUpdateLiveTalkSpeakerSetting {
    1: required LiveTalkSpeakerSetting speakerSetting,
}

struct LiveTalkEventNotifiedUpdateLiveTalkAnnouncement {
    1: required string announcement,
}

struct LiveTalkEventNotifiedUpdateSquareMemberRole {
    1: required string squareMemberMid,
    2: required SquareMemberRole role,
}

struct LiveTalkEventNotifiedUpdateLiveTalkAllowRequestToSpeak {
    1: required bool allowRequestToSpeak,
}

struct LiveTalkEventPayload {
    1: required LiveTalkEventNotifiedUpdateLiveTalkTitle notifiedUpdateLiveTalkTitle,
    2: required LiveTalkEventNotifiedUpdateLiveTalkSpeakerSetting notifiedUpdateLiveTalkSpeakerSetting,
    3: required LiveTalkEventNotifiedUpdateLiveTalkAnnouncement notifiedUpdateLiveTalkAnnouncement,
    4: required LiveTalkEventNotifiedUpdateSquareMemberRole notifiedUpdateSquareMemberRole,
    5: required LiveTalkEventNotifiedUpdateLiveTalkAllowRequestToSpeak notifiedUpdateLiveTalkAllowRequestToSpeak,
}

struct LiveTalkEvent {
    1: required LiveTalkEventType type,
    2: required LiveTalkEventPayload payload,
    3: required string syncToken,
}

struct FetchLiveTalkEventsResponse {
    1: required list<LiveTalkEvent> events,
    2: required string syncToken,
    3: required bool hasMore,
}

enum LiveTalkType {
    PUBLIC  = 1,
    PRIVATE = 2,
}

struct LiveTalk {
    1: required string squareChatMid,
    2: required string sessionId,
    3: required string title,
    4: required LiveTalkType type,
    5: required LiveTalkSpeakerSetting speakerSetting,
    6: required bool allowRequestToSpeak,
    7: required string announcement,
    8: required i32 participantCount,
    9: required i64 revision,
    10: required i64 startedAt,
}

struct FindLiveTalkByInvitationTicketResponse {
    1: required string chatInvitationTicket,
    2: required LiveTalk liveTalk,
    3: required SquareChat chat,
    4: required SquareMember squareMember,
    5: required SquareChatMembershipState chatMembershipState,
}

struct ForceEndLiveTalkResponse {
}

struct LiveTalkSpeaker {
    1: required string displayName,
    2: required string profileImageObsHash,
    3: required SquareMemberRole role,
}

struct GetLiveTalkInfoForNonMemberResponse {
    1: required string chatName,
    2: required LiveTalk liveTalk,
    3: required list<LiveTalkSpeaker> speakers,
    4: required string chatInvitationUrl,
}

struct GetLiveTalkInvitationUrlResponse {
    1: required string invitationUrl,
}

struct GetLiveTalkSpeakersForNonMemberResponse {
    1: required list<LiveTalkSpeaker> speakers,
}

struct GetSquareInfoByChatMidResponse {
    1: required string defaultChatMid,
    2: required string squareName,
    3: required string squareDesc,
}

struct InviteToChangeRoleResponse {
}

struct InviteToListenResponse {
}

struct InviteToLiveTalkResponse {
}

struct InviteToSpeakResponse {
    1: required string inviteRequestId,
}

struct JoinLiveTalkResponse {
    1: required string hostMemberMid,
    2: required string memberSessionId,
    3: required string token,
    4: required string proto,
    5: required string voipAddress,
    6: required string voipAddress6,
    7: required i32 voipUdpPort,
    8: required i32 voipTcpPort,
    9: required string fromZone,
    10: required string commParam,
    11: required string orionAddress,
    12: required string polarisAddress,
    13: required string polarisZone,
    14: required i32 polarisUdpPort,
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
    1: required LiveTalk liveTalk,
}

struct UpdateLiveTalkAttrsResponse {
}

struct AcquireLiveTalkResponse {
    1: required LiveTalk liveTalk,
}