package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$MessageOptions extends ExtendableMessageNano<DescriptorProtos$MessageOptions> {
    private static volatile DescriptorProtos$MessageOptions[] _emptyArray;
    public boolean deprecated;
    public String[] experimentalJavaBuilderInterface;
    public String[] experimentalJavaInterfaceExtends;
    public String[] experimentalJavaMessageInterface;
    public boolean mapEntry;
    public boolean messageSetWireFormat;
    public boolean noStandardDescriptorAccessor;
    public DescriptorProtos$UninterpretedOption[] uninterpretedOption;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$MessageOptions[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$MessageOptions[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$MessageOptions() {
        clear();
    }

    public DescriptorProtos$MessageOptions clear() {
        this.experimentalJavaMessageInterface = WireFormatNano.EMPTY_STRING_ARRAY;
        this.experimentalJavaBuilderInterface = WireFormatNano.EMPTY_STRING_ARRAY;
        this.experimentalJavaInterfaceExtends = WireFormatNano.EMPTY_STRING_ARRAY;
        this.messageSetWireFormat = false;
        this.noStandardDescriptorAccessor = false;
        this.deprecated = false;
        this.mapEntry = false;
        this.uninterpretedOption = DescriptorProtos$UninterpretedOption.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.messageSetWireFormat) {
            output.writeBool(1, this.messageSetWireFormat);
        }
        if (this.noStandardDescriptorAccessor) {
            output.writeBool(2, this.noStandardDescriptorAccessor);
        }
        if (this.deprecated) {
            output.writeBool(3, this.deprecated);
        }
        if (this.experimentalJavaMessageInterface != null && this.experimentalJavaMessageInterface.length > 0) {
            for (int i = 0; i < this.experimentalJavaMessageInterface.length; i++) {
                String str = this.experimentalJavaMessageInterface[i];
                if (str != null) {
                    output.writeString(4, str);
                }
            }
        }
        if (this.experimentalJavaBuilderInterface != null && this.experimentalJavaBuilderInterface.length > 0) {
            for (int i2 = 0; i2 < this.experimentalJavaBuilderInterface.length; i2++) {
                String str2 = this.experimentalJavaBuilderInterface[i2];
                if (str2 != null) {
                    output.writeString(5, str2);
                }
            }
        }
        if (this.experimentalJavaInterfaceExtends != null && this.experimentalJavaInterfaceExtends.length > 0) {
            for (int i3 = 0; i3 < this.experimentalJavaInterfaceExtends.length; i3++) {
                String str3 = this.experimentalJavaInterfaceExtends[i3];
                if (str3 != null) {
                    output.writeString(6, str3);
                }
            }
        }
        if (this.mapEntry) {
            output.writeBool(7, this.mapEntry);
        }
        if (this.uninterpretedOption != null && this.uninterpretedOption.length > 0) {
            for (int i4 = 0; i4 < this.uninterpretedOption.length; i4++) {
                DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption = this.uninterpretedOption[i4];
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
        if (this.messageSetWireFormat) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, this.messageSetWireFormat);
        }
        if (this.noStandardDescriptorAccessor) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(2, this.noStandardDescriptorAccessor);
        }
        if (this.deprecated) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(3, this.deprecated);
        }
        if (this.experimentalJavaMessageInterface != null && this.experimentalJavaMessageInterface.length > 0) {
            int iComputeStringSizeNoTag = 0;
            int i = 0;
            for (int i2 = 0; i2 < this.experimentalJavaMessageInterface.length; i2++) {
                String str = this.experimentalJavaMessageInterface[i2];
                if (str != null) {
                    i++;
                    iComputeStringSizeNoTag += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                }
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeStringSizeNoTag + (i * 1);
        }
        if (this.experimentalJavaBuilderInterface != null && this.experimentalJavaBuilderInterface.length > 0) {
            int iComputeStringSizeNoTag2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.experimentalJavaBuilderInterface.length; i4++) {
                String str2 = this.experimentalJavaBuilderInterface[i4];
                if (str2 != null) {
                    i3++;
                    iComputeStringSizeNoTag2 += CodedOutputByteBufferNano.computeStringSizeNoTag(str2);
                }
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeStringSizeNoTag2 + (i3 * 1);
        }
        if (this.experimentalJavaInterfaceExtends != null && this.experimentalJavaInterfaceExtends.length > 0) {
            int iComputeStringSizeNoTag3 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < this.experimentalJavaInterfaceExtends.length; i6++) {
                String str3 = this.experimentalJavaInterfaceExtends[i6];
                if (str3 != null) {
                    i5++;
                    iComputeStringSizeNoTag3 += CodedOutputByteBufferNano.computeStringSizeNoTag(str3);
                }
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeStringSizeNoTag3 + (1 * i5);
        }
        if (this.mapEntry) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(7, this.mapEntry);
        }
        if (this.uninterpretedOption != null && this.uninterpretedOption.length > 0) {
            for (int i7 = 0; i7 < this.uninterpretedOption.length; i7++) {
                DescriptorProtos$UninterpretedOption descriptorProtos$UninterpretedOption = this.uninterpretedOption[i7];
                if (descriptorProtos$UninterpretedOption != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(999, descriptorProtos$UninterpretedOption);
                }
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$MessageOptions mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                this.messageSetWireFormat = input.readBool();
            } else if (tag == 16) {
                this.noStandardDescriptorAccessor = input.readBool();
            } else if (tag == 24) {
                this.deprecated = input.readBool();
            } else if (tag == 34) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 34);
                int length = this.experimentalJavaMessageInterface == null ? 0 : this.experimentalJavaMessageInterface.length;
                String[] strArr = new String[repeatedFieldArrayLength + length];
                if (length != 0) {
                    System.arraycopy(this.experimentalJavaMessageInterface, 0, strArr, 0, length);
                }
                while (length < strArr.length - 1) {
                    strArr[length] = input.readString();
                    input.readTag();
                    length++;
                }
                strArr[length] = input.readString();
                this.experimentalJavaMessageInterface = strArr;
            } else if (tag == 42) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(input, 42);
                int length2 = this.experimentalJavaBuilderInterface == null ? 0 : this.experimentalJavaBuilderInterface.length;
                String[] strArr2 = new String[repeatedFieldArrayLength2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.experimentalJavaBuilderInterface, 0, strArr2, 0, length2);
                }
                while (length2 < strArr2.length - 1) {
                    strArr2[length2] = input.readString();
                    input.readTag();
                    length2++;
                }
                strArr2[length2] = input.readString();
                this.experimentalJavaBuilderInterface = strArr2;
            } else if (tag == 50) {
                int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(input, 50);
                int length3 = this.experimentalJavaInterfaceExtends == null ? 0 : this.experimentalJavaInterfaceExtends.length;
                String[] strArr3 = new String[repeatedFieldArrayLength3 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.experimentalJavaInterfaceExtends, 0, strArr3, 0, length3);
                }
                while (length3 < strArr3.length - 1) {
                    strArr3[length3] = input.readString();
                    input.readTag();
                    length3++;
                }
                strArr3[length3] = input.readString();
                this.experimentalJavaInterfaceExtends = strArr3;
            } else if (tag == 56) {
                this.mapEntry = input.readBool();
            } else if (tag != 7994) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(input, 7994);
                int length4 = this.uninterpretedOption == null ? 0 : this.uninterpretedOption.length;
                DescriptorProtos$UninterpretedOption[] descriptorProtos$UninterpretedOptionArr = new DescriptorProtos$UninterpretedOption[repeatedFieldArrayLength4 + length4];
                if (length4 != 0) {
                    System.arraycopy(this.uninterpretedOption, 0, descriptorProtos$UninterpretedOptionArr, 0, length4);
                }
                while (length4 < descriptorProtos$UninterpretedOptionArr.length - 1) {
                    descriptorProtos$UninterpretedOptionArr[length4] = new DescriptorProtos$UninterpretedOption();
                    input.readMessage(descriptorProtos$UninterpretedOptionArr[length4]);
                    input.readTag();
                    length4++;
                }
                descriptorProtos$UninterpretedOptionArr[length4] = new DescriptorProtos$UninterpretedOption();
                input.readMessage(descriptorProtos$UninterpretedOptionArr[length4]);
                this.uninterpretedOption = descriptorProtos$UninterpretedOptionArr;
            }
        }
    }

    public static DescriptorProtos$MessageOptions parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$MessageOptions) MessageNano.mergeFrom(new DescriptorProtos$MessageOptions(), data);
    }

    public static DescriptorProtos$MessageOptions parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$MessageOptions().mergeFrom(input);
    }
}
