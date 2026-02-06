package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$EnumValueDescriptorProto extends ExtendableMessageNano<DescriptorProtos$EnumValueDescriptorProto> {
    private static volatile DescriptorProtos$EnumValueDescriptorProto[] _emptyArray;
    public String name;
    public int number;
    public DescriptorProtos$EnumValueOptions options;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$EnumValueDescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$EnumValueDescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$EnumValueDescriptorProto() {
        clear();
    }

    public DescriptorProtos$EnumValueDescriptorProto clear() {
        this.name = "";
        this.number = 0;
        this.options = null;
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            output.writeString(1, this.name);
        }
        if (this.number != 0) {
            output.writeInt32(2, this.number);
        }
        if (this.options != null) {
            output.writeMessage(3, this.options);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        if (this.number != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(2, this.number);
        }
        return this.options != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, this.options) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$EnumValueDescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.name = input.readString();
            } else if (tag == 16) {
                this.number = input.readInt32();
            } else if (tag != 26) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                if (this.options == null) {
                    this.options = new DescriptorProtos$EnumValueOptions();
                }
                input.readMessage(this.options);
            }
        }
    }

    public static DescriptorProtos$EnumValueDescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$EnumValueDescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$EnumValueDescriptorProto(), data);
    }

    public static DescriptorProtos$EnumValueDescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$EnumValueDescriptorProto().mergeFrom(input);
    }
}
