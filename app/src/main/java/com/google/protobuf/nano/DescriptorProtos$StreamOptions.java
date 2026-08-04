package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$StreamOptions extends ExtendableMessageNano<DescriptorProtos$StreamOptions> {
    private static volatile DescriptorProtos$StreamOptions[] _emptyArray;
    public long clientInitialTokens;
    public int clientLogging;
    public double deadline;
    public boolean deprecated;
    public boolean endUserCredsRequested;
    public boolean failFast;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$LogLevel.class)
    public int logLevel;
    public String securityLabel;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$MethodOptions$SecurityLevel.class)
    public int securityLevel;
    public long serverInitialTokens;
    public int serverLogging;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$StreamOptions$TokenUnit.class)
    public int tokenUnit;
    public DescriptorProtos$UninterpretedOption[] uninterpretedOption;
    @NanoEnumValue(legacy = false, value = DescriptorProtos$StreamOptions$TokenUnit.class)
    public static int checkTokenUnitOrThrow(int value) {
        if (value >= 0 && value <= 1) {
            return value;
        }
        StringBuilder sb = new StringBuilder(41);
        sb.append(value);
        sb.append(" is not a valid enum TokenUnit");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$StreamOptions$TokenUnit.class)
    public static int[] checkTokenUnitOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkTokenUnitOrThrow(i);
        }
        return iArr;
    }

    public static DescriptorProtos$StreamOptions[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$StreamOptions[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$StreamOptions() {
        clear();
    }

    public DescriptorProtos$StreamOptions clear() {
        this.clientInitialTokens = -1L;
        this.serverInitialTokens = -1L;
        this.tokenUnit = 0;
        this.securityLevel = 0;
        this.securityLabel = "";
        this.clientLogging = 256;
        this.serverLogging = 256;
        this.deadline = -1.0d;
        this.failFast = false;
        this.endUserCredsRequested = false;
        this.logLevel = 2;
        this.deprecated = false;
        this.uninterpretedOption = DescriptorProtos$UninterpretedOption.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.clientInitialTokens != -1) {
            output.writeInt64(1, this.clientInitialTokens);
        }
        if (this.serverInitialTokens != -1) {
            output.writeInt64(2, this.serverInitialTokens);
        }
        if (this.tokenUnit != 0) {
            output.writeInt32(3, this.tokenUnit);
        }
        if (this.securityLevel != 0) {
            output.writeInt32(4, this.securityLevel);
        }
        if (this.securityLabel != null && !this.securityLabel.equals("")) {
            output.writeString(5, this.securityLabel);
        }
        if (this.clientLogging != 256) {
            output.writeInt32(6, this.clientLogging);
        }
        if (this.serverLogging != 256) {
            output.writeInt32(7, this.serverLogging);
        }
        if (Double.doubleToLongBits(this.deadline) != Double.doubleToLongBits(-1.0d)) {
            output.writeDouble(8, this.deadline);
        }
        if (this.failFast) {
            output.writeBool(9, this.failFast);
        }
        if (this.endUserCredsRequested) {
            output.writeBool(10, this.endUserCredsRequested);
        }
        if (this.logLevel != 2) {
            output.writeInt32(11, this.logLevel);
        }
        if (this.deprecated) {
            output.writeBool(33, this.deprecated);
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
        if (this.clientInitialTokens != -1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, this.clientInitialTokens);
        }
        if (this.serverInitialTokens != -1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, this.serverInitialTokens);
        }
        if (this.tokenUnit != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.tokenUnit);
        }
        if (this.securityLevel != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.securityLevel);
        }
        if (this.securityLabel != null && !this.securityLabel.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(5, this.securityLabel);
        }
        if (this.clientLogging != 256) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.clientLogging);
        }
        if (this.serverLogging != 256) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, this.serverLogging);
        }
        if (Double.doubleToLongBits(this.deadline) != Double.doubleToLongBits(-1.0d)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(8, this.deadline);
        }
        if (this.failFast) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(9, this.failFast);
        }
        if (this.endUserCredsRequested) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(10, this.endUserCredsRequested);
        }
        if (this.logLevel != 2) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(11, this.logLevel);
        }
        if (this.deprecated) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(33, this.deprecated);
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
    public DescriptorProtos$StreamOptions mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 8:
                    this.clientInitialTokens = input.readInt64();
                    break;
                case 16:
                    this.serverInitialTokens = input.readInt64();
                    break;
                case 24:
                    int position = input.getPosition();
                    try {
                        this.tokenUnit = checkTokenUnitOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused) {
                        input.rewindToPosition(position);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 32:
                    int position2 = input.getPosition();
                    try {
                        this.securityLevel = DescriptorProtos$MethodOptions.checkSecurityLevelOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused2) {
                        input.rewindToPosition(position2);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 42:
                    this.securityLabel = input.readString();
                    break;
                case 48:
                    this.clientLogging = input.readInt32();
                    break;
                case 56:
                    this.serverLogging = input.readInt32();
                    break;
                case 65:
                    this.deadline = input.readDouble();
                    break;
                case 72:
                    this.failFast = input.readBool();
                    break;
                case 80:
                    this.endUserCredsRequested = input.readBool();
                    break;
                case 88:
                    int position3 = input.getPosition();
                    try {
                        this.logLevel = DescriptorProtos$MethodOptions.checkLogLevelOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused3) {
                        input.rewindToPosition(position3);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 264:
                    this.deprecated = input.readBool();
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
            }
        }
    }

    public static DescriptorProtos$StreamOptions parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$StreamOptions) MessageNano.mergeFrom(new DescriptorProtos$StreamOptions(), data);
    }

    public static DescriptorProtos$StreamOptions parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$StreamOptions().mergeFrom(input);
    }
}
