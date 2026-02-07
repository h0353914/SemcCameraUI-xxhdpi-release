package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$MethodDescriptorProto extends ExtendableMessageNano<DescriptorProtos$MethodDescriptorProto> {
    private static volatile DescriptorProtos$MethodDescriptorProto[] _emptyArray;
    public boolean clientStreaming;
    public String inputType;
    public String name;
    public DescriptorProtos$MethodOptions options;
    public String outputType;
    public boolean serverStreaming;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$MethodDescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$MethodDescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$MethodDescriptorProto() {
        clear();
    }

    public DescriptorProtos$MethodDescriptorProto clear() {
        this.name = "";
        this.inputType = "";
        this.outputType = "";
        this.options = null;
        this.clientStreaming = false;
        this.serverStreaming = false;
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            output.writeString(1, this.name);
        }
        if (this.inputType != null && !this.inputType.equals("")) {
            output.writeString(2, this.inputType);
        }
        if (this.outputType != null && !this.outputType.equals("")) {
            output.writeString(3, this.outputType);
        }
        if (this.options != null) {
            output.writeMessage(4, this.options);
        }
        if (this.clientStreaming) {
            output.writeBool(5, this.clientStreaming);
        }
        if (this.serverStreaming) {
            output.writeBool(6, this.serverStreaming);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        if (this.inputType != null && !this.inputType.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.inputType);
        }
        if (this.outputType != null && !this.outputType.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.outputType);
        }
        if (this.options != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, this.options);
        }
        if (this.clientStreaming) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, this.clientStreaming);
        }
        return this.serverStreaming ? iComputeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(6, this.serverStreaming) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$MethodDescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.name = input.readString();
            } else if (tag == 18) {
                this.inputType = input.readString();
            } else if (tag == 26) {
                this.outputType = input.readString();
            } else if (tag == 34) {
                if (this.options == null) {
                    this.options = new DescriptorProtos$MethodOptions();
                }
                input.readMessage(this.options);
            } else if (tag == 40) {
                this.clientStreaming = input.readBool();
            } else if (tag != 48) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                this.serverStreaming = input.readBool();
            }
        }
    }

    public static DescriptorProtos$MethodDescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$MethodDescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$MethodDescriptorProto(), data);
    }

    public static DescriptorProtos$MethodDescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$MethodDescriptorProto().mergeFrom(input);
    }
}
