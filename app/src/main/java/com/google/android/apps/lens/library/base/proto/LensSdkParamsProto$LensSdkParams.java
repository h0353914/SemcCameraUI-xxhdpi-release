package com.google.android.apps.lens.library.base.proto;

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

@ProtoMessage(checkInitialized = {}, messageSetWireFormat = false, protoSyntax = ProtoSyntax.PROTO2)
public final class LensSdkParamsProto$LensSdkParams extends GeneratedMessageLite<LensSdkParamsProto$LensSdkParams, LensSdkParamsProto$LensSdkParams$Builder> implements LensSdkParamsProto$LensSdkParamsOrBuilder {
    public static final int AGSA_VERSION_NAME_FIELD_NUMBER = 2;
    public static final int AR_STICKERS_AVAILABILITY_STATUS_FIELD_NUMBER = 4;
    private static final LensSdkParamsProto$LensSdkParams DEFAULT_INSTANCE = new LensSdkParamsProto$LensSdkParams();
    public static final int LENS_AVAILABILITY_STATUS_FIELD_NUMBER = 3;
    public static final int LENS_SDK_VERSION_FIELD_NUMBER = 1;
    private static volatile Parser<LensSdkParamsProto$LensSdkParams> PARSER;

    @ProtoPresenceBits(id = 0)
    private int bitField0_;

    @ProtoField(fieldNumber = 1, isEnforceUtf8 = false, isRequired = false, type = FieldType.STRING)
    @ProtoPresenceCheckedField(mask = 1, presenceBitsId = 0)
    private String lensSdkVersion_ = "";

    @ProtoField(fieldNumber = 2, isEnforceUtf8 = false, isRequired = false, type = FieldType.STRING)
    @ProtoPresenceCheckedField(mask = 2, presenceBitsId = 0)
    private String agsaVersionName_ = "";

    @ProtoField(fieldNumber = 3, isRequired = false, type = FieldType.ENUM)
    @ProtoPresenceCheckedField(mask = 4, presenceBitsId = 0)
    private int lensAvailabilityStatus_ = -1;

    @ProtoField(fieldNumber = 4, isRequired = false, type = FieldType.ENUM)
    @ProtoPresenceCheckedField(mask = 8, presenceBitsId = 0)
    private int arStickersAvailabilityStatus_ = -1;

    static /* synthetic */ LensSdkParamsProto$LensSdkParams access$000() {
        return DEFAULT_INSTANCE;
    }

    static /* synthetic */ void access$100(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams, String str) {
        lensSdkParamsProto$LensSdkParams.setLensSdkVersion(str);
    }

    static /* synthetic */ void access$1000(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams) {
        lensSdkParamsProto$LensSdkParams.clearArStickersAvailabilityStatus();
    }

    static /* synthetic */ void access$200(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams) {
        lensSdkParamsProto$LensSdkParams.clearLensSdkVersion();
    }

    static /* synthetic */ void access$300(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams, ByteString byteString) {
        lensSdkParamsProto$LensSdkParams.setLensSdkVersionBytes(byteString);
    }

    static /* synthetic */ void access$400(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams, String str) {
        lensSdkParamsProto$LensSdkParams.setAgsaVersionName(str);
    }

    static /* synthetic */ void access$500(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams) {
        lensSdkParamsProto$LensSdkParams.clearAgsaVersionName();
    }

    static /* synthetic */ void access$600(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams, ByteString byteString) {
        lensSdkParamsProto$LensSdkParams.setAgsaVersionNameBytes(byteString);
    }

    static /* synthetic */ void access$700(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams, LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus lensSdkParamsProto$LensSdkParams$LensAvailabilityStatus) {
        lensSdkParamsProto$LensSdkParams.setLensAvailabilityStatus(lensSdkParamsProto$LensSdkParams$LensAvailabilityStatus);
    }

    static /* synthetic */ void access$800(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams) {
        lensSdkParamsProto$LensSdkParams.clearLensAvailabilityStatus();
    }

    static /* synthetic */ void access$900(LensSdkParamsProto$LensSdkParams lensSdkParamsProto$LensSdkParams, LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus lensSdkParamsProto$LensSdkParams$LensAvailabilityStatus) {
        lensSdkParamsProto$LensSdkParams.setArStickersAvailabilityStatus(lensSdkParamsProto$LensSdkParams$LensAvailabilityStatus);
    }

