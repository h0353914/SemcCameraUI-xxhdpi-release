package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$FileDescriptorProto extends ExtendableMessageNano<DescriptorProtos$FileDescriptorProto> {
    private static volatile DescriptorProtos$FileDescriptorProto[] _emptyArray;
    public String[] dependency;
    public DescriptorProtos$EnumDescriptorProto[] enumType;
    public DescriptorProtos$FieldDescriptorProto[] extension;
    public DescriptorProtos$DescriptorProto[] messageType;
    public String name;
    public DescriptorProtos$FileOptions options;
    public String package_;
    public int[] publicDependency;
    public DescriptorProtos$ServiceDescriptorProto[] service;
    public DescriptorProtos$SourceCodeInfo sourceCodeInfo;
    public String syntax;
    public int[] weakDependency;
    public static DescriptorProtos$FileDescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$FileDescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$FileDescriptorProto() {
        clear();
    }

    public DescriptorProtos$FileDescriptorProto clear() {
        this.name = "";
        this.package_ = "";
        this.dependency = WireFormatNano.EMPTY_STRING_ARRAY;
        this.publicDependency = WireFormatNano.EMPTY_INT_ARRAY;
        this.weakDependency = WireFormatNano.EMPTY_INT_ARRAY;
        this.messageType = DescriptorProtos$DescriptorProto.emptyArray();
        this.enumType = DescriptorProtos$EnumDescriptorProto.emptyArray();
        this.service = DescriptorProtos$ServiceDescriptorProto.emptyArray();
        this.extension = DescriptorProtos$FieldDescriptorProto.emptyArray();
        this.options = null;
        this.sourceCodeInfo = null;
        this.syntax = "";
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            output.writeString(1, this.name);
        }
        if (this.package_ != null && !this.package_.equals("")) {
            output.writeString(2, this.package_);
        }
        if (this.dependency != null && this.dependency.length > 0) {
            for (int i = 0; i < this.dependency.length; i++) {
                String str = this.dependency[i];
                if (str != null) {
                    output.writeString(3, str);
                }
            }
        }
        if (this.messageType != null && this.messageType.length > 0) {
            for (int i2 = 0; i2 < this.messageType.length; i2++) {
                DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto = this.messageType[i2];
                if (descriptorProtos$DescriptorProto != null) {
                    output.writeMessage(4, descriptorProtos$DescriptorProto);
                }
            }
        }
        if (this.enumType != null && this.enumType.length > 0) {
            for (int i3 = 0; i3 < this.enumType.length; i3++) {
                DescriptorProtos$EnumDescriptorProto descriptorProtos$EnumDescriptorProto = this.enumType[i3];
                if (descriptorProtos$EnumDescriptorProto != null) {
                    output.writeMessage(5, descriptorProtos$EnumDescriptorProto);
                }
            }
        }
        if (this.service != null && this.service.length > 0) {
            for (int i4 = 0; i4 < this.service.length; i4++) {
                DescriptorProtos$ServiceDescriptorProto descriptorProtos$ServiceDescriptorProto = this.service[i4];
                if (descriptorProtos$ServiceDescriptorProto != null) {
                    output.writeMessage(6, descriptorProtos$ServiceDescriptorProto);
                }
            }
        }
        if (this.extension != null && this.extension.length > 0) {
            for (int i5 = 0; i5 < this.extension.length; i5++) {
                DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto = this.extension[i5];
                if (descriptorProtos$FieldDescriptorProto != null) {
                    output.writeMessage(7, descriptorProtos$FieldDescriptorProto);
                }
            }
        }
        if (this.options != null) {
            output.writeMessage(8, this.options);
        }
        if (this.sourceCodeInfo != null) {
            output.writeMessage(9, this.sourceCodeInfo);
        }
        if (this.publicDependency != null && this.publicDependency.length > 0) {
            for (int i6 = 0; i6 < this.publicDependency.length; i6++) {
                output.writeInt32(10, this.publicDependency[i6]);
            }
        }
        if (this.weakDependency != null && this.weakDependency.length > 0) {
            for (int i7 = 0; i7 < this.weakDependency.length; i7++) {
                output.writeInt32(11, this.weakDependency[i7]);
            }
        }
        if (this.syntax != null && !this.syntax.equals("")) {
            output.writeString(12, this.syntax);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        if (this.package_ != null && !this.package_.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.package_);
        }
        if (this.dependency != null && this.dependency.length > 0) {
            int iComputeStringSizeNoTag = 0;
            int i = 0;
            for (int i2 = 0; i2 < this.dependency.length; i2++) {
                String str = this.dependency[i2];
                if (str != null) {
                    i++;
                    iComputeStringSizeNoTag += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
                }
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeStringSizeNoTag + (i * 1);
        }
        if (this.messageType != null && this.messageType.length > 0) {
            int iComputeMessageSize = iComputeSerializedSize;
            for (int i3 = 0; i3 < this.messageType.length; i3++) {
                DescriptorProtos$DescriptorProto descriptorProtos$DescriptorProto = this.messageType[i3];
                if (descriptorProtos$DescriptorProto != null) {
                    iComputeMessageSize += CodedOutputByteBufferNano.computeMessageSize(4, descriptorProtos$DescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize;
        }
        if (this.enumType != null && this.enumType.length > 0) {
            int iComputeMessageSize2 = iComputeSerializedSize;
            for (int i4 = 0; i4 < this.enumType.length; i4++) {
                DescriptorProtos$EnumDescriptorProto descriptorProtos$EnumDescriptorProto = this.enumType[i4];
                if (descriptorProtos$EnumDescriptorProto != null) {
                    iComputeMessageSize2 += CodedOutputByteBufferNano.computeMessageSize(5, descriptorProtos$EnumDescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize2;
        }
        if (this.service != null && this.service.length > 0) {
            int iComputeMessageSize3 = iComputeSerializedSize;
            for (int i5 = 0; i5 < this.service.length; i5++) {
                DescriptorProtos$ServiceDescriptorProto descriptorProtos$ServiceDescriptorProto = this.service[i5];
                if (descriptorProtos$ServiceDescriptorProto != null) {
                    iComputeMessageSize3 += CodedOutputByteBufferNano.computeMessageSize(6, descriptorProtos$ServiceDescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize3;
        }
        if (this.extension != null && this.extension.length > 0) {
            int iComputeMessageSize4 = iComputeSerializedSize;
            for (int i6 = 0; i6 < this.extension.length; i6++) {
                DescriptorProtos$FieldDescriptorProto descriptorProtos$FieldDescriptorProto = this.extension[i6];
                if (descriptorProtos$FieldDescriptorProto != null) {
                    iComputeMessageSize4 += CodedOutputByteBufferNano.computeMessageSize(7, descriptorProtos$FieldDescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize4;
        }
        if (this.options != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, this.options);
        }
        if (this.sourceCodeInfo != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(9, this.sourceCodeInfo);
        }
        if (this.publicDependency != null && this.publicDependency.length > 0) {
            int iComputeInt32SizeNoTag = 0;
            for (int i7 = 0; i7 < this.publicDependency.length; i7++) {
                iComputeInt32SizeNoTag += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.publicDependency[i7]);
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag + (this.publicDependency.length * 1);
        }
        if (this.weakDependency != null && this.weakDependency.length > 0) {
            int iComputeInt32SizeNoTag2 = 0;
            for (int i8 = 0; i8 < this.weakDependency.length; i8++) {
                iComputeInt32SizeNoTag2 += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.weakDependency[i8]);
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag2 + (1 * this.weakDependency.length);
        }
        return (this.syntax == null || this.syntax.equals("")) ? iComputeSerializedSize : iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(12, this.syntax);
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$FileDescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 10:
                    this.name = input.readString();
                    break;
                case 18:
                    this.package_ = input.readString();
                    break;
                case 26:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 26);
                    int length = this.dependency == null ? 0 : this.dependency.length;
                    String[] strArr = new String[repeatedFieldArrayLength + length];
                    if (length != 0) {
                        System.arraycopy(this.dependency, 0, strArr, 0, length);
                    }
                    while (length < strArr.length - 1) {
                        strArr[length] = input.readString();
                        input.readTag();
                        length++;
                    }
                    strArr[length] = input.readString();
                    this.dependency = strArr;
                    break;
                case 34:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(input, 34);
                    int length2 = this.messageType == null ? 0 : this.messageType.length;
                    DescriptorProtos$DescriptorProto[] descriptorProtos$DescriptorProtoArr = new DescriptorProtos$DescriptorProto[repeatedFieldArrayLength2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.messageType, 0, descriptorProtos$DescriptorProtoArr, 0, length2);
                    }
                    while (length2 < descriptorProtos$DescriptorProtoArr.length - 1) {
                        descriptorProtos$DescriptorProtoArr[length2] = new DescriptorProtos$DescriptorProto();
                        input.readMessage(descriptorProtos$DescriptorProtoArr[length2]);
                        input.readTag();
                        length2++;
                    }
                    descriptorProtos$DescriptorProtoArr[length2] = new DescriptorProtos$DescriptorProto();
                    input.readMessage(descriptorProtos$DescriptorProtoArr[length2]);
                    this.messageType = descriptorProtos$DescriptorProtoArr;
                    break;
                case 42:
                    int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(input, 42);
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
                case 50:
                    int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(input, 50);
                    int length4 = this.service == null ? 0 : this.service.length;
                    DescriptorProtos$ServiceDescriptorProto[] descriptorProtos$ServiceDescriptorProtoArr = new DescriptorProtos$ServiceDescriptorProto[repeatedFieldArrayLength4 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.service, 0, descriptorProtos$ServiceDescriptorProtoArr, 0, length4);
                    }
                    while (length4 < descriptorProtos$ServiceDescriptorProtoArr.length - 1) {
                        descriptorProtos$ServiceDescriptorProtoArr[length4] = new DescriptorProtos$ServiceDescriptorProto();
                        input.readMessage(descriptorProtos$ServiceDescriptorProtoArr[length4]);
                        input.readTag();
                        length4++;
                    }
                    descriptorProtos$ServiceDescriptorProtoArr[length4] = new DescriptorProtos$ServiceDescriptorProto();
                    input.readMessage(descriptorProtos$ServiceDescriptorProtoArr[length4]);
                    this.service = descriptorProtos$ServiceDescriptorProtoArr;
                    break;
                case 58:
                    int repeatedFieldArrayLength5 = WireFormatNano.getRepeatedFieldArrayLength(input, 58);
                    int length5 = this.extension == null ? 0 : this.extension.length;
                    DescriptorProtos$FieldDescriptorProto[] descriptorProtos$FieldDescriptorProtoArr = new DescriptorProtos$FieldDescriptorProto[repeatedFieldArrayLength5 + length5];
                    if (length5 != 0) {
                        System.arraycopy(this.extension, 0, descriptorProtos$FieldDescriptorProtoArr, 0, length5);
                    }
                    while (length5 < descriptorProtos$FieldDescriptorProtoArr.length - 1) {
                        descriptorProtos$FieldDescriptorProtoArr[length5] = new DescriptorProtos$FieldDescriptorProto();
                        input.readMessage(descriptorProtos$FieldDescriptorProtoArr[length5]);
                        input.readTag();
                        length5++;
                    }
                    descriptorProtos$FieldDescriptorProtoArr[length5] = new DescriptorProtos$FieldDescriptorProto();
                    input.readMessage(descriptorProtos$FieldDescriptorProtoArr[length5]);
                    this.extension = descriptorProtos$FieldDescriptorProtoArr;
                    break;
                case 66:
                    if (this.options == null) {
                        this.options = new DescriptorProtos$FileOptions();
                    }
                    input.readMessage(this.options);
                    break;
                case 74:
                    if (this.sourceCodeInfo == null) {
                        this.sourceCodeInfo = new DescriptorProtos$SourceCodeInfo();
                    }
                    input.readMessage(this.sourceCodeInfo);
                    break;
                case 80:
                    int repeatedFieldArrayLength6 = WireFormatNano.getRepeatedFieldArrayLength(input, 80);
                    int length6 = this.publicDependency == null ? 0 : this.publicDependency.length;
                    int[] iArr = new int[repeatedFieldArrayLength6 + length6];
                    if (length6 != 0) {
                        System.arraycopy(this.publicDependency, 0, iArr, 0, length6);
                    }
                    while (length6 < iArr.length - 1) {
                        iArr[length6] = input.readInt32();
                        input.readTag();
                        length6++;
                    }
                    iArr[length6] = input.readInt32();
                    this.publicDependency = iArr;
                    break;
                case 82:
                    int iPushLimit = input.pushLimit(input.readRawVarint32());
                    int position = input.getPosition();
                    int i = 0;
                    while (input.getBytesUntilLimit() > 0) {
                        input.readInt32();
                        i++;
                    }
                    input.rewindToPosition(position);
                    int length7 = this.publicDependency == null ? 0 : this.publicDependency.length;
                    int[] iArr2 = new int[i + length7];
                    if (length7 != 0) {
                        System.arraycopy(this.publicDependency, 0, iArr2, 0, length7);
                    }
                    while (length7 < iArr2.length) {
                        iArr2[length7] = input.readInt32();
                        length7++;
                    }
                    this.publicDependency = iArr2;
                    input.popLimit(iPushLimit);
                    break;
                case 88:
                    int repeatedFieldArrayLength7 = WireFormatNano.getRepeatedFieldArrayLength(input, 88);
                    int length8 = this.weakDependency == null ? 0 : this.weakDependency.length;
                    int[] iArr3 = new int[repeatedFieldArrayLength7 + length8];
                    if (length8 != 0) {
                        System.arraycopy(this.weakDependency, 0, iArr3, 0, length8);
                    }
                    while (length8 < iArr3.length - 1) {
                        iArr3[length8] = input.readInt32();
                        input.readTag();
                        length8++;
                    }
                    iArr3[length8] = input.readInt32();
                    this.weakDependency = iArr3;
                    break;
                case 90:
                    int iPushLimit2 = input.pushLimit(input.readRawVarint32());
                    int position2 = input.getPosition();
                    int i2 = 0;
                    while (input.getBytesUntilLimit() > 0) {
                        input.readInt32();
                        i2++;
                    }
                    input.rewindToPosition(position2);
                    int length9 = this.weakDependency == null ? 0 : this.weakDependency.length;
                    int[] iArr4 = new int[i2 + length9];
                    if (length9 != 0) {
                        System.arraycopy(this.weakDependency, 0, iArr4, 0, length9);
                    }
                    while (length9 < iArr4.length) {
                        iArr4[length9] = input.readInt32();
                        length9++;
                    }
                    this.weakDependency = iArr4;
                    input.popLimit(iPushLimit2);
                    break;
                case 98:
                    this.syntax = input.readString();
                    break;
                default:
                    if (!super.storeUnknownField(input, tag)) {
                        return this;
                    }
                    break;
            }
        }
    }

    public static DescriptorProtos$FileDescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$FileDescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$FileDescriptorProto(), data);
    }

    public static DescriptorProtos$FileDescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$FileDescriptorProto().mergeFrom(input);
    }
}
