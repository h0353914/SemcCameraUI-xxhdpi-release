package com.google.protobuf.nano;

import com.google.protobuf.nano.ExtendableMessageNano;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.List;

class Extension$PrimitiveExtension<M extends ExtendableMessageNano<M>, T> extends Extension<M, T> {
    private final int nonPackedTag;
    private final int packedTag;

    public Extension$PrimitiveExtension(int type, Class<T> clazz, int tag, boolean repeated, int nonPackedTag, int packedTag) {
        super(type, clazz, tag, repeated, (Extension$1) null);
        this.nonPackedTag = nonPackedTag;
        this.packedTag = packedTag;
    }

    @Override // com.google.protobuf.nano.Extension
    protected Object readData(CodedInputByteBufferNano input) {
        try {
            switch (this.type) {
                case 1:
                    return Double.valueOf(input.readDouble());
                case 2:
                    return Float.valueOf(input.readFloat());
                case 3:
                    return Long.valueOf(input.readInt64());
                case 4:
                    return Long.valueOf(input.readUInt64());
                case 5:
                    return Integer.valueOf(input.readInt32());
                case 6:
                    return Long.valueOf(input.readFixed64());
                case 7:
                    return Integer.valueOf(input.readFixed32());
                case 8:
                    return Boolean.valueOf(input.readBool());
                case 9:
                    return input.readString();
                case 10:
                case 11:
                default:
                    int i = this.type;
                    StringBuilder sb = new StringBuilder(24);
                    sb.append("Unknown type ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
                case 12:
                    return input.readBytes();
                case 13:
                    return Integer.valueOf(input.readUInt32());
                case 14:
                    return Integer.valueOf(input.readEnum());
                case 15:
                    return Integer.valueOf(input.readSFixed32());
                case 16:
                    return Long.valueOf(input.readSFixed64());
                case 17:
                    return Integer.valueOf(input.readSInt32());
                case 18:
                    return Long.valueOf(input.readSInt64());
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("Error reading extension field", e);
        }
    }

    @Override // com.google.protobuf.nano.Extension
    protected void readDataInto(UnknownFieldData data, List<Object> resultList) {
        if (data.tag == this.nonPackedTag) {
            resultList.add(readData(CodedInputByteBufferNano.newInstance(data.bytes)));
            return;
        }
        CodedInputByteBufferNano codedInputByteBufferNanoNewInstance = CodedInputByteBufferNano.newInstance(data.bytes);
        try {
            codedInputByteBufferNanoNewInstance.pushLimit(codedInputByteBufferNanoNewInstance.readRawVarint32());
            while (!codedInputByteBufferNanoNewInstance.isAtEnd()) {
                resultList.add(readData(codedInputByteBufferNanoNewInstance));
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("Error reading extension field", e);
        }
    }

    @Override // com.google.protobuf.nano.Extension
    protected final void writeSingularData(Object value, CodedOutputByteBufferNano output) {
        try {
            output.writeRawVarint32(this.tag);
            switch (this.type) {
                case 1:
                    output.writeDoubleNoTag(((Double) value).doubleValue());
                    return;
                case 2:
                    output.writeFloatNoTag(((Float) value).floatValue());
                    return;
                case 3:
                    output.writeInt64NoTag(((Long) value).longValue());
                    return;
                case 4:
                    output.writeUInt64NoTag(((Long) value).longValue());
                    return;
                case 5:
                    output.writeInt32NoTag(((Integer) value).intValue());
                    return;
                case 6:
                    output.writeFixed64NoTag(((Long) value).longValue());
                    return;
                case 7:
                    output.writeFixed32NoTag(((Integer) value).intValue());
                    return;
                case 8:
                    output.writeBoolNoTag(((Boolean) value).booleanValue());
                    return;
                case 9:
                    output.writeStringNoTag((String) value);
                    return;
                case 10:
                case 11:
                default:
                    int i = this.type;
                    StringBuilder sb = new StringBuilder(24);
                    sb.append("Unknown type ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
                case 12:
                    output.writeBytesNoTag((byte[]) value);
                    return;
                case 13:
                    output.writeUInt32NoTag(((Integer) value).intValue());
                    return;
                case 14:
                    output.writeEnumNoTag(((Integer) value).intValue());
                    return;
                case 15:
                    output.writeSFixed32NoTag(((Integer) value).intValue());
                    return;
                case 16:
                    output.writeSFixed64NoTag(((Long) value).longValue());
                    return;
                case 17:
                    output.writeSInt32NoTag(((Integer) value).intValue());
                    return;
                case 18:
                    output.writeSInt64NoTag(((Long) value).longValue());
                    return;
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.protobuf.nano.Extension
    protected void writeRepeatedData(Object array, CodedOutputByteBufferNano output) {
        if (this.tag == this.nonPackedTag) {
            super.writeRepeatedData(array, output);
            return;
        }
        if (this.tag == this.packedTag) {
            int length = Array.getLength(array);
            int iComputePackedDataSize = computePackedDataSize(array);
            try {
                output.writeRawVarint32(this.tag);
                output.writeRawVarint32(iComputePackedDataSize);
                int i = this.type;
                int i2 = 0;
                switch (i) {
                    case 1:
                        while (i2 < length) {
                            output.writeDoubleNoTag(Array.getDouble(array, i2));
                            i2++;
                        }
                        return;
                    case 2:
                        while (i2 < length) {
                            output.writeFloatNoTag(Array.getFloat(array, i2));
                            i2++;
                        }
                        return;
                    case 3:
                        while (i2 < length) {
                            output.writeInt64NoTag(Array.getLong(array, i2));
                            i2++;
                        }
                        return;
                    case 4:
                        while (i2 < length) {
                            output.writeUInt64NoTag(Array.getLong(array, i2));
                            i2++;
                        }
                        return;
                    case 5:
                        while (i2 < length) {
                            output.writeInt32NoTag(Array.getInt(array, i2));
                            i2++;
                        }
                        return;
                    case 6:
                        while (i2 < length) {
                            output.writeFixed64NoTag(Array.getLong(array, i2));
                            i2++;
                        }
                        return;
                    case 7:
                        while (i2 < length) {
                            output.writeFixed32NoTag(Array.getInt(array, i2));
                            i2++;
                        }
                        return;
                    case 8:
                        while (i2 < length) {
                            output.writeBoolNoTag(Array.getBoolean(array, i2));
                            i2++;
                        }
                        return;
                    default:
                        switch (i) {
                            case 13:
                                while (i2 < length) {
                                    output.writeUInt32NoTag(Array.getInt(array, i2));
                                    i2++;
                                }
                                return;
                            case 14:
                                while (i2 < length) {
                                    output.writeEnumNoTag(Array.getInt(array, i2));
                                    i2++;
                                }
                                return;
                            case 15:
                                while (i2 < length) {
                                    output.writeSFixed32NoTag(Array.getInt(array, i2));
                                    i2++;
                                }
                                return;
                            case 16:
                                while (i2 < length) {
                                    output.writeSFixed64NoTag(Array.getLong(array, i2));
                                    i2++;
                                }
                                return;
                            case 17:
                                while (i2 < length) {
                                    output.writeSInt32NoTag(Array.getInt(array, i2));
                                    i2++;
                                }
                                return;
                            case 18:
                                while (i2 < length) {
                                    output.writeSInt64NoTag(Array.getLong(array, i2));
                                    i2++;
                                }
                                return;
                            default:
                                int i3 = this.type;
                                StringBuilder sb = new StringBuilder(27);
                                sb.append("Unpackable type ");
                                sb.append(i3);
                                throw new IllegalArgumentException(sb.toString());
                        }
                }
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
        int i4 = this.tag;
        int i5 = this.nonPackedTag;
        int i6 = this.packedTag;
        StringBuilder sb2 = new StringBuilder(124);
        sb2.append("Unexpected repeated extension tag ");
        sb2.append(i4);
        sb2.append(", unequal to both non-packed variant ");
        sb2.append(i5);
        sb2.append(" and packed variant ");
        sb2.append(i6);
        throw new IllegalArgumentException(sb2.toString());
    }

    private int computePackedDataSize(Object array) {
        int length = Array.getLength(array);
        switch (this.type) {
            case 1:
            case 6:
            case 16:
                return length * 8;
            case 2:
            case 7:
            case 15:
                return length * 4;
            case 3: {
                int i = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    i += CodedOutputByteBufferNano.computeInt64SizeNoTag(Array.getLong(array, i2));
                }
                return i;
            }
            case 4: {
                int i3 = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    i3 += CodedOutputByteBufferNano.computeUInt64SizeNoTag(Array.getLong(array, i4));
                }
                return i3;
            }
            case 5: {
                int i5 = 0;
                for (int i6 = 0; i6 < length; i6++) {
                    i5 += CodedOutputByteBufferNano.computeInt32SizeNoTag(Array.getInt(array, i6));
                }
                return i5;
            }
            case 8:
                return length;
            case 13: {
                int i7 = 0;
                for (int i8 = 0; i8 < length; i8++) {
                    i7 += CodedOutputByteBufferNano.computeUInt32SizeNoTag(Array.getInt(array, i8));
                }
                return i7;
            }
            case 14: {
                int i9 = 0;
                for (int i10 = 0; i10 < length; i10++) {
                    i9 += CodedOutputByteBufferNano.computeEnumSizeNoTag(Array.getInt(array, i10));
                }
                return i9;
            }
            case 17: {
                int i11 = 0;
                for (int i12 = 0; i12 < length; i12++) {
                    i11 += CodedOutputByteBufferNano.computeSInt32SizeNoTag(Array.getInt(array, i12));
                }
                return i11;
            }
            case 18: {
                int i13 = 0;
                for (int i14 = 0; i14 < length; i14++) {
                    i13 += CodedOutputByteBufferNano.computeSInt64SizeNoTag(Array.getLong(array, i14));
                }
                return i13;
            }
            default:
                int i15 = this.type;
                StringBuilder sb = new StringBuilder(40);
                sb.append("Unexpected non-packable type ");
                sb.append(i15);
                throw new IllegalArgumentException(sb.toString());
        }
    }

    @Override // com.google.protobuf.nano.Extension
    protected int computeRepeatedSerializedSize(Object array) {
        if (this.tag == this.nonPackedTag) {
            return super.computeRepeatedSerializedSize(array);
        }
        if (this.tag == this.packedTag) {
            int iComputePackedDataSize = computePackedDataSize(array);
            return iComputePackedDataSize + CodedOutputByteBufferNano.computeRawVarint32Size(iComputePackedDataSize) + CodedOutputByteBufferNano.computeRawVarint32Size(this.tag);
        }
        int i = this.tag;
        int i2 = this.nonPackedTag;
        int i3 = this.packedTag;
        StringBuilder sb = new StringBuilder(124);
        sb.append("Unexpected repeated extension tag ");
        sb.append(i);
        sb.append(", unequal to both non-packed variant ");
        sb.append(i2);
        sb.append(" and packed variant ");
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.protobuf.nano.Extension
    protected final int computeSingularSerializedSize(Object value) {
        int tagFieldNumber = WireFormatNano.getTagFieldNumber(this.tag);
        switch (this.type) {
            case 1:
                return CodedOutputByteBufferNano.computeDoubleSize(tagFieldNumber, ((Double) value).doubleValue());
            case 2:
                return CodedOutputByteBufferNano.computeFloatSize(tagFieldNumber, ((Float) value).floatValue());
            case 3:
                return CodedOutputByteBufferNano.computeInt64Size(tagFieldNumber, ((Long) value).longValue());
            case 4:
                return CodedOutputByteBufferNano.computeUInt64Size(tagFieldNumber, ((Long) value).longValue());
            case 5:
                return CodedOutputByteBufferNano.computeInt32Size(tagFieldNumber, ((Integer) value).intValue());
            case 6:
                return CodedOutputByteBufferNano.computeFixed64Size(tagFieldNumber, ((Long) value).longValue());
            case 7:
                return CodedOutputByteBufferNano.computeFixed32Size(tagFieldNumber, ((Integer) value).intValue());
            case 8:
                return CodedOutputByteBufferNano.computeBoolSize(tagFieldNumber, ((Boolean) value).booleanValue());
            case 9:
                return CodedOutputByteBufferNano.computeStringSize(tagFieldNumber, (String) value);
            case 10:
            case 11:
            default:
                int i = this.type;
                StringBuilder sb = new StringBuilder(24);
                sb.append("Unknown type ");
                sb.append(i);
                throw new IllegalArgumentException(sb.toString());
            case 12:
                return CodedOutputByteBufferNano.computeBytesSize(tagFieldNumber, (byte[]) value);
            case 13:
                return CodedOutputByteBufferNano.computeUInt32Size(tagFieldNumber, ((Integer) value).intValue());
            case 14:
                return CodedOutputByteBufferNano.computeEnumSize(tagFieldNumber, ((Integer) value).intValue());
            case 15:
                return CodedOutputByteBufferNano.computeSFixed32Size(tagFieldNumber, ((Integer) value).intValue());
            case 16:
                return CodedOutputByteBufferNano.computeSFixed64Size(tagFieldNumber, ((Long) value).longValue());
            case 17:
                return CodedOutputByteBufferNano.computeSInt32Size(tagFieldNumber, ((Integer) value).intValue());
            case 18:
                return CodedOutputByteBufferNano.computeSInt64Size(tagFieldNumber, ((Long) value).longValue());
        }
    }
}
