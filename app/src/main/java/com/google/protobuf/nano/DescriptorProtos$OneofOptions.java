package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$OneofOptions extends ExtendableMessageNano<DescriptorProtos$OneofOptions> {
    private static volatile DescriptorProtos$OneofOptions[] _emptyArray;
    public DescriptorProtos$UninterpretedOption[] uninterpretedOption;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$OneofOptions[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$OneofOptions[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$OneofOptions() {
        clear();
    }

    public DescriptorProtos$OneofOptions clear() {
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
    public DescriptorProtos$OneofOptions mergeFrom(CodedInputByteBufferNano input) throws IOException {
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

    public static DescriptorProtos$OneofOptions parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$OneofOptions) MessageNano.mergeFrom(new DescriptorProtos$OneofOptions(), data);
    }

    public static DescriptorProtos$OneofOptions parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$OneofOptions().mergeFrom(input);
    }
}
