include "./Types.thrift"

service CallService {
    GroupCall getGroupCall(2: string chatMid) throws(1: TalkException e),
}