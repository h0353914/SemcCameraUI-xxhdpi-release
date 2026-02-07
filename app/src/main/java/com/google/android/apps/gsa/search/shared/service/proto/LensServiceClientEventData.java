package com.google.android.apps.gsa.search.shared.service.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.FieldType;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$DefaultInstanceBasedParser;
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

/* JADX INFO: loaded from: classes.dex */
@ProtoMessage(checkInitialized = {}, messageSetWireFormat = false, protoSyntax = ProtoSyntax.PROTO2)
public final class LensServiceClientEventData extends GeneratedMessageLite<LensServiceClientEventData, LensServiceClientEventData$Builder> implements LensServiceClientEventDataOrBuilder {
    private static final LensServiceClientEventData DEFAULT_INSTANCE = new LensServiceClientEventData();
    private static volatile Parser<LensServiceClientEventData> PARSER = null;
    public static final int TARGET_SERVICE_API_VERSION_FIELD_NUMBER = 1;

    @ProtoPresenceBits(id = 0)
    private int bitField0_;

    @ProtoField(fieldNumber = 1, isRequired = false, type = FieldType.INT32)
    @ProtoPresenceCheckedField(mask = 1, presenceBitsId = 0)
    private int targetServiceApiVersion_;

    static /* synthetic */ LensServiceClientEventData access$000() {
        return DEFAULT_INSTANCE;
    }

    static /* synthetic */ void access$100(LensServiceClientEventData lensServiceClientEventData, int i) {
        lensServiceClientEventData.setTargetServiceApiVersion(i);
    }

    static /* synthetic */ void access$200(LensServiceClientEventData lensServiceClientEventData) {
        lensServiceClientEventData.clearTargetServiceApiVersion();
    }

    private LensServiceClientEventData() {
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceClientEventDataOrBuilder
    public boolean hasTargetServiceApiVersion() {
        return (this.bitField0_ & 1) == 1;
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceClientEventDataOrBuilder
    public int getTargetServiceApiVersion() {
        return this.targetServiceApiVersion_;
    }

    private void setTargetServiceApiVersion(int value) {
        this.bitField0_ |= 1;
        this.targetServiceApiVersion_ = value;
    }

    private void clearTargetServiceApiVersion() {
        this.bitField0_ &= -2;
        this.targetServiceApiVersion_ = 0;
    }

    public static LensServiceClientEventData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensServiceClientEventData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensServiceClientEventData parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensServiceClientEventData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensServiceClientEventData parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensServiceClientEventData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensServiceClientEventData parseFrom(InputStream input) throws IOException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static LensServiceClientEventData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static LensServiceClientEventData parseDelimitedFrom(InputStream input) throws IOException {
        return (LensServiceClientEventData) parseDelimitedFrom(DEFAULT_INSTANCE, input);
    }

    public static LensServiceClientEventData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensServiceClientEventData) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static LensServiceClientEventData parseFrom(CodedInputStream input) throws IOException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static LensServiceClientEventData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensServiceClientEventData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static LensServiceClientEventData$Builder newBuilder() {
        return (LensServiceClientEventData$Builder) DEFAULT_INSTANCE.createBuilder();
    }

    public static LensServiceClientEventData$Builder newBuilder(LensServiceClientEventData prototype) {
        return (LensServiceClientEventData$Builder) DEFAULT_INSTANCE.createBuilder(prototype);
    }

    protected final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke method, Object arg0, Object arg1) {
        switch (LensServiceClientEventData$1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[method.ordinal()]) {
            case 1:
                return new LensServiceClientEventData();
            case 2:
                return new LensServiceClientEventData$Builder(null);
            case 3:
                return newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0002\u0000\u0000\u0000\u0001\u0004\u0000", new Object[]{"bitField0_", "targetServiceApiVersion_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                GeneratedMessageLite$DefaultInstanceBasedParser generatedMessageLite$DefaultInstanceBasedParser = PARSER;
                if (generatedMessageLite$DefaultInstanceBasedParser == null) {
                    synchronized (LensServiceClientEventData.class) {
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
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    static {
        GeneratedMessageLite.registerDefaultInstance(LensServiceClientEventData.class, DEFAULT_INSTANCE);
    }

    public static LensServiceClientEventData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<LensServiceClientEventData> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
