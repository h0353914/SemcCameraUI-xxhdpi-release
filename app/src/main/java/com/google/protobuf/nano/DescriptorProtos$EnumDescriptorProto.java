package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$EnumDescriptorProto extends ExtendableMessageNano<DescriptorProtos$EnumDescriptorProto> {
    private static volatile DescriptorProtos$EnumDescriptorProto[] _emptyArray;
    public String name;
    public DescriptorProtos$EnumOptions options;
    public String[] reservedName;
    public DescriptorProtos$EnumDescriptorProto$EnumReservedRange[] reservedRange;
    public DescriptorProtos$EnumValueDescriptorProto[] value;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$EnumDescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$EnumDescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$EnumDescriptorProto() {
        clear();
    }

    public DescriptorProtos$EnumDescriptorProto clear() {
        this.name = "";
        this.value = DescriptorProtos$EnumValueDescriptorProto.emptyArray();
        this.options = null;
        this.reservedRange = DescriptorProtos$EnumDescriptorProto$EnumReservedRange.emptyArray();
        this.reservedName = WireFormatNano.EMPTY_STRING_ARRAY;
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            output.writeString(1, this.name);
        }
        if (this.value != null && this.value.length > 0) {
            for (int i = 0; i < this.value.length; i++) {
                DescriptorProtos$EnumValueDescriptorProto descriptorProtos$EnumValueDescriptorProto = this.value[i];
                if (descriptorProtos$EnumValueDescriptorProto != null) {
                    output.writeMessage(2, descriptorProtos$EnumValueDescriptorProto);
                }
            }
        }
        if (this.options != null) {
            output.writeMessage(3, this.options);
        }
        if (this.reservedRange != null && this.reservedRange.length > 0) {
            for (int i2 = 0; i2 < this.reservedRange.length; i2++) {
                DescriptorProtos$EnumDescriptorProto$EnumReservedRange descriptorProtos$EnumDescriptorProto$EnumReservedRange = this.reservedRange[i2];
                if (descriptorProtos$EnumDescriptorProto$EnumReservedRange != null) {
                    output.writeMessage(4, descriptorProtos$EnumDescriptorProto$EnumReservedRange);
                }
            }
        }
        if (this.reservedName != null && this.reservedName.length > 0) {
            for (int i3 = 0; i3 < this.reservedName.length; i3++) {
                String str = this.reservedName[i3];
                if (str != null) {
                    output.writeString(5, str);
                }
            }
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        if (this.value != null && this.value.length > 0) {
            int iComputeMessageSize = iComputeSerializedSize;
            for (int i = 0; i < this.value.length; i++) {
                DescriptorProtos$EnumValueDescriptorProto descriptorProtos$EnumValueDescriptorProto = this.value[i];
                if (descriptorProtos$EnumValueDescriptorProto != null) {
                    iComputeMessageSize += CodedOutputByteBufferNano.computeMessageSize(2, descriptorProtos$EnumValueDescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize;
        }
        if (this.options != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, this.options);
        }
        if (this.reservedRange != null && this.reservedRange.length > 0) {
            int iComputeMessageSize2 = iComputeSerializedSize;
            for (int i2 = 0; i2 < this.reservedRange.length; i2++) {
                DescriptorProtos$EnumDescriptorProto$EnumReservedRange descriptorProtos$EnumDescriptorProto$EnumReservedRange = this.reservedRange[i2];
                if (descriptorProtos$EnumDescriptorProto$EnumReservedRange != null) {
                    iComputeMessageSize2 += CodedOutputByteBufferNano.computeMessageSize(4, descriptorProtos$EnumDescriptorProto$EnumReservedRange);
                }
            }
            iComputeSerializedSize = iComputeMessageSize2;
        }
        if (this.reservedName == null || this.reservedName.length <= 0) {
            return iComputeSerializedSize;
        }
        int iComputeStringSizeNoTag = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.reservedName.length; i4++) {
            String str = this.reservedName[i4];
            if (str != null) {
                i3++;
                iComputeStringSizeNoTag += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
            }
        }
        return iComputeSerializedSize + iComputeStringSizeNoTag + (1 * i3);
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$EnumDescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.name = input.readString();
            } else if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 18);
                int length = this.value == null ? 0 : this.value.length;
                DescriptorProtos$EnumValueDescriptorProto[] descriptorProtos$EnumValueDescriptorProtoArr = new DescriptorProtos$EnumValueDescriptorProto[repeatedFieldArrayLength + length];
                if (length != 0) {
                    System.arraycopy(this.value, 0, descriptorProtos$EnumValueDescriptorProtoArr, 0, length);
                }
                while (length < descriptorProtos$EnumValueDescriptorProtoArr.length - 1) {
                    descriptorProtos$EnumValueDescriptorProtoArr[length] = new DescriptorProtos$EnumValueDescriptorProto();
                    input.readMessage(descriptorProtos$EnumValueDescriptorProtoArr[length]);
                    input.readTag();
                    length++;
                }
                descriptorProtos$EnumValueDescriptorProtoArr[length] = new DescriptorProtos$EnumValueDescriptorProto();
                input.readMessage(descriptorProtos$EnumValueDescriptorProtoArr[length]);
                this.value = descriptorProtos$EnumValueDescriptorProtoArr;
            } else if (tag == 26) {
                if (this.options == null) {
                    this.options = new DescriptorProtos$EnumOptions();
                }
                input.readMessage(this.options);
            } else if (tag == 34) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(input, 34);
                int length2 = this.reservedRange == null ? 0 : this.reservedRange.length;
                DescriptorProtos$EnumDescriptorProto$EnumReservedRange[] descriptorProtos$EnumDescriptorProto$EnumReservedRangeArr = new DescriptorProtos$EnumDescriptorProto$EnumReservedRange[repeatedFieldArrayLength2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.reservedRange, 0, descriptorProtos$EnumDescriptorProto$EnumReservedRangeArr, 0, length2);
                }
                while (length2 < descriptorProtos$EnumDescriptorProto$EnumReservedRangeArr.length - 1) {
                    descriptorProtos$EnumDescriptorProto$EnumReservedRangeArr[length2] = new DescriptorProtos$EnumDescriptorProto$EnumReservedRange();
                    input.readMessage(descriptorProtos$EnumDescriptorProto$EnumReservedRangeArr[length2]);
                    input.readTag();
                    length2++;
                }
                descriptorProtos$EnumDescriptorProto$EnumReservedRangeArr[length2] = new DescriptorProtos$EnumDescriptorProto$EnumReservedRange();
                input.readMessage(descriptorProtos$EnumDescriptorProto$EnumReservedRangeArr[length2]);
                this.reservedRange = descriptorProtos$EnumDescriptorProto$EnumReservedRangeArr;
            } else if (tag != 42) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(input, 42);
                int length3 = this.reservedName == null ? 0 : this.reservedName.length;
                String[] strArr = new String[repeatedFieldArrayLength3 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.reservedName, 0, strArr, 0, length3);
                }
                while (length3 < strArr.length - 1) {
                    strArr[length3] = input.readString();
                    input.readTag();
                    length3++;
                }
                strArr[length3] = input.readString();
                this.reservedName = strArr;
            }
        }
    }

    public static DescriptorProtos$EnumDescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$EnumDescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$EnumDescriptorProto(), data);
    }

    public static DescriptorProtos$EnumDescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$EnumDescriptorProto().mergeFrom(input);
    }
}
