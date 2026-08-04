package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$SourceCodeInfo extends ExtendableMessageNano<DescriptorProtos$SourceCodeInfo> {
    private static volatile DescriptorProtos$SourceCodeInfo[] _emptyArray;
    public DescriptorProtos$SourceCodeInfo$Location[] location;
    public static DescriptorProtos$SourceCodeInfo[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$SourceCodeInfo[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$SourceCodeInfo() {
        clear();
    }

    public DescriptorProtos$SourceCodeInfo clear() {
        this.location = DescriptorProtos$SourceCodeInfo$Location.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.location != null && this.location.length > 0) {
            for (int i = 0; i < this.location.length; i++) {
                DescriptorProtos$SourceCodeInfo$Location descriptorProtos$SourceCodeInfo$Location = this.location[i];
                if (descriptorProtos$SourceCodeInfo$Location != null) {
                    output.writeMessage(1, descriptorProtos$SourceCodeInfo$Location);
                }
            }
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.location != null && this.location.length > 0) {
            for (int i = 0; i < this.location.length; i++) {
                DescriptorProtos$SourceCodeInfo$Location descriptorProtos$SourceCodeInfo$Location = this.location[i];
                if (descriptorProtos$SourceCodeInfo$Location != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, descriptorProtos$SourceCodeInfo$Location);
                }
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$SourceCodeInfo mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag != 10) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 10);
                int length = this.location == null ? 0 : this.location.length;
                DescriptorProtos$SourceCodeInfo$Location[] descriptorProtos$SourceCodeInfo$LocationArr = new DescriptorProtos$SourceCodeInfo$Location[repeatedFieldArrayLength + length];
                if (length != 0) {
                    System.arraycopy(this.location, 0, descriptorProtos$SourceCodeInfo$LocationArr, 0, length);
                }
                while (length < descriptorProtos$SourceCodeInfo$LocationArr.length - 1) {
                    descriptorProtos$SourceCodeInfo$LocationArr[length] = new DescriptorProtos$SourceCodeInfo$Location();
                    input.readMessage(descriptorProtos$SourceCodeInfo$LocationArr[length]);
                    input.readTag();
                    length++;
                }
                descriptorProtos$SourceCodeInfo$LocationArr[length] = new DescriptorProtos$SourceCodeInfo$Location();
                input.readMessage(descriptorProtos$SourceCodeInfo$LocationArr[length]);
                this.location = descriptorProtos$SourceCodeInfo$LocationArr;
            }
        }
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$SourceCodeInfo) MessageNano.mergeFrom(new DescriptorProtos$SourceCodeInfo(), data);
    }

    public static DescriptorProtos$SourceCodeInfo parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$SourceCodeInfo().mergeFrom(input);
    }
}
