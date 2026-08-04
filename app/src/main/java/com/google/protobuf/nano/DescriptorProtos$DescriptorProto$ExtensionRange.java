package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$DescriptorProto$ExtensionRange extends ExtendableMessageNano<DescriptorProtos$DescriptorProto$ExtensionRange> {
    private static volatile DescriptorProtos$DescriptorProto$ExtensionRange[] _emptyArray;
    public int end;
    public DescriptorProtos$ExtensionRangeOptions options;
    public int start;
    public static DescriptorProtos$DescriptorProto$ExtensionRange[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$DescriptorProto$ExtensionRange[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$DescriptorProto$ExtensionRange() {
        clear();
    }

    public DescriptorProtos$DescriptorProto$ExtensionRange clear() {
        this.start = 0;
        this.end = 0;
        this.options = null;
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.start != 0) {
            output.writeInt32(1, this.start);
        }
        if (this.end != 0) {
            output.writeInt32(2, this.end);
        }
        if (this.options != null) {
            output.writeMessage(3, this.options);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.start != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.start);
        }
        if (this.end != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.end);
        }
        return this.options != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, this.options) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$DescriptorProto$ExtensionRange mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                this.start = input.readInt32();
            } else if (tag == 16) {
                this.end = input.readInt32();
            } else if (tag != 26) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                if (this.options == null) {
                    this.options = new DescriptorProtos$ExtensionRangeOptions();
                }
                input.readMessage(this.options);
            }
        }
    }

    public static DescriptorProtos$DescriptorProto$ExtensionRange parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$DescriptorProto$ExtensionRange) MessageNano.mergeFrom(new DescriptorProtos$DescriptorProto$ExtensionRange(), data);
    }

    public static DescriptorProtos$DescriptorProto$ExtensionRange parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$DescriptorProto$ExtensionRange().mergeFrom(input);
    }
}
