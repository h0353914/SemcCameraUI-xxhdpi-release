package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$OneofDescriptorProto extends ExtendableMessageNano<DescriptorProtos$OneofDescriptorProto> {
    private static volatile DescriptorProtos$OneofDescriptorProto[] _emptyArray;
    public String name;
    public DescriptorProtos$OneofOptions options;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$OneofDescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$OneofDescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$OneofDescriptorProto() {
        clear();
    }

    public DescriptorProtos$OneofDescriptorProto clear() {
        this.name = "";
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
        if (this.options != null) {
            output.writeMessage(2, this.options);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        return this.options != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, this.options) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$OneofDescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.name = input.readString();
            } else if (tag != 18) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                if (this.options == null) {
                    this.options = new DescriptorProtos$OneofOptions();
                }
                input.readMessage(this.options);
            }
        }
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$OneofDescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$OneofDescriptorProto(), data);
    }

    public static DescriptorProtos$OneofDescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$OneofDescriptorProto().mergeFrom(input);
    }
}
