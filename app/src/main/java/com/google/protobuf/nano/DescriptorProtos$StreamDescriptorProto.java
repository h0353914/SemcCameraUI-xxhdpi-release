package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$StreamDescriptorProto extends ExtendableMessageNano<DescriptorProtos$StreamDescriptorProto> {
    private static volatile DescriptorProtos$StreamDescriptorProto[] _emptyArray;
    public String clientMessageType;
    public String name;
    public DescriptorProtos$StreamOptions options;
    public String serverMessageType;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$StreamDescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$StreamDescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$StreamDescriptorProto() {
        clear();
    }

    public DescriptorProtos$StreamDescriptorProto clear() {
        this.name = "";
        this.clientMessageType = "";
        this.serverMessageType = "";
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
        if (this.clientMessageType != null && !this.clientMessageType.equals("")) {
            output.writeString(2, this.clientMessageType);
        }
        if (this.serverMessageType != null && !this.serverMessageType.equals("")) {
            output.writeString(3, this.serverMessageType);
        }
        if (this.options != null) {
            output.writeMessage(4, this.options);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        if (this.clientMessageType != null && !this.clientMessageType.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.clientMessageType);
        }
        if (this.serverMessageType != null && !this.serverMessageType.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.serverMessageType);
        }
        return this.options != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, this.options) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$StreamDescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.name = input.readString();
            } else if (tag == 18) {
                this.clientMessageType = input.readString();
            } else if (tag == 26) {
                this.serverMessageType = input.readString();
            } else if (tag != 34) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                if (this.options == null) {
                    this.options = new DescriptorProtos$StreamOptions();
                }
                input.readMessage(this.options);
            }
        }
    }

    public static DescriptorProtos$StreamDescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$StreamDescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$StreamDescriptorProto(), data);
    }

    public static DescriptorProtos$StreamDescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$StreamDescriptorProto().mergeFrom(input);
    }
}
