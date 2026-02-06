package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$SourceCodeInfo$Location extends ExtendableMessageNano<DescriptorProtos$SourceCodeInfo$Location> {
    private static volatile DescriptorProtos$SourceCodeInfo$Location[] _emptyArray;
    public String leadingComments;
    public String[] leadingDetachedComments;
    public int[] path;
    public int[] span;
    public String trailingComments;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$SourceCodeInfo$Location[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$SourceCodeInfo$Location[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$SourceCodeInfo$Location() {
        clear();
    }

    public DescriptorProtos$SourceCodeInfo$Location clear() {
        this.path = WireFormatNano.EMPTY_INT_ARRAY;
        this.span = WireFormatNano.EMPTY_INT_ARRAY;
        this.leadingComments = "";
        this.trailingComments = "";
        this.leadingDetachedComments = WireFormatNano.EMPTY_STRING_ARRAY;
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.path != null && this.path.length > 0) {
            int iComputeInt32SizeNoTag = 0;
            for (int i = 0; i < this.path.length; i++) {
                iComputeInt32SizeNoTag += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.path[i]);
            }
            output.writeRawVarint32(10);
            output.writeRawVarint32(iComputeInt32SizeNoTag);
            for (int i2 = 0; i2 < this.path.length; i2++) {
                output.writeInt32NoTag(this.path[i2]);
            }
        }
        if (this.span != null && this.span.length > 0) {
            int iComputeInt32SizeNoTag2 = 0;
            for (int i3 = 0; i3 < this.span.length; i3++) {
                iComputeInt32SizeNoTag2 += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.span[i3]);
            }
            output.writeRawVarint32(18);
            output.writeRawVarint32(iComputeInt32SizeNoTag2);
            for (int i4 = 0; i4 < this.span.length; i4++) {
                output.writeInt32NoTag(this.span[i4]);
            }
        }
        if (this.leadingComments != null && !this.leadingComments.equals("")) {
            output.writeString(3, this.leadingComments);
        }
        if (this.trailingComments != null && !this.trailingComments.equals("")) {
            output.writeString(4, this.trailingComments);
        }
        if (this.leadingDetachedComments != null && this.leadingDetachedComments.length > 0) {
            for (int i5 = 0; i5 < this.leadingDetachedComments.length; i5++) {
                String str = this.leadingDetachedComments[i5];
                if (str != null) {
                    output.writeString(6, str);
                }
            }
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.path != null && this.path.length > 0) {
            int iComputeInt32SizeNoTag = 0;
            for (int i = 0; i < this.path.length; i++) {
                iComputeInt32SizeNoTag += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.path[i]);
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag + 1 + CodedOutputByteBufferNano.computeRawVarint32Size(iComputeInt32SizeNoTag);
        }
        if (this.span != null && this.span.length > 0) {
            int iComputeInt32SizeNoTag2 = 0;
            for (int i2 = 0; i2 < this.span.length; i2++) {
                iComputeInt32SizeNoTag2 += CodedOutputByteBufferNano.computeInt32SizeNoTag(this.span[i2]);
            }
            iComputeSerializedSize = iComputeSerializedSize + iComputeInt32SizeNoTag2 + 1 + CodedOutputByteBufferNano.computeRawVarint32Size(iComputeInt32SizeNoTag2);
        }
        if (this.leadingComments != null && !this.leadingComments.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.leadingComments);
        }
        if (this.trailingComments != null && !this.trailingComments.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.trailingComments);
        }
        if (this.leadingDetachedComments == null || this.leadingDetachedComments.length <= 0) {
            return iComputeSerializedSize;
        }
        int iComputeStringSizeNoTag = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.leadingDetachedComments.length; i4++) {
            String str = this.leadingDetachedComments[i4];
            if (str != null) {
                i3++;
                iComputeStringSizeNoTag += CodedOutputByteBufferNano.computeStringSizeNoTag(str);
            }
        }
        return iComputeSerializedSize + iComputeStringSizeNoTag + (1 * i3);
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$SourceCodeInfo$Location mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 8);
                int length = this.path == null ? 0 : this.path.length;
                int[] iArr = new int[repeatedFieldArrayLength + length];
                if (length != 0) {
                    System.arraycopy(this.path, 0, iArr, 0, length);
                }
                while (length < iArr.length - 1) {
                    iArr[length] = input.readInt32();
                    input.readTag();
                    length++;
                }
                iArr[length] = input.readInt32();
                this.path = iArr;
            } else if (tag == 10) {
                int iPushLimit = input.pushLimit(input.readRawVarint32());
                int position = input.getPosition();
                int i = 0;
                while (input.getBytesUntilLimit() > 0) {
                    input.readInt32();
                    i++;
                }
                input.rewindToPosition(position);
                int length2 = this.path == null ? 0 : this.path.length;
                int[] iArr2 = new int[i + length2];
                if (length2 != 0) {
                    System.arraycopy(this.path, 0, iArr2, 0, length2);
                }
                while (length2 < iArr2.length) {
                    iArr2[length2] = input.readInt32();
                    length2++;
                }
                this.path = iArr2;
                input.popLimit(iPushLimit);
            } else if (tag == 16) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(input, 16);
                int length3 = this.span == null ? 0 : this.span.length;
                int[] iArr3 = new int[repeatedFieldArrayLength2 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.span, 0, iArr3, 0, length3);
                }
                while (length3 < iArr3.length - 1) {
                    iArr3[length3] = input.readInt32();
                    input.readTag();
                    length3++;
                }
                iArr3[length3] = input.readInt32();
                this.span = iArr3;
            } else if (tag == 18) {
                int iPushLimit2 = input.pushLimit(input.readRawVarint32());
                int position2 = input.getPosition();
                int i2 = 0;
                while (input.getBytesUntilLimit() > 0) {
                    input.readInt32();
                    i2++;
                }
                input.rewindToPosition(position2);
                int length4 = this.span == null ? 0 : this.span.length;
                int[] iArr4 = new int[i2 + length4];
                if (length4 != 0) {
                    System.arraycopy(this.span, 0, iArr4, 0, length4);
                }
                while (length4 < iArr4.length) {
                    iArr4[length4] = input.readInt32();
                    length4++;
                }
                this.span = iArr4;
                input.popLimit(iPushLimit2);
            } else if (tag == 26) {
                this.leadingComments = input.readString();
            } else if (tag == 34) {
                this.trailingComments = input.readString();
            } else if (tag != 50) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(input, 50);
                int length5 = this.leadingDetachedComments == null ? 0 : this.leadingDetachedComments.length;
                String[] strArr = new String[repeatedFieldArrayLength3 + length5];
                if (length5 != 0) {
                    System.arraycopy(this.leadingDetachedComments, 0, strArr, 0, length5);
                }
                while (length5 < strArr.length - 1) {
                    strArr[length5] = input.readString();
                    input.readTag();
                    length5++;
                }
                strArr[length5] = input.readString();
                this.leadingDetachedComments = strArr;
            }
        }
    }

    public static DescriptorProtos$SourceCodeInfo$Location parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$SourceCodeInfo$Location) MessageNano.mergeFrom(new DescriptorProtos$SourceCodeInfo$Location(), data);
    }

    public static DescriptorProtos$SourceCodeInfo$Location parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$SourceCodeInfo$Location().mergeFrom(input);
    }
}
