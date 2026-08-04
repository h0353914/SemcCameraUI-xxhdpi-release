package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$EnumOptions extends ExtendableMessageNano<DescriptorProtos$EnumOptions> {
    private static volatile DescriptorProtos$EnumOptions[] _emptyArray;
    public boolean allowAlias;
    public boolean deprecated;
    public String proto1Name;
    public DescriptorProtos$UninterpretedOption[] uninterpretedOption;
    public static DescriptorProtos$EnumOptions[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$EnumOptions[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$EnumOptions() {
        clear();
    }

    public DescriptorProtos$EnumOptions clear() {
        this.proto1Name = "";
        this.allowAlias = false;
        this.deprecated = false;
        this.uninterpretedOption = DescriptorProtos$UninterpretedOption.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.proto1Name != null && !this.proto1Name.equals("")) {
            output.writeString(1, this.proto1Name);
        }
        if (this.allowAlias) {
            output.writeBool(2, this.allowAlias);
        }
        if (this.deprecated) {
            output.writeBool(3, this.deprecated);
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
        if (this.proto1Name != null && !this.proto1Name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.proto1Name);
        }
        if (this.allowAlias) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(2, this.allowAlias);
        }
        if (this.deprecated) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, this.deprecated);
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
    public DescriptorProtos$EnumOptions mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.proto1Name = input.readString();
            } else if (tag == 16) {
                this.allowAlias = input.readBool();
            } else if (tag == 24) {
                this.deprecated = input.readBool();
            } else if (tag != 7994) {
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

    public static DescriptorProtos$EnumOptions parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$EnumOptions) MessageNano.mergeFrom(new DescriptorProtos$EnumOptions(), data);
    }

    public static DescriptorProtos$EnumOptions parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$EnumOptions().mergeFrom(input);
    }
}
