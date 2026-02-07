package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$GeneratedCodeInfo$Annotation extends ExtendableMessageNano<DescriptorProtos$GeneratedCodeInfo$Annotation> {
    private static volatile DescriptorProtos$GeneratedCodeInfo$Annotation[] _emptyArray;
    public int begin;
    public int end;
    public int[] path;
    public String sourceFile;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$GeneratedCodeInfo$Annotation[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$GeneratedCodeInfo$Annotation[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$GeneratedCodeInfo$Annotation() {
        clear();
    }

    public DescriptorProtos$GeneratedCodeInfo$Annotation clear() {
        this.path = WireFormatNano.EMPTY_INT_ARRAY;
        this.sourceFile = "";
        this.begin = 0;
        this.end = 0;
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
        if (this.sourceFile != null && !this.sourceFile.equals("")) {
            output.writeString(2, this.sourceFile);
        }
        if (this.begin != 0) {
            output.writeInt32(3, this.begin);
        }
        if (this.end != 0) {
            output.writeInt32(4, this.end);
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
        if (this.sourceFile != null && !this.sourceFile.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.sourceFile);
        }
        if (this.begin != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.begin);
        }
        return this.end != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, this.end) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$GeneratedCodeInfo$Annotation mergeFrom(CodedInputByteBufferNano input) throws IOException {
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
            } else if (tag == 18) {
                this.sourceFile = input.readString();
            } else if (tag == 24) {
                this.begin = input.readInt32();
            } else if (tag != 32) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                this.end = input.readInt32();
            }
        }
    }

    public static DescriptorProtos$GeneratedCodeInfo$Annotation parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$GeneratedCodeInfo$Annotation) MessageNano.mergeFrom(new DescriptorProtos$GeneratedCodeInfo$Annotation(), data);
    }

    public static DescriptorProtos$GeneratedCodeInfo$Annotation parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$GeneratedCodeInfo$Annotation().mergeFrom(input);
    }
}
