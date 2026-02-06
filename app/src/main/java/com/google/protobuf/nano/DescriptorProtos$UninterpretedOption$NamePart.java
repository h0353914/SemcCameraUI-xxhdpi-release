package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$UninterpretedOption$NamePart extends ExtendableMessageNano<DescriptorProtos$UninterpretedOption$NamePart> {
    private static volatile DescriptorProtos$UninterpretedOption$NamePart[] _emptyArray;
    public boolean isExtension;
    public String namePart;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$UninterpretedOption$NamePart[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$UninterpretedOption$NamePart[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$UninterpretedOption$NamePart() {
        clear();
    }

    public DescriptorProtos$UninterpretedOption$NamePart clear() {
        this.namePart = "";
        this.isExtension = false;
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        output.writeString(1, this.namePart);
        output.writeBool(2, this.isExtension);
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        return super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.namePart) + CodedOutputByteBufferNano.computeBoolSize(2, this.isExtension);
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$UninterpretedOption$NamePart mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.namePart = input.readString();
            } else if (tag != 16) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                this.isExtension = input.readBool();
            }
        }
    }

    public static DescriptorProtos$UninterpretedOption$NamePart parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$UninterpretedOption$NamePart) MessageNano.mergeFrom(new DescriptorProtos$UninterpretedOption$NamePart(), data);
    }

    public static DescriptorProtos$UninterpretedOption$NamePart parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$UninterpretedOption$NamePart().mergeFrom(input);
    }
}
