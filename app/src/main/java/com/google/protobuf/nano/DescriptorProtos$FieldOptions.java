package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$FieldOptions extends ExtendableMessageNano<DescriptorProtos$FieldOptions> {
    private static volatile DescriptorProtos$FieldOptions[] _emptyArray;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldOptions$CType.class)
    public int ctype;
    public boolean deprecated;
    public boolean deprecatedRawMessage;
    public boolean enforceUtf8;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldOptions$JSType.class)
    public int jstype;
    public boolean lazy;
    public boolean packed;
    public DescriptorProtos$UninterpretedOption[] uninterpretedOption;
    public DescriptorProtos$FieldOptions$UpgradedOption[] upgradedOption;
    public boolean weak;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldOptions$CType.class)
    public static int checkCTypeOrThrow(int value) {
        if (value >= 0 && value <= 2) {
            return value;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append(value);
        sb.append(" is not a valid enum CType");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldOptions$CType.class)
    public static int[] checkCTypeOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkCTypeOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldOptions$JSType.class)
    public static int checkJSTypeOrThrow(int value) {
        if (value >= 0 && value <= 2) {
            return value;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append(value);
        sb.append(" is not a valid enum JSType");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldOptions$JSType.class)
    public static int[] checkJSTypeOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkJSTypeOrThrow(i);
        }
        return iArr;
    }

    public static DescriptorProtos$FieldOptions[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$FieldOptions[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$FieldOptions() {
        clear();
    }

    public DescriptorProtos$FieldOptions clear() {
        this.ctype = 0;
        this.packed = false;
        this.jstype = 0;
        this.lazy = false;
        this.deprecated = false;
        this.weak = false;
        this.upgradedOption = DescriptorProtos$FieldOptions$UpgradedOption.emptyArray();
        this.deprecatedRawMessage = false;
        this.enforceUtf8 = true;
        this.uninterpretedOption = DescriptorProtos$UninterpretedOption.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.ctype != 0) {
            output.writeInt32(1, this.ctype);
        }
        if (this.packed) {
            output.writeBool(2, this.packed);
        }
        if (this.deprecated) {
            output.writeBool(3, this.deprecated);
        }
        if (this.lazy) {
            output.writeBool(5, this.lazy);
        }
        if (this.jstype != 0) {
            output.writeInt32(6, this.jstype);
        }
        if (this.weak) {
            output.writeBool(10, this.weak);
        }
        if (this.upgradedOption != null && this.upgradedOption.length > 0) {
            for (int i = 0; i < this.upgradedOption.length; i++) {
                DescriptorProtos$FieldOptions$UpgradedOption descriptorProtos$FieldOptions$UpgradedOption = this.upgradedOption[i];
                if (descriptorProtos$FieldOptions$UpgradedOption != null) {
                    output.writeMessage(11, descriptorProtos$FieldOptions$UpgradedOption);
                }
            }
        }
        if (this.deprecatedRawMessage) {
            output.writeBool(12, this.deprecatedRawMessage);
        }
        if (!this.enforceUtf8) {
            output.writeBool(13, this.enforceUtf8);
        }
        if (this.uninterpretedOption != null && this.uninterpretedOption.length > 0) {
            for (int i2 = 0; i2 < this.uninterpretedOption.length; i2++) {
                DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption = this.uninterpretedOption[i2];
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
        if (this.ctype != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.ctype);
        }
        if (this.packed) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(2, this.packed);
        }
        if (this.deprecated) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, this.deprecated);
        }
        if (this.lazy) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, this.lazy);
        }
        if (this.jstype != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(6, this.jstype);
        }
        if (this.weak) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(10, this.weak);
        }
        if (this.upgradedOption != null && this.upgradedOption.length > 0) {
            int iComputeMessageSize = iComputeSerializedSize;
            for (int i = 0; i < this.upgradedOption.length; i++) {
                DescriptorProtos$FieldOptions$UpgradedOption descriptorProtos$FieldOptions$UpgradedOption = this.upgradedOption[i];
                if (descriptorProtos$FieldOptions$UpgradedOption != null) {
                    iComputeMessageSize += CodedOutputByteBufferNano.computeMessageSize(11, descriptorProtos$FieldOptions$UpgradedOption);
                }
            }
            iComputeSerializedSize = iComputeMessageSize;
        }
        if (this.deprecatedRawMessage) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(12, this.deprecatedRawMessage);
        }
        if (!this.enforceUtf8) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(13, this.enforceUtf8);
        }
        if (this.uninterpretedOption != null && this.uninterpretedOption.length > 0) {
            for (int i2 = 0; i2 < this.uninterpretedOption.length; i2++) {
                DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption = this.uninterpretedOption[i2];
                if (descriptorProtos$UninterpretedOption != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(999, descriptorProtos$UninterpretedOption);
                }
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$FieldOptions mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 8:
                    int position = input.getPosition();
                    try {
                        this.ctype = checkCTypeOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused) {
                        input.rewindToPosition(position);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 16:
                    this.packed = input.readBool();
                    break;
                case 24:
                    this.deprecated = input.readBool();
                    break;
                case 40:
                    this.lazy = input.readBool();
                    break;
                case 48:
                    int position2 = input.getPosition();
                    try {
                        this.jstype = checkJSTypeOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused2) {
                        input.rewindToPosition(position2);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 80:
                    this.weak = input.readBool();
                    break;
                case 90:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 90);
                    int length = this.upgradedOption == null ? 0 : this.upgradedOption.length;
                    DescriptorProtos$FieldOptions$UpgradedOption[] descriptorProtos$FieldOptions$UpgradedOptionArr = new DescriptorProtos$FieldOptions$UpgradedOption[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.upgradedOption, 0, descriptorProtos$FieldOptions$UpgradedOptionArr, 0, length);
                    }
                    while (length < descriptorProtos$FieldOptions$UpgradedOptionArr.length - 1) {
                        descriptorProtos$FieldOptions$UpgradedOptionArr[length] = new DescriptorProtos$FieldOptions$UpgradedOption();
                        input.readMessage(descriptorProtos$FieldOptions$UpgradedOptionArr[length]);
                        input.readTag();
                        length++;
                    }
                    descriptorProtos$FieldOptions$UpgradedOptionArr[length] = new DescriptorProtos$FieldOptions$UpgradedOption();
                    input.readMessage(descriptorProtos$FieldOptions$UpgradedOptionArr[length]);
                    this.upgradedOption = descriptorProtos$FieldOptions$UpgradedOptionArr;
                    break;
                case 96:
                    this.deprecatedRawMessage = input.readBool();
                    break;
                case 104:
                    this.enforceUtf8 = input.readBool();
                    break;
                case 7994:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(input, 7994);
                    int length2 = this.uninterpretedOption == null ? 0 : this.uninterpretedOption.length;
                    DescriptorProtos$UninterpretedOption[] descriptorProtos$UninterpretedOptionArr = new DescriptorProtos$UninterpretedOption[repeatedFieldArrayLength2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.uninterpretedOption, 0, descriptorProtos$UninterpretedOptionArr, 0, length2);
                    }
                    while (length2 < descriptorProtos$UninterpretedOptionArr.length - 1) {
                        descriptorProtos$UninterpretedOptionArr[length2] = new DescriptorProtos$UninterpretedOption();
                        input.readMessage(descriptorProtos$UninterpretedOptionArr[length2]);
                        input.readTag();
                        length2++;
                    }
                    descriptorProtos$UninterpretedOptionArr[length2] = new DescriptorProtos$UninterpretedOption();
                    input.readMessage(descriptorProtos$UninterpretedOptionArr[length2]);
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

    public static DescriptorProtos$FieldOptions parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$FieldOptions) MessageNano.mergeFrom(new DescriptorProtos$FieldOptions(), data);
    }

    public static DescriptorProtos$FieldOptions parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$FieldOptions().mergeFrom(input);
    }
}
