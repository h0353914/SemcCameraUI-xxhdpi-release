package com.google.protobuf.nano;

import java.io.IOException;

public final class DescriptorProtos$GeneratedCodeInfo extends ExtendableMessageNano<DescriptorProtos$GeneratedCodeInfo> {
    private static volatile DescriptorProtos$GeneratedCodeInfo[] _emptyArray;
    public DescriptorProtos$GeneratedCodeInfo$Annotation[] annotation;
    public static DescriptorProtos$GeneratedCodeInfo[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$GeneratedCodeInfo[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$GeneratedCodeInfo() {
        clear();
    }

    public DescriptorProtos$GeneratedCodeInfo clear() {
        this.annotation = DescriptorProtos$GeneratedCodeInfo$Annotation.emptyArray();
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.annotation != null && this.annotation.length > 0) {
            for (int i = 0; i < this.annotation.length; i++) {
                DescriptorProtos$GeneratedCodeInfo$Annotation descriptorProtos$GeneratedCodeInfo$Annotation = this.annotation[i];
                if (descriptorProtos$GeneratedCodeInfo$Annotation != null) {
                    output.writeMessage(1, descriptorProtos$GeneratedCodeInfo$Annotation);
                }
            }
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.annotation != null && this.annotation.length > 0) {
            for (int i = 0; i < this.annotation.length; i++) {
                DescriptorProtos$GeneratedCodeInfo$Annotation descriptorProtos$GeneratedCodeInfo$Annotation = this.annotation[i];
                if (descriptorProtos$GeneratedCodeInfo$Annotation != null) {
                    iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, descriptorProtos$GeneratedCodeInfo$Annotation);
                }
            }
        }
        return iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$GeneratedCodeInfo mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag != 10) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 10);
                int length = this.annotation == null ? 0 : this.annotation.length;
                DescriptorProtos$GeneratedCodeInfo$Annotation[] descriptorProtos$GeneratedCodeInfo$AnnotationArr = new DescriptorProtos$GeneratedCodeInfo$Annotation[repeatedFieldArrayLength + length];
                if (length != 0) {
                    System.arraycopy(this.annotation, 0, descriptorProtos$GeneratedCodeInfo$AnnotationArr, 0, length);
                }
                while (length < descriptorProtos$GeneratedCodeInfo$AnnotationArr.length - 1) {
                    descriptorProtos$GeneratedCodeInfo$AnnotationArr[length] = new DescriptorProtos$GeneratedCodeInfo$Annotation();
                    input.readMessage(descriptorProtos$GeneratedCodeInfo$AnnotationArr[length]);
                    input.readTag();
                    length++;
                }
                descriptorProtos$GeneratedCodeInfo$AnnotationArr[length] = new DescriptorProtos$GeneratedCodeInfo$Annotation();
                input.readMessage(descriptorProtos$GeneratedCodeInfo$AnnotationArr[length]);
                this.annotation = descriptorProtos$GeneratedCodeInfo$AnnotationArr;
            }
        }
    }

    public static DescriptorProtos$GeneratedCodeInfo parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$GeneratedCodeInfo) MessageNano.mergeFrom(new DescriptorProtos$GeneratedCodeInfo(), data);
    }

    public static DescriptorProtos$GeneratedCodeInfo parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$GeneratedCodeInfo().mergeFrom(input);
    }
}
