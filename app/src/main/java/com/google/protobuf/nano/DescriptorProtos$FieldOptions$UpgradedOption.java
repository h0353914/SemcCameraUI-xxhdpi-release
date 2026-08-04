package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$FieldOptions$UpgradedOption extends ExtendableMessageNano<DescriptorProtos$FieldOptions$UpgradedOption> {
    private static volatile DescriptorProtos$FieldOptions$UpgradedOption[] _emptyArray;
    public String name;
    public String value;
    public static DescriptorProtos$FieldOptions$UpgradedOption[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$FieldOptions$UpgradedOption[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$FieldOptions$UpgradedOption() {
        clear();
    }

    public DescriptorProtos$FieldOptions$UpgradedOption clear() {
        this.name = "";
        this.value = "";
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            output.writeString(1, this.name);
        }
        if (this.value != null && !this.value.equals("")) {
            output.writeString(2, this.value);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        return (this.value == null || this.value.equals("")) ? iComputeSerializedSize : iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(2, this.value);
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$FieldOptions$UpgradedOption mergeFrom(CodedInputByteBufferNano input) throws IOException {
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
                this.value = input.readString();
            }
        }
    }

    public static DescriptorProtos$FieldOptions$UpgradedOption parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$FieldOptions$UpgradedOption) MessageNano.mergeFrom(new DescriptorProtos$FieldOptions$UpgradedOption(), data);
    }

    public static DescriptorProtos$FieldOptions$UpgradedOption parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$FieldOptions$UpgradedOption().mergeFrom(input);
    }
}
