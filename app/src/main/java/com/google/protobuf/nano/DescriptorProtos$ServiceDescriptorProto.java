package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$ServiceDescriptorProto extends ExtendableMessageNano<DescriptorProtos$ServiceDescriptorProto> {
    private static volatile DescriptorProtos$ServiceDescriptorProto[] _emptyArray;
    public DescriptorProtos$MethodDescriptorProto[] method;
    public String name;
    public DescriptorProtos$ServiceOptions options;
    public DescriptorProtos$StreamDescriptorProto[] stream;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$ServiceDescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$ServiceDescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$ServiceDescriptorProto() {
        clear();
    }

    public DescriptorProtos$ServiceDescriptorProto clear() {
        this.name = "";
        this.method = DescriptorProtos$MethodDescriptorProto.emptyArray();
        this.stream = DescriptorProtos$StreamDescriptorProto.emptyArray();
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
        if (this.method != null && this.method.length > 0) {
            for (int i = 0; i < this.method.length; i++) {
                DescriptorProtos$MethodDescriptorProto descriptorProtos$MethodDescriptorProto = this.method[i];
                if (descriptorProtos$MethodDescriptorProto != null) {
                    output.writeMessage(2, descriptorProtos$MethodDescriptorProto);
                }
            }
        }
        if (this.options != null) {
            output.writeMessage(3, this.options);
        }
        if (this.stream != null && this.stream.length > 0) {
            for (int i2 = 0; i2 < this.stream.length; i2++) {
                DescriptorProtos$StreamDescriptorProto descriptorProtos$StreamDescriptorProto = this.stream[i2];
                if (descriptorProtos$StreamDescriptorProto != null) {
                    output.writeMessage(4, descriptorProtos$StreamDescriptorProto);
                }
            }
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        if (this.method != null && this.method.length > 0) {
            int iComputeMessageSize = iComputeSerializedSize;
            for (int i = 0; i < this.method.length; i++) {
                DescriptorProtos$MethodDescriptorProto descriptorProtos$MethodDescriptorProto = this.method[i];
                if (descriptorProtos$MethodDescriptorProto != null) {
                    iComputeMessageSize += CodedOutputByteBufferNano.computeMessageSize(2, descriptorProtos$MethodDescriptorProto);
                }
            }
            iComputeSerializedSize = iComputeMessageSize;
        }
        if (this.options != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, this.options);
        }
        if (this.stream != null && this.stream.length > 0) {
            for (int i2 = 0; i2 < this.stream.length; i2++) {
                DescriptorProtos$StreamDescriptorProto descriptorProtos$StreamDescriptorProto = this.stream[i2];
                if (descriptorProtos$StreamDescriptorProto != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, descriptorProtos$StreamDescriptorProto);
                }
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$ServiceDescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.name = input.readString();
            } else if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 18);
                int length = this.method == null ? 0 : this.method.length;
                DescriptorProtos$MethodDescriptorProto[] descriptorProtos$MethodDescriptorProtoArr = new DescriptorProtos$MethodDescriptorProto[repeatedFieldArrayLength + length];
                if (length != 0) {
                    System.arraycopy(this.method, 0, descriptorProtos$MethodDescriptorProtoArr, 0, length);
                }
                while (length < descriptorProtos$MethodDescriptorProtoArr.length - 1) {
                    descriptorProtos$MethodDescriptorProtoArr[length] = new DescriptorProtos$MethodDescriptorProto();
                    input.readMessage(descriptorProtos$MethodDescriptorProtoArr[length]);
                    input.readTag();
                    length++;
                }
                descriptorProtos$MethodDescriptorProtoArr[length] = new DescriptorProtos$MethodDescriptorProto();
                input.readMessage(descriptorProtos$MethodDescriptorProtoArr[length]);
                this.method = descriptorProtos$MethodDescriptorProtoArr;
            } else if (tag == 26) {
                if (this.options == null) {
                    this.options = new DescriptorProtos$ServiceOptions();
                }
                input.readMessage(this.options);
            } else if (tag != 34) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(input, 34);
                int length2 = this.stream == null ? 0 : this.stream.length;
                DescriptorProtos$StreamDescriptorProto[] descriptorProtos$StreamDescriptorProtoArr = new DescriptorProtos$StreamDescriptorProto[repeatedFieldArrayLength2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.stream, 0, descriptorProtos$StreamDescriptorProtoArr, 0, length2);
                }
                while (length2 < descriptorProtos$StreamDescriptorProtoArr.length - 1) {
                    descriptorProtos$StreamDescriptorProtoArr[length2] = new DescriptorProtos$StreamDescriptorProto();
                    input.readMessage(descriptorProtos$StreamDescriptorProtoArr[length2]);
                    input.readTag();
                    length2++;
                }
                descriptorProtos$StreamDescriptorProtoArr[length2] = new DescriptorProtos$StreamDescriptorProto();
                input.readMessage(descriptorProtos$StreamDescriptorProtoArr[length2]);
                this.stream = descriptorProtos$StreamDescriptorProtoArr;
            }
        }
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$ServiceDescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$ServiceDescriptorProto(), data);
    }

    public static DescriptorProtos$ServiceDescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$ServiceDescriptorProto().mergeFrom(input);
    }
}
