package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$ExtensionRangeOptions extends ExtendableMessageNano<DescriptorProtos$ExtensionRangeOptions> {
    private static volatile DescriptorProtos$ExtensionRangeOptions[] _emptyArray;
    public DescriptorProtos$UninterpretedOption[] uninterpretedOption;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$ExtensionRangeOptions[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$ExtensionRangeOptions[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$ExtensionRangeOptions() {
        clear();
    }

    public DescriptorProtos$ExtensionRangeOptions clear() {
        this.uninterpretedOption = DescriptorProtos$UninterpretedOption.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
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
    public DescriptorProtos$ExtensionRangeOptions mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag != 7994) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
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
            }
        }
    }

    public static DescriptorProtos$ExtensionRangeOptions parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$ExtensionRangeOptions) MessageNano.mergeFrom(new DescriptorProtos$ExtensionRangeOptions(), data);
    }

    public static DescriptorProtos$ExtensionRangeOptions parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$ExtensionRangeOptions().mergeFrom(input);
    }
}
