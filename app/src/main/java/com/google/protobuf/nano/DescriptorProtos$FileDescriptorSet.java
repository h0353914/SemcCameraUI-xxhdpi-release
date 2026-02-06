package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$FileDescriptorSet extends ExtendableMessageNano<DescriptorProtos$FileDescriptorSet> {
    private static volatile DescriptorProtos$FileDescriptorSet[] _emptyArray;
    public DescriptorProtos$FileDescriptorProto[] file;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$FileDescriptorSet[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$FileDescriptorSet[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$FileDescriptorSet() {
        clear();
    }

    public DescriptorProtos$FileDescriptorSet clear() {
        this.file = DescriptorProtos$FileDescriptorProto.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.file != null && this.file.length > 0) {
            for (int i = 0; i < this.file.length; i++) {
                DescriptorProtos$FileDescriptorProto descriptorProtos$FileDescriptorProto = this.file[i];
                if (descriptorProtos$FileDescriptorProto != null) {
                    output.writeMessage(1, descriptorProtos$FileDescriptorProto);
                }
            }
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.file != null && this.file.length > 0) {
            for (int i = 0; i < this.file.length; i++) {
                DescriptorProtos$FileDescriptorProto descriptorProtos$FileDescriptorProto = this.file[i];
                if (descriptorProtos$FileDescriptorProto != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, descriptorProtos$FileDescriptorProto);
                }
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$FileDescriptorSet mergeFrom(CodedInputByteBufferNano input) throws IOException {
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
                int length = this.file == null ? 0 : this.file.length;
                DescriptorProtos$FileDescriptorProto[] descriptorProtos$FileDescriptorProtoArr = new DescriptorProtos$FileDescriptorProto[repeatedFieldArrayLength + length];
                if (length != 0) {
                    System.arraycopy(this.file, 0, descriptorProtos$FileDescriptorProtoArr, 0, length);
                }
                while (length < descriptorProtos$FileDescriptorProtoArr.length - 1) {
                    descriptorProtos$FileDescriptorProtoArr[length] = new DescriptorProtos$FileDescriptorProto();
                    input.readMessage(descriptorProtos$FileDescriptorProtoArr[length]);
                    input.readTag();
                    length++;
                }
                descriptorProtos$FileDescriptorProtoArr[length] = new DescriptorProtos$FileDescriptorProto();
                input.readMessage(descriptorProtos$FileDescriptorProtoArr[length]);
                this.file = descriptorProtos$FileDescriptorProtoArr;
            }
        }
    }

    public static DescriptorProtos$FileDescriptorSet parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$FileDescriptorSet) MessageNano.mergeFrom(new DescriptorProtos$FileDescriptorSet(), data);
    }

    public static DescriptorProtos$FileDescriptorSet parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$FileDescriptorSet().mergeFrom(input);
    }
}
