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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private int computePackedDataSize(java.lang.Object r6) {
        /*
            r5 = this;
            int r0 = java.lang.reflect.Array.getLength(r6)
            int r1 = r5.type
            r2 = 0
            switch(r1) {
                case 1: goto L94;
                case 2: goto L91;
                case 3: goto L82;
                case 4: goto L73;
                case 5: goto L64;
                case 6: goto L94;
                case 7: goto L91;
                case 8: goto L96;
                default: goto La;
            }
        La:
            switch(r1) {
                case 13: goto L55;
                case 14: goto L46;
                case 15: goto L91;
                case 16: goto L94;
                case 17: goto L37;
                case 18: goto L28;
                default: goto Ld;
            }
        Ld:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            int r5 = r5.type
            r0 = 40
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "Unexpected non-packable type "
            r1.append(r0)
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            r6.<init>(r5)
            throw r6
        L28:
            r5 = r2
        L29:
            if (r2 >= r0) goto L97
            long r3 = java.lang.reflect.Array.getLong(r6, r2)
            int r1 = com.google.protobuf.nano.CodedOutputByteBufferNano.computeSInt64SizeNoTag(r3)
            int r5 = r5 + r1
            int r2 = r2 + 1
            goto L29
        L37:
            r5 = r2
        L38:
            if (r2 >= r0) goto L97
            int r1 = java.lang.reflect.Array.getInt(r6, r2)
            int r1 = com.google.protobuf.nano.CodedOutputByteBufferNano.computeSInt32SizeNoTag(r1)
            int r5 = r5 + r1
            int r2 = r2 + 1
            goto L38
        L46:
            r5 = r2
        L47:
            if (r2 >= r0) goto L97
            int r1 = java.lang.reflect.Array.getInt(r6, r2)
            int r1 = com.google.protobuf.nano.CodedOutputByteBufferNano.computeEnumSizeNoTag(r1)
            int r5 = r5 + r1
            int r2 = r2 + 1
            goto L47
        L55:
            r5 = r2
        L56:
            if (r2 >= r0) goto L97
            int r1 = java.lang.reflect.Array.getInt(r6, r2)
            int r1 = com.google.protobuf.nano.CodedOutputByteBufferNano.computeUInt32SizeNoTag(r1)
            int r5 = r5 + r1
            int r2 = r2 + 1
            goto L56
        L64:
            r5 = r2
        L65:
            if (r2 >= r0) goto L97
            int r1 = java.lang.reflect.Array.getInt(r6, r2)
            int r1 = com.google.protobuf.nano.CodedOutputByteBufferNano.computeInt32SizeNoTag(r1)
            int r5 = r5 + r1
            int r2 = r2 + 1
            goto L65
        L73:
            r5 = r2
        L74:
            if (r2 >= r0) goto L97
            long r3 = java.lang.reflect.Array.getLong(r6, r2)
            int r1 = com.google.protobuf.nano.CodedOutputByteBufferNano.computeUInt64SizeNoTag(r3)
            int r5 = r5 + r1
            int r2 = r2 + 1
            goto L74
        L82:
            r5 = r2
        L83:
            if (r2 >= r0) goto L97
            long r3 = java.lang.reflect.Array.getLong(r6, r2)
            int r1 = com.google.protobuf.nano.CodedOutputByteBufferNano.computeInt64SizeNoTag(r3)
            int r5 = r5 + r1
            int r2 = r2 + 1
            goto L83
        L91:
            int r0 = r0 * 4
            goto L96
        L94:
            int r0 = r0 * 8
        L96:
            r5 = r0
        L97:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.nano.Extension$PrimitiveExtension.computePackedDataSize(java.lang.Object):int");
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
