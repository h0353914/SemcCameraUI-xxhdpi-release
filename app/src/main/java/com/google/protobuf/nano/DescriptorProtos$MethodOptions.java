package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$MethodOptions extends ExtendableMessageNano<DescriptorProtos$MethodOptions> {
    private static volatile DescriptorProtos$MethodOptions[] _emptyArray;
    public int clientLogging;
    public boolean clientStreaming;
    public double deadline;
    public boolean deprecated;
    public boolean duplicateSuppression;
    public boolean endUserCredsRequested;
    public boolean failFast;
    public boolean goLegacyChannelApi;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$IdempotencyLevel.class)
    public int idempotencyLevel;
    public long legacyClientInitialTokens;
    public String legacyResultType;
    public long legacyServerInitialTokens;
    public String legacyStreamType;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$TokenUnit.class)
    public int legacyTokenUnit;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$LogLevel.class)
    public int logLevel;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$Protocol.class)
    public int protocol;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$Format.class)
    public int requestFormat;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$Format.class)
    public int responseFormat;
    public String securityLabel;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$SecurityLevel.class)
    public int securityLevel;
    public int serverLogging;
    public boolean serverStreaming;
    public String streamType;
    public DescriptorProtos$UninterpretedOption[] uninterpretedOption;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$Protocol.class)
    public static int checkProtocolOrThrow(int value) {
        if (value >= 0 && value <= 1) {
            return value;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append(value);
        sb.append(" is not a valid enum Protocol");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$Protocol.class)
    public static int[] checkProtocolOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkProtocolOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$SecurityLevel.class)
    public static int checkSecurityLevelOrThrow(int value) {
        if (value >= 0 && value <= 3) {
            return value;
        }
        StringBuilder sb = new StringBuilder(45);
        sb.append(value);
        sb.append(" is not a valid enum SecurityLevel");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$SecurityLevel.class)
    public static int[] checkSecurityLevelOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkSecurityLevelOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$Format.class)
    public static int checkFormatOrThrow(int value) {
        if (value >= 0 && value <= 1) {
            return value;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append(value);
        sb.append(" is not a valid enum Format");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$Format.class)
    public static int[] checkFormatOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkFormatOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$LogLevel.class)
    public static int checkLogLevelOrThrow(int value) {
        if (value >= 0 && value <= 4) {
            return value;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append(value);
        sb.append(" is not a valid enum LogLevel");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$LogLevel.class)
    public static int[] checkLogLevelOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkLogLevelOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$TokenUnit.class)
    public static int checkTokenUnitOrThrow(int value) {
        if (value >= 0 && value <= 1) {
            return value;
        }
        StringBuilder sb = new StringBuilder(41);
        sb.append(value);
        sb.append(" is not a valid enum TokenUnit");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$TokenUnit.class)
    public static int[] checkTokenUnitOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkTokenUnitOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$IdempotencyLevel.class)
    public static int checkIdempotencyLevelOrThrow(int value) {
        if (value >= 0 && value <= 2) {
            return value;
        }
        StringBuilder sb = new StringBuilder(48);
        sb.append(value);
        sb.append(" is not a valid enum IdempotencyLevel");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$IdempotencyLevel.class)
    public static int[] checkIdempotencyLevelOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkIdempotencyLevelOrThrow(i);
        }
        return iArr;
    }

    public static DescriptorProtos$MethodOptions[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$MethodOptions[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$MethodOptions() {
        clear();
    }

    public DescriptorProtos$MethodOptions clear() {
        this.protocol = 0;
        this.deadline = -1.0d;
        this.duplicateSuppression = false;
        this.failFast = false;
        this.endUserCredsRequested = false;
        this.clientLogging = 256;
        this.serverLogging = 256;
        this.securityLevel = 0;
        this.responseFormat = 0;
        this.requestFormat = 0;
        this.streamType = "";
        this.securityLabel = "";
        this.clientStreaming = false;
        this.serverStreaming = false;
        this.legacyStreamType = "";
        this.legacyResultType = "";
        this.goLegacyChannelApi = false;
        this.legacyClientInitialTokens = -1L;
        this.legacyServerInitialTokens = -1L;
        this.legacyTokenUnit = 1;
        this.logLevel = 2;
        this.deprecated = false;
        this.idempotencyLevel = 0;
        this.uninterpretedOption = DescriptorProtos$UninterpretedOption.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.protocol != 0) {
            output.writeInt32(7, this.protocol);
        }
        if (Double.doubleToLongBits(this.deadline) != Double.doubleToLongBits(-1.0d)) {
            output.writeDouble(8, this.deadline);
        }
        if (this.duplicateSuppression) {
            output.writeBool(9, this.duplicateSuppression);
        }
        if (this.failFast) {
            output.writeBool(10, this.failFast);
        }
        if (this.clientLogging != 256) {
            output.writeSInt32(11, this.clientLogging);
        }
        if (this.serverLogging != 256) {
            output.writeSInt32(12, this.serverLogging);
        }
        if (this.securityLevel != 0) {
            output.writeInt32(13, this.securityLevel);
        }
        if (this.responseFormat != 0) {
            output.writeInt32(15, this.responseFormat);
        }
        if (this.requestFormat != 0) {
            output.writeInt32(17, this.requestFormat);
        }
        if (this.streamType != null && !this.streamType.equals("")) {
            output.writeString(18, this.streamType);
        }
        if (this.securityLabel != null && !this.securityLabel.equals("")) {
            output.writeString(19, this.securityLabel);
        }
        if (this.clientStreaming) {
            output.writeBool(20, this.clientStreaming);
        }
        if (this.serverStreaming) {
            output.writeBool(21, this.serverStreaming);
        }
        if (this.legacyStreamType != null && !this.legacyStreamType.equals("")) {
            output.writeString(22, this.legacyStreamType);
        }
        if (this.legacyResultType != null && !this.legacyResultType.equals("")) {
            output.writeString(23, this.legacyResultType);
        }
        if (this.legacyClientInitialTokens != -1) {
            output.writeInt64(24, this.legacyClientInitialTokens);
        }
        if (this.legacyServerInitialTokens != -1) {
            output.writeInt64(25, this.legacyServerInitialTokens);
        }
        if (this.endUserCredsRequested) {
            output.writeBool(26, this.endUserCredsRequested);
        }
        if (this.logLevel != 2) {
            output.writeInt32(27, this.logLevel);
        }
        if (this.legacyTokenUnit != 1) {
            output.writeInt32(28, this.legacyTokenUnit);
        }
        if (this.goLegacyChannelApi) {
            output.writeBool(29, this.goLegacyChannelApi);
        }
        if (this.deprecated) {
            output.writeBool(33, this.deprecated);
        }
        if (this.idempotencyLevel != 0) {
            output.writeInt32(34, this.idempotencyLevel);
        }
        if (this.uninterpretedOption != null && this.uninterpretedOption.length > 0) {
            for (int i = 0; i < this.uninterpretedOption.length; i++) {
                DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption = this.uninterpretedOption[i];
                if (descriptorProtos$UninterpretedOption != null) {
                    output.writeMessage(999, descriptorProtos$UninterpretedOption);
                }
            }
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.protocol != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.protocol);
        }
        if (Double.doubleToLongBits(this.deadline) != Double.doubleToLongBits(-1.0d)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(8, this.deadline);
        }
        if (this.duplicateSuppression) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(9, this.duplicateSuppression);
        }
        if (this.failFast) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(10, this.failFast);
        }
        if (this.clientLogging != 256) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(11, this.clientLogging);
        }
        if (this.serverLogging != 256) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(12, this.serverLogging);
        }
        if (this.securityLevel != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(13, this.securityLevel);
        }
        if (this.responseFormat != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(15, this.responseFormat);
        }
        if (this.requestFormat != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(17, this.requestFormat);
        }
        if (this.streamType != null && !this.streamType.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(18, this.streamType);
        }
        if (this.securityLabel != null && !this.securityLabel.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.securityLabel);
        }
        if (this.clientStreaming) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(20, this.clientStreaming);
        }
        if (this.serverStreaming) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(21, this.serverStreaming);
        }
        if (this.legacyStreamType != null && !this.legacyStreamType.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(22, this.legacyStreamType);
        }
        if (this.legacyResultType != null && !this.legacyResultType.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(23, this.legacyResultType);
        }
        if (this.legacyClientInitialTokens != -1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(24, this.legacyClientInitialTokens);
        }
        if (this.legacyServerInitialTokens != -1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(25, this.legacyServerInitialTokens);
        }
        if (this.endUserCredsRequested) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(26, this.endUserCredsRequested);
        }
        if (this.logLevel != 2) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(27, this.logLevel);
        }
        if (this.legacyTokenUnit != 1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(28, this.legacyTokenUnit);
        }
        if (this.goLegacyChannelApi) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(29, this.goLegacyChannelApi);
        }
        if (this.deprecated) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(33, this.deprecated);
        }
        if (this.idempotencyLevel != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(34, this.idempotencyLevel);
        }
        if (this.uninterpretedOption != null && this.uninterpretedOption.length > 0) {
            for (int i = 0; i < this.uninterpretedOption.length; i++) {
                DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption = this.uninterpretedOption[i];
                if (descriptorProtos$UninterpretedOption != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(999, descriptorProtos$UninterpretedOption);
                }
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$MethodOptions mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 56:
                    int position = input.getPosition();
                    try {
                        this.protocol = checkProtocolOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused) {
                        input.rewindToPosition(position);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 65:
                    this.deadline = input.readDouble();
                    break;
                case 72:
                    this.duplicateSuppression = input.readBool();
                    break;
                case 80:
                    this.failFast = input.readBool();
                    break;
                case 88:
                    this.clientLogging = input.readSInt32();
                    break;
                case 96:
                    this.serverLogging = input.readSInt32();
                    break;
                case 104:
                    int position2 = input.getPosition();
                    try {
                        this.securityLevel = checkSecurityLevelOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused2) {
                        input.rewindToPosition(position2);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 120:
                    int position3 = input.getPosition();
                    try {
                        this.responseFormat = checkFormatOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused3) {
                        input.rewindToPosition(position3);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 136:
                    int position4 = input.getPosition();
                    try {
                        this.requestFormat = checkFormatOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused4) {
                        input.rewindToPosition(position4);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 146:
                    this.streamType = input.readString();
                    break;
                case 154:
                    this.securityLabel = input.readString();
                    break;
                case 160:
                    this.clientStreaming = input.readBool();
                    break;
                case 168:
                    this.serverStreaming = input.readBool();
                    break;
                case 178:
                    this.legacyStreamType = input.readString();
                    break;
                case 186:
                    this.legacyResultType = input.readString();
                    break;
                case 192:
                    this.legacyClientInitialTokens = input.readInt64();
                    break;
                case 200:
                    this.legacyServerInitialTokens = input.readInt64();
                    break;
                case 208:
                    this.endUserCredsRequested = input.readBool();
                    break;
                case 216:
                    int position5 = input.getPosition();
                    try {
                        this.logLevel = checkLogLevelOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused5) {
                        input.rewindToPosition(position5);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 224:
                    int position6 = input.getPosition();
                    try {
                        this.legacyTokenUnit = checkTokenUnitOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused6) {
                        input.rewindToPosition(position6);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 232:
                    this.goLegacyChannelApi = input.readBool();
                    break;
                case 264:
                    this.deprecated = input.readBool();
                    break;
                case 272:
                    int position7 = input.getPosition();
                    try {
                        this.idempotencyLevel = checkIdempotencyLevelOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused7) {
                        input.rewindToPosition(position7);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 7994:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 7994);
                    int length = this.uninterpretedOption == null ? 0 : this.uninterpretedOption.length;
                    DescriptorProtos$UninterpretedOption[] descriptorProtos$UninterpretedOptionArr = new DescriptorProtos$UninterpretedOption[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.uninterpretedOption, 0, descriptorProtos$UninterpretedOptionArr, 0, length);
                    }
                    while (length < descriptorProtos$UninterpretedOptionArr.length - 1) {
                        descriptorProtos$UninterpretedOptionArr[length] = new DescriptorProtos$UninterpretedOption();
                        input.readMessage(descriptorProtos$UninterpretedOptionArr[length]);
                        input.readTag();
                        length++;
                    }
                    descriptorProtos$UninterpretedOptionArr[length] = new DescriptorProtos$UninterpretedOption();
                    input.readMessage(descriptorProtos$UninterpretedOptionArr[length]);
                    this.uninterpretedOption = descriptorProtos$UninterpretedOptionArr;
                    break;
                default:
                    if (!super.storeUnknownField(input, tag)) {
                        return this;
                    }
                    break;
                    break;
            }
        }
    }

    public static DescriptorProtos$MethodOptions parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$MethodOptions) MessageNano.mergeFrom(new DescriptorProtos$MethodOptions(), data);
    }

    public static DescriptorProtos$MethodOptions parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$MethodOptions().mergeFrom(input);
    }
}
