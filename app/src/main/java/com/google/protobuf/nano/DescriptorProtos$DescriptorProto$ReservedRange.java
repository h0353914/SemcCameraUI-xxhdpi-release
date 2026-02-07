package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$DescriptorProto$ReservedRange extends ExtendableMessageNano<DescriptorProtos$DescriptorProto$ReservedRange> {
    private static volatile DescriptorProtos$DescriptorProto$ReservedRange[] _emptyArray;
    public int end;
    public int start;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$DescriptorProto$ReservedRange[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$DescriptorProto$ReservedRange[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$DescriptorProto$ReservedRange() {
        clear();
    }

    public DescriptorProtos$DescriptorProto$ReservedRange clear() {
        this.start = 0;
        this.end = 0;
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
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.start != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(1, this.start);
        }
        return this.end != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(2, this.end) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$DescriptorProto$ReservedRange mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                this.start = input.readInt32();
            } else if (tag != 16) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                this.end = input.readInt32();
            }
        }
    }

    public static DescriptorProtos$DescriptorProto$ReservedRange parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$DescriptorProto$ReservedRange) MessageNano.mergeFrom(new DescriptorProtos$DescriptorProto$ReservedRange(), data);
    }

    public static DescriptorProtos$DescriptorProto$ReservedRange parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$DescriptorProto$ReservedRange().mergeFrom(input);
    }
}
