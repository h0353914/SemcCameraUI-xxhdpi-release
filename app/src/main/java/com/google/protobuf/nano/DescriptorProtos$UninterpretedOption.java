package com.google.protobuf.nano;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$UninterpretedOption extends ExtendableMessageNano<DescriptorProtos$UninterpretedOption> {
    private static volatile DescriptorProtos$UninterpretedOption[] _emptyArray;
    public String aggregateValue;
    public double doubleValue;
    public String identifierValue;
    public DescriptorProtos$UninterpretedOption$NamePart[] name;
    public long negativeIntValue;
    public long positiveIntValue;
    public byte[] stringValue;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    public static DescriptorProtos$UninterpretedOption[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$UninterpretedOption[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$UninterpretedOption() {
        clear();
    }

    public DescriptorProtos$UninterpretedOption clear() {
        this.name = DescriptorProtos$UninterpretedOption$NamePart.emptyArray();
        this.identifierValue = "";
        this.positiveIntValue = 0L;
        this.negativeIntValue = 0L;
        this.doubleValue = 0.0d;
        this.stringValue = WireFormatNano.EMPTY_BYTES;
        this.aggregateValue = "";
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.name != null && this.name.length > 0) {
            for (int i = 0; i < this.name.length; i++) {
                DescriptorProtos$UninterpretedOption$NamePart descriptorProtos$UninterpretedOption$NamePart = this.name[i];
                if (descriptorProtos$UninterpretedOption$NamePart != null) {
                    output.writeMessage(2, descriptorProtos$UninterpretedOption$NamePart);
                }
            }
        }
        if (this.identifierValue != null && !this.identifierValue.equals("")) {
            output.writeString(3, this.identifierValue);
        }
        if (this.positiveIntValue != 0) {
            output.writeUInt64(4, this.positiveIntValue);
        }
        if (this.negativeIntValue != 0) {
            output.writeInt64(5, this.negativeIntValue);
        }
        if (Double.doubleToLongBits(this.doubleValue) != Double.doubleToLongBits(0.0d)) {
            output.writeDouble(6, this.doubleValue);
        }
        if (!Arrays.equals(this.stringValue, WireFormatNano.EMPTY_BYTES)) {
            output.writeBytes(7, this.stringValue);
        }
        if (this.aggregateValue != null && !this.aggregateValue.equals("")) {
            output.writeString(8, this.aggregateValue);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && this.name.length > 0) {
            for (int i = 0; i < this.name.length; i++) {
                DescriptorProtos$UninterpretedOption$NamePart descriptorProtos$UninterpretedOption$NamePart = this.name[i];
                if (descriptorProtos$UninterpretedOption$NamePart != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, descriptorProtos$UninterpretedOption$NamePart);
                }
            }
        }
        if (this.identifierValue != null && !this.identifierValue.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.identifierValue);
        }
        if (this.positiveIntValue != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(4, this.positiveIntValue);
        }
        if (this.negativeIntValue != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(5, this.negativeIntValue);
        }
        if (Double.doubleToLongBits(this.doubleValue) != Double.doubleToLongBits(0.0d)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeDoubleSize(6, this.doubleValue);
        }
        if (!Arrays.equals(this.stringValue, WireFormatNano.EMPTY_BYTES)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(7, this.stringValue);
        }
        return (this.aggregateValue == null || this.aggregateValue.equals("")) ? iComputeSerializedSize : iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(8, this.aggregateValue);
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$UninterpretedOption mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 18);
                int length = this.name == null ? 0 : this.name.length;
                DescriptorProtos$UninterpretedOption$NamePart[] descriptorProtos$UninterpretedOption$NamePartArr = new DescriptorProtos$UninterpretedOption$NamePart[repeatedFieldArrayLength + length];
                if (length != 0) {
                    System.arraycopy(this.name, 0, descriptorProtos$UninterpretedOption$NamePartArr, 0, length);
                }
                while (length < descriptorProtos$UninterpretedOption$NamePartArr.length - 1) {
                    descriptorProtos$UninterpretedOption$NamePartArr[length] = new DescriptorProtos$UninterpretedOption$NamePart();
                    input.readMessage(descriptorProtos$UninterpretedOption$NamePartArr[length]);
                    input.readTag();
                    length++;
                }
                descriptorProtos$UninterpretedOption$NamePartArr[length] = new DescriptorProtos$UninterpretedOption$NamePart();
                input.readMessage(descriptorProtos$UninterpretedOption$NamePartArr[length]);
                this.name = descriptorProtos$UninterpretedOption$NamePartArr;
            } else if (tag == 26) {
                this.identifierValue = input.readString();
            } else if (tag == 32) {
                this.positiveIntValue = input.readUInt64();
            } else if (tag == 40) {
                this.negativeIntValue = input.readInt64();
            } else if (tag == 49) {
                this.doubleValue = input.readDouble();
            } else if (tag == 58) {
                this.stringValue = input.readBytes();
            } else if (tag != 66) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                this.aggregateValue = input.readString();
            }
        }
    }

    public static DescriptorProtos$UninterpretedOption parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$UninterpretedOption) MessageNano.mergeFrom(new DescriptorProtos$UninterpretedOption(), data);
    }

    public static DescriptorProtos$UninterpretedOption parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$UninterpretedOption().mergeFrom(input);
    }
}
