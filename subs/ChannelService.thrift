include "../CHRLINE.thrift"
include "./Types.thrift"
include "./Exceptions.thrift"

service ChannelService {
    ChannelToken issueChannelToken(1: string channelId) throws(1: ChannelException e),
    ChannelToken approveChannelAndIssueChannelToken(1: string channelId) throws(1: ChannelException e),
}