    private LensSdkParamsProto$LensSdkParams() {
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public boolean hasLensSdkVersion() {
        return (this.bitField0_ & 1) == 1;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public String getLensSdkVersion() {
        return this.lensSdkVersion_;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public ByteString getLensSdkVersionBytes() {
        return ByteString.copyFromUtf8(this.lensSdkVersion_);
    }

    private void setLensSdkVersion(String value) {
        if (value == null) {
            throw new NullPointerException();
        }
        this.bitField0_ |= 1;
        this.lensSdkVersion_ = value;
    }

    private void clearLensSdkVersion() {
        this.bitField0_ &= -2;
        this.lensSdkVersion_ = getDefaultInstance().getLensSdkVersion();
    }

    private void setLensSdkVersionBytes(ByteString value) {
        if (value == null) {
            throw new NullPointerException();
        }
        this.bitField0_ |= 1;
        this.lensSdkVersion_ = value.toStringUtf8();
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public boolean hasAgsaVersionName() {
        return (this.bitField0_ & 2) == 2;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public String getAgsaVersionName() {
        return this.agsaVersionName_;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public ByteString getAgsaVersionNameBytes() {
        return ByteString.copyFromUtf8(this.agsaVersionName_);
    }

    private void setAgsaVersionName(String value) {
        if (value == null) {
            throw new NullPointerException();
        }
        this.bitField0_ |= 2;
        this.agsaVersionName_ = value;
    }

    private void clearAgsaVersionName() {
        this.bitField0_ &= -3;
        this.agsaVersionName_ = getDefaultInstance().getAgsaVersionName();
    }

    private void setAgsaVersionNameBytes(ByteString value) {
        if (value == null) {
            throw new NullPointerException();
        }
        this.bitField0_ |= 2;
        this.agsaVersionName_ = value.toStringUtf8();
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public boolean hasLensAvailabilityStatus() {
        return (this.bitField0_ & 4) == 4;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus getLensAvailabilityStatus() {
        LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus lensSdkParamsProto$LensSdkParams$LensAvailabilityStatusForNumber = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.forNumber(this.lensAvailabilityStatus_);
        return lensSdkParamsProto$LensSdkParams$LensAvailabilityStatusForNumber == null ? LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.LENS_AVAILABILITY_UNKNOWN : lensSdkParamsProto$LensSdkParams$LensAvailabilityStatusForNumber;
    }

    private void setLensAvailabilityStatus(LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus value) {
        if (value == null) {
            throw new NullPointerException();
        }
        this.bitField0_ |= 4;
        this.lensAvailabilityStatus_ = value.getNumber();
    }

    private void clearLensAvailabilityStatus() {
        this.bitField0_ &= -5;
        this.lensAvailabilityStatus_ = -1;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public boolean hasArStickersAvailabilityStatus() {
        return (this.bitField0_ & 8) == 8;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus getArStickersAvailabilityStatus() {
        LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus lensSdkParamsProto$LensSdkParams$LensAvailabilityStatusForNumber = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.forNumber(this.arStickersAvailabilityStatus_);
        return lensSdkParamsProto$LensSdkParams$LensAvailabilityStatusForNumber == null ? LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.LENS_AVAILABILITY_UNKNOWN : lensSdkParamsProto$LensSdkParams$LensAvailabilityStatusForNumber;
    }

    private void setArStickersAvailabilityStatus(LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus value) {
        if (value == null) {
            throw new NullPointerException();
        }
        this.bitField0_ |= 8;
        this.arStickersAvailabilityStatus_ = value.getNumber();
    }

    private void clearArStickersAvailabilityStatus() {
        this.bitField0_ &= -9;
        this.arStickersAvailabilityStatus_ = -1;
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(ByteString data) throws InvalidProtocolBufferException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(InputStream input) throws IOException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static LensSdkParamsProto$LensSdkParams parseDelimitedFrom(InputStream input) throws IOException {
        return (LensSdkParamsProto$LensSdkParams) parseDelimitedFrom(DEFAULT_INSTANCE, input);
    }

    public static LensSdkParamsProto$LensSdkParams parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensSdkParamsProto$LensSdkParams) parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(CodedInputStream input) throws IOException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
        return (LensSdkParamsProto$LensSdkParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
    }

    public static LensSdkParamsProto$LensSdkParams$Builder newBuilder() {
        return (LensSdkParamsProto$LensSdkParams$Builder) DEFAULT_INSTANCE.createBuilder();
    }

    public static LensSdkParamsProto$LensSdkParams$Builder newBuilder(LensSdkParamsProto$LensSdkParams prototype) {
        return (LensSdkParamsProto$LensSdkParams$Builder) DEFAULT_INSTANCE.createBuilder(prototype);
    }

    protected final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke method, Object arg0, Object arg1) {
        switch (LensSdkParamsProto$1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[method.ordinal()]) {
            case 1:
                return new LensSdkParamsProto$LensSdkParams();
            case 2:
                return new LensSdkParamsProto$LensSdkParams$Builder(null);
            case 3:
                return newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\f\u0002\u0004\f\u0003", new Object[]{"bitField0_", "lensSdkVersion_", "agsaVersionName_", "lensAvailabilityStatus_", LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.internalGetValueMap(), "arStickersAvailabilityStatus_", LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.internalGetValueMap()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                GeneratedMessageLite$DefaultInstanceBasedParser generatedMessageLite$DefaultInstanceBasedParser = PARSER;
                if (generatedMessageLite$DefaultInstanceBasedParser == null) {
                    synchronized (LensSdkParamsProto$LensSdkParams.class) {
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
        GeneratedMessageLite.registerDefaultInstance(LensSdkParamsProto$LensSdkParams.class, DEFAULT_INSTANCE);
    }

    public static LensSdkParamsProto$LensSdkParams getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<LensSdkParamsProto$LensSdkParams> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
