package com.google.protobuf.nano;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class DescriptorProtos$FieldDescriptorProto extends ExtendableMessageNano<DescriptorProtos$FieldDescriptorProto> {
    private static volatile DescriptorProtos$FieldDescriptorProto[] _emptyArray;
    public String defaultValue;
    public String extendee;
    public String jsonName;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldDescriptorProto$Label.class)
    public int label;
    public String name;
    public int number;
    public int oneofIndex;
    public DescriptorProtos$FieldOptions options;

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldDescriptorProto$Type.class)
    public int type;
    public String typeName;

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldDescriptorProto$Type.class)
    public static int checkTypeOrThrow(int value) {
        if (value >= 1 && value <= 18) {
            return value;
        }
        StringBuilder sb = new StringBuilder(36);
        sb.append(value);
        sb.append(" is not a valid enum Type");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldDescriptorProto$Type.class)
    public static int[] checkTypeOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkTypeOrThrow(i);
        }
        return iArr;
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldDescriptorProto$Label.class)
    public static int checkLabelOrThrow(int value) {
        if (value >= 1 && value <= 3) {
            return value;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append(value);
        sb.append(" is not a valid enum Label");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = DescriptorProtos$FieldDescriptorProto$Label.class)
    public static int[] checkLabelOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkLabelOrThrow(i);
        }
        return iArr;
    }

    public static DescriptorProtos$FieldDescriptorProto[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new DescriptorProtos$FieldDescriptorProto[0];
                }
            }
        }
        return _emptyArray;
    }

    public DescriptorProtos$FieldDescriptorProto() {
        clear();
    }

    public DescriptorProtos$FieldDescriptorProto clear() {
        this.name = "";
        this.number = 0;
        this.label = 1;
        this.type = 1;
        this.typeName = "";
        this.extendee = "";
        this.defaultValue = "";
        this.oneofIndex = 0;
        this.jsonName = "";
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
        if (this.extendee != null && !this.extendee.equals("")) {
            output.writeString(2, this.extendee);
        }
        if (this.number != 0) {
            output.writeInt32(3, this.number);
        }
        if (this.label != 1) {
            output.writeInt32(4, this.label);
        }
        if (this.type != 1) {
            output.writeInt32(5, this.type);
        }
        if (this.typeName != null && !this.typeName.equals("")) {
            output.writeString(6, this.typeName);
        }
        if (this.defaultValue != null && !this.defaultValue.equals("")) {
            output.writeString(7, this.defaultValue);
        }
        if (this.options != null) {
            output.writeMessage(8, this.options);
        }
        if (this.oneofIndex != 0) {
            output.writeInt32(9, this.oneofIndex);
        }
        if (this.jsonName != null && !this.jsonName.equals("")) {
            output.writeString(10, this.jsonName);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.name != null && !this.name.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.name);
        }
        if (this.extendee != null && !this.extendee.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.extendee);
        }
        if (this.number != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.number);
        }
        if (this.label != 1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, this.label);
        }
        if (this.type != 1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(5, this.type);
        }
        if (this.typeName != null && !this.typeName.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.typeName);
        }
        if (this.defaultValue != null && !this.defaultValue.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(7, this.defaultValue);
        }
        if (this.options != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, this.options);
        }
        if (this.oneofIndex != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(9, this.oneofIndex);
        }
        return (this.jsonName == null || this.jsonName.equals("")) ? iComputeSerializedSize : iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(10, this.jsonName);
    }

    @Override // com.google.protobuf.nano.MessageNano
    public DescriptorProtos$FieldDescriptorProto mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 10:
                    this.name = input.readString();
                    break;
                case 18:
                    this.extendee = input.readString();
                    break;
                case 24:
                    this.number = input.readInt32();
                    break;
                case 32:
                    int position = input.getPosition();
                    try {
                        this.label = checkLabelOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused) {
                        input.rewindToPosition(position);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 40:
                    int position2 = input.getPosition();
                    try {
                        this.type = checkTypeOrThrow(input.readInt32());
                    } catch (IllegalArgumentException unused2) {
                        input.rewindToPosition(position2);
                        storeUnknownField(input, tag);
                    }
                    break;
                case 50:
                    this.typeName = input.readString();
                    break;
                case 58:
                    this.defaultValue = input.readString();
                    break;
                case 66:
                    if (this.options == null) {
                        this.options = new DescriptorProtos$FieldOptions();
                    }
                    input.readMessage(this.options);
                    break;
                case 72:
                    this.oneofIndex = input.readInt32();
                    break;
                case 82:
                    this.jsonName = input.readString();
                    break;
                default:
                    if (!super.storeUnknownField(input, tag)) {
                        return this;
                    }
                    break;
                    break;
            }
        }
    }

    public static DescriptorProtos$FieldDescriptorProto parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (DescriptorProtos$FieldDescriptorProto) MessageNano.mergeFrom(new DescriptorProtos$FieldDescriptorProto(), data);
    }

    public static DescriptorProtos$FieldDescriptorProto parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new DescriptorProtos$FieldDescriptorProto().mergeFrom(input);
    }
}
