




























































































package com.google.android.apps.gsa.search.shared.service.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.FieldType;
import com.google.protobuf.GeneratedMessageLite;
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
public final class LensServiceEventData extends GeneratedMessageLite<LensServiceEventData, LensServiceEventData.Builder> implements LensServiceEventDataOrBuilder {
    private static final LensServiceEventData DEFAULT_INSTANCE = new LensServiceEventData();
    private static volatile Parser<LensServiceEventData> PARSER = null;
    public static final int SERVICE_API_VERSION_FIELD_NUMBER = 1;

    @ProtoPresenceBits(id = 0)
    private int bitField0_;

    @ProtoField(fieldNumber = 1, isRequired = false, type = FieldType.INT32)
    @ProtoPresenceCheckedField(mask = 1, presenceBitsId = 0)
    private int serviceApiVersion_;

    private LensServiceEventData() {
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceEventDataOrBuilder
    public boolean hasServiceApiVersion() {
        return (this.bitField0_ & 1) == 1;
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceEventDataOrBuilder
    public int getServiceApiVersion() {
        return this.serviceApiVersion_;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setServiceApiVersion(int value) {
        this.bitField0_ |= 1;
        this.serviceApiVersion_ = value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearServiceApiVersion() {
        this.bitField0_ &= -2;
        this.serviceApiVersion_ = 0;
    }

    public static LensServiceEventData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensServiceEventData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensServiceEventData parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensServiceEventData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensServiceEventData parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensServiceEventData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensServiceEventData parseFrom(InputStream input) throws IOException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static LensServiceEventData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static LensServiceEventData parseDelimitedFrom(InputStream input) throws IOException {
        return (LensServiceEventData) parseDelimitedFrom(DEFAULT_INSTANCE, input);
    }

    public static LensServiceEventData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensServiceEventData) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static LensServiceEventData parseFrom(CodedInputStream input) throws IOException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static LensServiceEventData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensServiceEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static Builder newBuilder() {
        return (Builder) DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(LensServiceEventData prototype) {
        return (Builder) DEFAULT_INSTANCE.createBuilder(prototype);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<LensServiceEventData, Builder> implements LensServiceEventDataOrBuilder {
        /* synthetic */ Builder(Object unused) {
            this();
        }

        private Builder() {
            super(LensServiceEventData.DEFAULT_INSTANCE);
        }

        @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceEventDataOrBuilder
        public boolean hasServiceApiVersion() {
            return ((LensServiceEventData) this.instance).hasServiceApiVersion();
        }

        @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceEventDataOrBuilder
        public int getServiceApiVersion() {
            return ((LensServiceEventData) this.instance).getServiceApiVersion();
        }

        public Builder setServiceApiVersion(int value) {
            copyOnWrite();
            ((LensServiceEventData) this.instance).setServiceApiVersion(value);
            return this;
        }

        public Builder clearServiceApiVersion() {
            copyOnWrite();
            ((LensServiceEventData) this.instance).clearServiceApiVersion();
            return this;
        }
    }


    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
        switch (method) {
            case NEW_MUTABLE_INSTANCE:
                return new LensServiceEventData();
            case NEW_BUILDER:
                return new Builder(null);
            case BUILD_MESSAGE_INFO:
                return newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u0004\u0000", new Object[]{"bitField0_", "serviceApiVersion_"});
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = (GeneratedMessageLite.DefaultInstanceBasedParser) PARSER;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (LensServiceEventData.class) {
                            defaultInstanceBasedParser = (GeneratedMessageLite.DefaultInstanceBasedParser) PARSER;
                        if (defaultInstanceBasedParser == null) {
                            defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                            PARSER = defaultInstanceBasedParser;
                        }
                    }
                }
                return defaultInstanceBasedParser;
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        GeneratedMessageLite.registerDefaultInstance(LensServiceEventData.class, DEFAULT_INSTANCE);
    }

    public static LensServiceEventData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<LensServiceEventData> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
