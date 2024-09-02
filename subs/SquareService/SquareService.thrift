include "../../CHRLINE.thrift"
include "../Types.thrift"
include "../Exceptions.thrift"
include "./ttypes.thrift"

service SquareService {
    SendMessageResponse sendMessage() throws(1: SquareException e),
    UnsendMessageResponse unsendSquareMessage() throws(1: SquareException e),
    FetchMyEventsResponse fetchMyEvents() throws(1: SquareException e),
    GetSquareEmidResponse getSquareEmid() throws(1: SquareException e),
    GetSquareMembersBySquareResponse getSquareMembersBySquare() throws(1: SquareException e),
    ManualRepairResponse manualRepair() throws(1: SquareException e),
    InviteIntoSquareChatResponse inviteIntoSquareChat() throws(1: SquareException e),
    InviteToSquareResponse inviteToSquare() throws(1: SquareException e),
    GetJoinedSquaresResponse getJoinedSquares() throws(1: SquareException e),
    MarkAsReadResponse markAsRead() throws(1: SquareException e),
    ReactToMessageResponse reactToMessage() throws(1: SquareException e),
    FindSquareByInvitationTicketResponse findSquareByInvitationTicket() throws(1: SquareException e),
    FetchSquareChatEventsResponse fetchSquareChatEvents() throws(1: SquareException e),
    GetSquareResponse getSquare() throws(1: SquareException e),
    GetJoinableSquareChatsResponse getJoinableSquareChats() throws(1: SquareException e),
    CreateSquareResponse createSquare() throws(1: SquareException e),
    GetSquareChatAnnouncementsResponse getSquareChatAnnouncements() throws(1: SquareException e),
    GetSquareFeatureSetResponse getSquareFeatureSet() throws(1: SquareException e),
    GetSquareChatFeatureSetResponse getSquareChatFeatureSet() throws(1: SquareException e),
    GetJoinedSquareChatThreadsResponse getJoinedSquareChatThreads() throws(1: SquareException e),
    CreateSquareChatThreadResponse createSquareChatThread() throws(1: SquareException e),
    GetSquareChatThreadResponse getSquareChatThread() throws(1: SquareException e),
    JoinSquareChatThreadResponse joinSquareChatThread() throws(1: SquareException e),
    SyncSquareMembersResponse syncSquareMembers() throws(1: SquareException e),
}