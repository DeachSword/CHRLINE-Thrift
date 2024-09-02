include "../Types.thrift"
include "../Exceptions.thrift"
include "./ttypes.thrift"

service SquareLiveTalkService {
    AcceptSpeakersResponse acceptSpeakers() throws(1: SquareException e),
    AcceptToChangeRoleResponse acceptToChangeRole() throws(1: SquareException e),
    AcceptToListenResponse acceptToListen() throws(1: SquareException e),
    AcceptToSpeakResponse acceptToSpeak() throws(1: SquareException e),
    CancelToSpeakResponse cancelToSpeak() throws(1: SquareException e),
    EndLiveTalkResponse endLiveTalk() throws(1: SquareException e),
    FetchLiveTalkEventsResponse fetchLiveTalkEvents() throws(1: SquareException e),
    FindLiveTalkByInvitationTicketResponse findLiveTalkByInvitationTicket() throws(1: SquareException e),
    ForceEndLiveTalkResponse forceEndLiveTalk() throws(1: SquareException e),
    GetLiveTalkInfoForNonMemberResponse getLiveTalkInfoForNonMember() throws(1: SquareException e),
    GetLiveTalkInvitationUrlResponse getLiveTalkInvitationUrl() throws(1: SquareException e),
    GetLiveTalkSpeakersForNonMemberResponse getLiveTalkSpeakersForNonMember() throws(1: SquareException e),
    GetSquareInfoByChatMidResponse getSquareInfoByChatMid() throws(1: SquareException e),
    InviteToChangeRoleResponse inviteToChangeRole() throws(1: SquareException e),
    InviteToListenResponse inviteToListen() throws(1: SquareException e),
    InviteToLiveTalkResponse inviteToLiveTalk() throws(1: SquareException e),
    InviteToSpeakResponse inviteToSpeak() throws(1: SquareException e),
    JoinLiveTalkResponse joinLiveTalk() throws(1: SquareException e),
    KickOutLiveTalkParticipantsResponse kickOutLiveTalkParticipants() throws(1: SquareException e),
    RejectSpeakersResponse rejectSpeakers() throws(1: SquareException e),
    RejectSpeakersResponse rejectToSpeak() throws(1: SquareException e),
    ReportLiveTalkResponse reportLiveTalk() throws(1: SquareException e),
    ReportLiveTalkSpeakerResponse reportLiveTalkSpeaker() throws(1: SquareException e),
    RequestToListenResponse requestToListen() throws(1: SquareException e),
    RequestToSpeakResponse requestToSpeak() throws(1: SquareException e),
    StartLiveTalkResponse startLiveTalk() throws(1: SquareException e),
    UpdateLiveTalkAttrsResponse updateLiveTalkAttrs() throws(1: SquareException e),
    AcquireLiveTalkResponse acquireLiveTalk() throws(1: SquareException e),
}