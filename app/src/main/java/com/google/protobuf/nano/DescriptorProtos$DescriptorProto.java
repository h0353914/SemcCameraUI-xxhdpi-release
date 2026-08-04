package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$DescriptorProto extends ExtendableMessageNano<DescriptorProtos$DescriptorProto> {
    private static volatile DescriptorProtos$DescriptorProto[] _emptyArray;
    public DescriptorProtos$EnumDescriptorProto[] enumType;
    public DescriptorProtos$FieldDescriptorProto[] extension;
    public DescriptorProtos$DescriptorProto$ExtensionRange[] extensionRange;
    public DescriptorProtos$FieldDescriptorProto[] field;
    public String name;
    public DescriptorProtos$DescriptorProto[] nestedType;
    public DescriptorProtos$OneofDescriptorProto[] oneofDecl;
    public DescriptorProtos$MessageOptions options;
    public String[] reservedName;
    public DescriptorProtos$DescriptorProto$ReservedRange[] reservedRange;
    public static DescriptorProtos$DescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$DescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$DescriptorProto() {
        clear();
    }

    public DescriptorProtos$DescriptorProto clear() {
        this.name = "";
        this.field = DescriptorProtos$FieldDescriptorProto.emptyArray();
        this.extension = DescriptorProtos$FieldDescriptorProto.emptyArray();
        this.nestedType = emptyArray();
        this.enumType = DescriptorProtos$EnumDescriptorProto.emptyArray();
        this.extensionRange = DescriptorProtos$DescriptorProto$ExtensionRange.emptyArray();
        this.oneofDecl = DescriptorProtos$OneofDescriptorProto.emptyArray();
        this.options = null;
        this.reservedRange = DescriptorProtos$DescriptorProto$ReservedRange.emptyArray();
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
        if (this.field != null && this.field.length > 0) {
            for (int i = 0; i < this.field.length; i++) {
                DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto = this.field[i];
                if (descriptorProtos$FieldDescriptorProto != null) {
                    output.writeMessage(2, descriptorProtos$FieldDescriptorProto);
                }
            }
        }
        if (this.nestedType != null && this.nestedType.length > 0) {
            for (int i2 = 0; i2 < this.nestedType.length; i2++) {
                DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto = this.nestedType[i2];
                if (descriptorProtos$DescriptorProto != null) {
                    output.writeMessage(3, descriptorProtos$DescriptorProto);
                }
            }
        }
        if (this.enumType != null && this.enumType.length > 0) {
            for (int i3 = 0; i3 < this.enumType.length; i3++) {
                DescriptorProtos$EnumDescriptorProto descriptorProtos$EnumDescriptorProto = this.enumType[i3];
                if (descriptorProtos$EnumDescriptorProto != null) {
                    output.writeMessage(4, descriptorProtos$EnumDescriptorProto);
                }
            }
        }
        if (this.extensionRange != null && this.extensionRange.length > 0) {
            for (int i4 = 0; i4 < this.extensionRange.length; i4++) {
                DescriptorProtos$DescriptorProto$ExtensionRange descriptorProtos$DescriptorProto$ExtensionRange = this.extensionRange[i4];
                if (descriptorProtos$DescriptorProto$ExtensionRange != null) {
                    output.writeMessage(5, descriptorProtos$DescriptorProto$ExtensionRange);
                }
            }
        }
        if (this.extension != null && this.extension.length > 0) {
            for (int i5 = 0; i5 < this.extension.length; i5++) {
                DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto2 = this.extension[i5];
                if (descriptorProtos$FieldDescriptorProto2 != null) {
                    output.writeMessage(6, descriptorProtos$FieldDescriptorProto2);
                }
            }
        }
        if (this.options != null) {
            output.writeMessage(7, this.options);
        }
        if (this.oneofDecl != null && this.oneofDecl.length > 0) {
            for (int i6 = 0; i6 < this.oneofDecl.length; i6++) {
                DescriptorProtos$OneofDescriptorProto descriptorProtos$OneofDescriptorProto = this.oneofDecl[i6];
                if (descriptorProtos$OneofDescriptorProto != null) {
                    output.writeMessage(8, descriptorProtos$OneofDescriptorProto);
                }
            }
        }
        if (this.reservedRange != null && this.reservedRange.length > 0) {
            for (int i7 = 0; i7 < this.reservedRange.length; i7++) {
                DescriptorProtos$DescriptorProto$ReservedRange descriptorProtos$DescriptorProto$ReservedRange = this.reservedRange[i7];
                if (descriptorProtos$DescriptorProto$ReservedRange != null) {
                    output.writeMessage(9, descriptorProtos$DescriptorProto$ReservedRange);
                }
            }
        }
        if (this.reservedName != null && this.reservedName.length > 0) {
            for (int i8 = 0; i8 < this.reservedName.length; i8++) {
                String str = this.reservedName[i8];
                if (str != null) {
                    output.writeString(10, str);
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
        if (this.field != null && this.field.length > 0) {
            int iComputeMessageSize = iComputeSerializedSize;
            for (int i = 0; i < this.field.length; i++) {
                DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto = this.field[i];
                if (descriptorProtos$FieldDescriptorProto != null) {
                    iComputeMessageSize += CodedOutputByteBufferNano.computeMessageSize(2, descriptorProtos$FieldDescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize;
        }
        if (this.nestedType != null && this.nestedType.length > 0) {
            int iComputeMessageSize2 = iComputeSerializedSize;
            for (int i2 = 0; i2 < this.nestedType.length; i2++) {
                DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto = this.nestedType[i2];
                if (descriptorProtos$DescriptorProto != null) {
                    iComputeMessageSize2 += CodedOutputByteBufferNano.computeMessageSize(3, descriptorProtos$DescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize2;
        }
        if (this.enumType != null && this.enumType.length > 0) {
            int iComputeMessageSize3 = iComputeSerializedSize;
            for (int i3 = 0; i3 < this.enumType.length; i3++) {
                DescriptorProtos$EnumDescriptorProto descriptorProtos$EnumDescriptorProto = this.enumType[i3];
                if (descriptorProtos$EnumDescriptorProto != null) {
                    iComputeMessageSize3 += CodedOutputByteBufferNano.computeMessageSize(4, descriptorProtos$EnumDescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize3;
        }
        if (this.extensionRange != null && this.extensionRange.length > 0) {
            int iComputeMessageSize4 = iComputeSerializedSize;
            for (int i4 = 0; i4 < this.extensionRange.length; i4++) {
                DescriptorProtos$DescriptorProto$ExtensionRange descriptorProtos$DescriptorProto$ExtensionRange = this.extensionRange[i4];
                if (descriptorProtos$DescriptorProto$ExtensionRange != null) {
                    iComputeMessageSize4 += CodedOutputByteBufferNano.computeMessageSize(5, descriptorProtos$DescriptorProto$ExtensionRange);
                }
            }
            iComputeSerializedSize = iComputeMessageSize4;
        }
        if (this.extension != null && this.extension.length > 0) {
            int iComputeMessageSize5 = iComputeSerializedSize;
            for (int i5 = 0; i5 < this.extension.length; i5++) {
                DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto2 = this.extension[i5];
                if (descriptorProtos$FieldDescriptorProto2 != null) {
                    iComputeMessageSize5 += CodedOutputByteBufferNano.computeMessageSize(6, descriptorProtos$FieldDescriptorProto2);
                }
            }
            iComputeSerializedSize = iComputeMessageSize5;
        }
        if (this.options != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(7, this.options);
        }
        if (this.oneofDecl != null && this.oneofDecl.length > 0) {
            int iComputeMessageSize6 = iComputeSerializedSize;
            for (int i6 = 0; i6 < this.oneofDecl.length; i6++) {
                DescriptorProtos$OneofDescriptorProto descriptorProtos$OneofDescriptorProto = this.oneofDecl[i6];
                if (descriptorProtos$OneofDescriptorProto != null) {
                    iComputeMessageSize6 += CodedOutputByteBufferNano.computeMessageSize(8, descriptorProtos$OneofDescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize6;
        }
        if (this.reservedRange != null && this.reservedRange.length > 0) {
            int iComputeMessageSize7 = iComputeSerializedSize;
            for (int i7 = 0; i7 < this.reservedRange.length; i7++) {
                DescriptorProtos$DescriptorProto$ReservedRange descriptorProtos$DescriptorProto$ReservedRange = this.reservedRange[i7];
                if (descriptorProtos$DescriptorProto$ReservedRange != null) {
                    iComputeMessageSize7 += CodedOutputByteBufferNano.computeMessageSize(9, descriptorProtos$DescriptorProto$ReservedRange);
                }
            }
            iComputeSerializedSize = iComputeMessageSize7;
        }
        if (this.reservedName == null || this.reservedName.length <= 0) {
            return iComputeSerializedSize;
        }
        int iComputeStringSizeNoTag = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < this.reservedName.length; i9++) {
            String str = this.reservedName[i9];
            if (str != null) {
                i8++;
                iComputeStringSizeNoTag += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
            }
        }
        return iComputeSerializedSize + iComputeStringSizeNoTag + (1 * i8);
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$DescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 10:
                    this.name = input.readString();
                    break;
                case 18:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 18);
                    int length = this.field == null ? 0 : this.field.length;
                    DescriptorProtos$FieldDescriptorProto[] descriptorProtos$FieldDescriptorProtoArr = new DescriptorProtos$FieldDescriptorProto[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.field, 0, descriptorProtos$FieldDescriptorProtoArr, 0, length);
                    }
                    while (length < descriptorProtos$FieldDescriptorProtoArr.length - 1) {
                        descriptorProtos$FieldDescriptorProtoArr[length] = new DescriptorProtos$FieldDescriptorProto();
                        input.readMessage(descriptorProtos$FieldDescriptorProtoArr[length]);
                        input.readTag();
                        length++;
                    }
                    descriptorProtos$FieldDescriptorProtoArr[length] = new DescriptorProtos$FieldDescriptorProto();
                    input.readMessage(descriptorProtos$FieldDescriptorProtoArr[length]);
                    this.field = descriptorProtos$FieldDescriptorProtoArr;
                    break;
                case 26:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(input, 26);
                    int length2 = this.nestedType == null ? 0 : this.nestedType.length;
                    DescriptorProtos$DescriptorProto[] descriptorProtos$DescriptorProtoArr = new DescriptorProtos$DescriptorProto[repeatedFieldArrayLength2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.nestedType, 0, descriptorProtos$DescriptorProtoArr, 0, length2);
                    }
                    while (length2 < descriptorProtos$DescriptorProtoArr.length - 1) {
                        descriptorProtos$DescriptorProtoArr[length2] = new DescriptorProtos$DescriptorProto();
                        input.readMessage(descriptorProtos$DescriptorProtoArr[length2]);
                        input.readTag();
                        length2++;
                    }
                    descriptorProtos$DescriptorProtoArr[length2] = new DescriptorProtos$DescriptorProto();
                    input.readMessage(descriptorProtos$DescriptorProtoArr[length2]);
                    this.nestedType = descriptorProtos$DescriptorProtoArr;
                    break;
                case 34:
                    int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(input, 34);
                    int length3 = this.enumType == null ? 0 : this.enumType.length;
                    DescriptorProtos$EnumDescriptorProto[] descriptorProtos$EnumDescriptorProtoArr = new DescriptorProtos$EnumDescriptorProto[repeatedFieldArrayLength3 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.enumType, 0, descriptorProtos$EnumDescriptorProtoArr, 0, length3);
                    }
                    while (length3 < descriptorProtos$EnumDescriptorProtoArr.length - 1) {
                        descriptorProtos$EnumDescriptorProtoArr[length3] = new DescriptorProtos$EnumDescriptorProto();
                        input.readMessage(descriptorProtos$EnumDescriptorProtoArr[length3]);
                        input.readTag();
                        length3++;
                    }
                    descriptorProtos$EnumDescriptorProtoArr[length3] = new DescriptorProtos$EnumDescriptorProto();
                    input.readMessage(descriptorProtos$EnumDescriptorProtoArr[length3]);
                    this.enumType = descriptorProtos$EnumDescriptorProtoArr;
                    break;
                case 42:
                    int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(input, 42);
                    int length4 = this.extensionRange == null ? 0 : this.extensionRange.length;
                    DescriptorProtos$DescriptorProto$ExtensionRange[] descriptorProtos$DescriptorProto$ExtensionRangeArr = new DescriptorProtos$DescriptorProto$ExtensionRange[repeatedFieldArrayLength4 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.extensionRange, 0, descriptorProtos$DescriptorProto$ExtensionRangeArr, 0, length4);
                    }
                    while (length4 < descriptorProtos$DescriptorProto$ExtensionRangeArr.length - 1) {
                        descriptorProtos$DescriptorProto$ExtensionRangeArr[length4] = new DescriptorProtos$DescriptorProto$ExtensionRange();
                        input.readMessage(descriptorProtos$DescriptorProto$ExtensionRangeArr[length4]);
                        input.readTag();
                        length4++;
                    }
                    descriptorProtos$DescriptorProto$ExtensionRangeArr[length4] = new DescriptorProtos$DescriptorProto$ExtensionRange();
                    input.readMessage(descriptorProtos$DescriptorProto$ExtensionRangeArr[length4]);
                    this.extensionRange = descriptorProtos$DescriptorProto$ExtensionRangeArr;
                    break;
                case 50:
                    int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(input, 50);
                    int length5 = this.extension == null ? 0 : this.extension.length;
                    DescriptorProtos$FieldDescriptorProto[] descriptorProtos$FieldDescriptorProtoArr2 = new DescriptorProtos$FieldDescriptorProto[repeatedFieldArrayLength5 + length5];
                    if (length5 != 0) {
                        System.arraycopy(this.extension, 0, descriptorProtos$FieldDescriptorProtoArr2, 0, length5);
                    }
                    while (length5 < descriptorProtos$FieldDescriptorProtoArr2.length - 1) {
                        descriptorProtos$FieldDescriptorProtoArr2[length5] = new DescriptorProtos$FieldDescriptorProto();
                        input.readMessage(descriptorProtos$FieldDescriptorProtoArr2[length5]);
                        input.readTag();
                        length5++;
                    }
                    descriptorProtos$FieldDescriptorProtoArr2[length5] = new DescriptorProtos$FieldDescriptorProto();
                    input.readMessage(descriptorProtos$FieldDescriptorProtoArr2[length5]);
                    this.extension = descriptorProtos$FieldDescriptorProtoArr2;
                    break;
                case 58:
                    if (this.options == null) {
                        this.options = new DescriptorProtos$MessageOptions();
                    }
                    input.readMessage(this.options);
                    break;
                case 66:
                    int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(input, 66);
                    int length6 = this.oneofDecl == null ? 0 : this.oneofDecl.length;
                    DescriptorProtos$OneofDescriptorProto[] descriptorProtos$OneofDescriptorProtoArr = new DescriptorProtos$OneofDescriptorProto[repeatedFieldArrayLength6 + length6];
                    if (length6 != 0) {
                        System.arraycopy(this.oneofDecl, 0, descriptorProtos$OneofDescriptorProtoArr, 0, length6);
                    }
                    while (length6 < descriptorProtos$OneofDescriptorProtoArr.length - 1) {
                        descriptorProtos$OneofDescriptorProtoArr[length6] = new DescriptorProtos$OneofDescriptorProto();
                        input.readMessage(descriptorProtos$OneofDescriptorProtoArr[length6]);
                        input.readTag();
                        length6++;
                    }
                    descriptorProtos$OneofDescriptorProtoArr[length6] = new DescriptorProtos$OneofDescriptorProto();
                    input.readMessage(descriptorProtos$OneofDescriptorProtoArr[length6]);
                    this.oneofDecl = descriptorProtos$OneofDescriptorProtoArr;
                    break;
                case 74:
                    int repeatedFieldArrayLength7 = WireFormatNano.getRepeatedFieldArrayLength(input, 74);
                    int length7 = this.reservedRange == null ? 0 : this.reservedRange.length;
                    DescriptorProtos$DescriptorProto$ReservedRange[] descriptorProtos$DescriptorProto$ReservedRangeArr = new DescriptorProtos$DescriptorProto$ReservedRange[repeatedFieldArrayLength7 + length7];
                    if (length7 != 0) {
                        System.arraycopy(this.reservedRange, 0, descriptorProtos$DescriptorProto$ReservedRangeArr, 0, length7);
                    }
                    while (length7 < descriptorProtos$DescriptorProto$ReservedRangeArr.length - 1) {
                        descriptorProtos$DescriptorProto$ReservedRangeArr[length7] = new DescriptorProtos$DescriptorProto$ReservedRange();
                        input.readMessage(descriptorProtos$DescriptorProto$ReservedRangeArr[length7]);
                        input.readTag();
                        length7++;
                    }
                    descriptorProtos$DescriptorProto$ReservedRangeArr[length7] = new DescriptorProtos$DescriptorProto$ReservedRange();
                    input.readMessage(descriptorProtos$DescriptorProto$ReservedRangeArr[length7]);
                    this.reservedRange = descriptorProtos$DescriptorProto$ReservedRangeArr;
                    break;
                case 82:
                    int repeatedFieldArrayLength8 = WireFormatNano.getRepeatedFieldArrayLength(input, 82);
                    int length8 = this.reservedName == null ? 0 : this.reservedName.length;
                    String[] strArr = new String[repeatedFieldArrayLength8 + length8];
                    if (length8 != 0) {
                        System.arraycopy(this.reservedName, 0, strArr, 0, length8);
                    }
                    while (length8 < strArr.length - 1) {
                        strArr[length8] = input.readString();
                        input.readTag();
                        length8++;
                    }
                    strArr[length8] = input.readString();
                    this.reservedName = strArr;
                    break;
                default:
                    if (!super.storeUnknownField(input, tag)) {
                        return this;
                    }
                    break;
            }
        }
    }

    public static DescriptorProtos$DescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$DescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$DescriptorProto(), data);
    }

    public static DescriptorProtos$DescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$DescriptorProto().mergeFrom(input);
    }
}
