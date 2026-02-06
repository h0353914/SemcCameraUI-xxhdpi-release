package com.google.android.apps.gsa.search.shared.service.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.FieldType;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$DefaultInstanceBasedParser;
import com.google.protobuf.GeneratedMessageLite$ExtendableMessage;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.google.protobuf.ProtoField;
import com.google.protobuf.ProtoMessage;
import com.google.protobuf.ProtoPresenceBits;
import com.google.protobuf.ProtoPresenceCheckedField;
import com.google.protobuf.ProtoSyntax;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

@ProtoMessage(checkInitialized = {}, messageSetWireFormat = false, protoSyntax = ProtoSyntax.PROTO2)
public final class ServiceEventProto extends GeneratedMessageLite$ExtendableMessage<ServiceEventProto, ServiceEventProto$Builder> implements ServiceEventProtoOrBuilder {
    private static final ServiceEventProto DEFAULT_INSTANCE = new ServiceEventProto();
    public static final int EVENT_ID_FIELD_NUMBER = 1;
    private static volatile Parser<ServiceEventProto> PARSER;

    @ProtoPresenceBits(id = 0)
    private int bitField0_;

    @ProtoField(fieldNumber = 1, isRequired = false, type = FieldType.INT32)
    @ProtoPresenceCheckedField(mask = 1, presenceBitsId = 0)
    private int eventId_;
    private byte memoizedIsInitialized = 2;

    static /* synthetic */ ServiceEventProto access$000() {
        return DEFAULT_INSTANCE;
    }

    static /* synthetic */ void access$100(ServiceEventProto serviceEventProto, int i) {
        serviceEventProto.setEventId(i);
    }

    static /* synthetic */ void access$200(ServiceEventProto serviceEventProto) {
        serviceEventProto.clearEventId();
    }

    private ServiceEventProto() {
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.ServiceEventProtoOrBuilder
    public boolean hasEventId() {
        return (this.bitField0_ & 1) == 1;
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.ServiceEventProtoOrBuilder
    public int getEventId() {
        return this.eventId_;
    }

    private void setEventId(int value) {
        this.bitField0_ |= 1;
        this.eventId_ = value;
    }

    private void clearEventId() {
        this.bitField0_ &= -2;
        this.eventId_ = 0;
    }

    public static ServiceEventProto parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ServiceEventProto parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ServiceEventProto parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ServiceEventProto parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ServiceEventProto parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static ServiceEventProto parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static ServiceEventProto parseFrom(InputStream input) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static ServiceEventProto parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static ServiceEventProto parseDelimitedFrom(InputStream input) throws IOException {
        return parseDelimitedFrom((GeneratedMessageLite) DEFAULT_INSTANCE, input);
    }

    public static ServiceEventProto parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static ServiceEventProto parseFrom(CodedInputStream input) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static ServiceEventProto parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static ServiceEventProto$Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static ServiceEventProto$Builder newBuilder(ServiceEventProto prototype) {
        return DEFAULT_INSTANCE.createBuilder(prototype);
    }

    protected final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke method, Object arg0, Object arg1) {
        switch (ServiceEventProto$1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[method.ordinal()]) {
            case 1:
                return new ServiceEventProto();
            case 2:
                return new ServiceEventProto$Builder(null);
            case 3:
                return newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u0004\u0000", new Object[]{"bitField0_", "eventId_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                GeneratedMessageLite$DefaultInstanceBasedParser generatedMessageLite$DefaultInstanceBasedParser = PARSER;
                if (generatedMessageLite$DefaultInstanceBasedParser == null) {
                    synchronized (ServiceEventProto.class) {
                        generatedMessageLite$DefaultInstanceBasedParser = PARSER;
                        if (generatedMessageLite$DefaultInstanceBasedParser == null) {
                            generatedMessageLite$DefaultInstanceBasedParser = new GeneratedMessageLite$DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                            PARSER = generatedMessageLite$DefaultInstanceBasedParser;
                        }
                        break;
                    }
                }
                return generatedMessageLite$DefaultInstanceBasedParser;
            case 6:
                return Byte.valueOf(this.memoizedIsInitialized);
            case 7:
                this.memoizedIsInitialized = (byte) (arg0 == null ? 0 : 1);
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        GeneratedMessageLite.registerDefaultInstance(ServiceEventProto.class, DEFAULT_INSTANCE);
    }

    public static ServiceEventProto getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<ServiceEventProto> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
