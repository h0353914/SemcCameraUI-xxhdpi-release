package com.google.protobuf.nano;

import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageLite;
import com.google.protobuf.nano.ExtendableMessageNano;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class Extension<M extends ExtendableMessageNano<M>, T> {
    public static final int TYPE_BOOL = 8;
    public static final int TYPE_BYTES = 12;
    public static final int TYPE_DOUBLE = 1;
    public static final int TYPE_ENUM = 14;
    public static final int TYPE_FIXED32 = 7;
    public static final int TYPE_FIXED64 = 6;
    public static final int TYPE_FLOAT = 2;
    public static final int TYPE_GROUP = 10;
    public static final int TYPE_INT32 = 5;
    public static final int TYPE_INT64 = 3;
    public static final int TYPE_MESSAGE = 11;
    public static final int TYPE_SFIXED32 = 15;
    public static final int TYPE_SFIXED64 = 16;
    public static final int TYPE_SINT32 = 17;
    public static final int TYPE_SINT64 = 18;
    public static final int TYPE_STRING = 9;
    public static final int TYPE_UINT32 = 13;
    public static final int TYPE_UINT64 = 4;
    protected final Class<T> clazz;
    protected final GeneratedMessageLite<?, ?> defaultInstance;
    protected final boolean repeated;
    public final int tag;
    protected final int type;

    /* synthetic */ Extension(int i, Class cls, int i2, boolean z, Extension$1 extension$1) {
        this(i, cls, i2, z);
    }

    @Deprecated
    public static <M extends ExtendableMessageNano<M>, T extends MessageNano> Extension<M, T> createMessageTyped(int type, Class<T> clazz, int tag) {
        return new Extension<>(type, clazz, tag, false);
    }

    public static <M extends ExtendableMessageNano<M>, T extends MessageNano> Extension<M, T> createMessageTyped(int type, Class<T> clazz, long tag) {
        return new Extension<>(type, clazz, (int) tag, false);
    }

    /* JADX WARN: Incorrect types in method signature: <M:Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;T:Lcom/google/protobuf/GeneratedMessageLite<**>;>(ILjava/lang/Class<TT;>;TT;J)Lcom/google/protobuf/nano/Extension<TM;TT;>; */
    public static Extension createMessageLiteTyped(int type, Class clazz, GeneratedMessageLite defaultInstance, long tag) {
        return new Extension(type, clazz, (GeneratedMessageLite<?, ?>) defaultInstance, (int) tag, false);
    }

    public static <M extends ExtendableMessageNano<M>, T extends MessageNano> Extension<M, T[]> createRepeatedMessageTyped(int type, Class<T[]> clazz, long tag) {
        return new Extension<>(type, clazz, (int) tag, true);
    }

    /* JADX WARN: Incorrect types in method signature: <M:Lcom/google/protobuf/nano/ExtendableMessageNano<TM;>;T:Lcom/google/protobuf/GeneratedMessageLite<**>;>(ILjava/lang/Class<[TT;>;TT;J)Lcom/google/protobuf/nano/Extension<TM;[TT;>; */
    public static Extension createRepeatedMessageLiteTyped(int type, Class clazz, GeneratedMessageLite defaultInstance, long tag) {
        return new Extension(type, clazz, (GeneratedMessageLite<?, ?>) defaultInstance, (int) tag, true);
    }

    public static <M extends ExtendableMessageNano<M>, T> Extension<M, T> createPrimitiveTyped(int type, Class<T> clazz, long tag) {
        return new Extension$PrimitiveExtension(type, clazz, (int) tag, false, 0, 0);
    }

    public static <M extends ExtendableMessageNano<M>, T> Extension<M, T> createRepeatedPrimitiveTyped(int type, Class<T> clazz, long tag, long nonPackedTag, long packedTag) {
        return new Extension$PrimitiveExtension(type, clazz, (int) tag, true, (int) nonPackedTag, (int) packedTag);
    }

    private Extension(int type, Class<T> clazz, int tag, boolean repeated) {
        this(type, clazz, (GeneratedMessageLite<?, ?>) null, tag, repeated);
    }

    private Extension(int type, Class<T> clazz, GeneratedMessageLite<?, ?> defaultInstance, int tag, boolean repeated) {
        this.type = type;
        this.clazz = clazz;
        this.tag = tag;
        this.repeated = repeated;
        this.defaultInstance = defaultInstance;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Extension)) {
            return false;
        }
        Extension extension = (Extension) other;
        return this.type == extension.type && this.clazz == extension.clazz && this.tag == extension.tag && this.repeated == extension.repeated;
    }

    public int hashCode() {
        return (31 * (((((1147 + this.type) * 31) + this.clazz.hashCode()) * 31) + this.tag)) + (this.repeated ? 1 : 0);
    }

    final T getValueFrom(List<UnknownFieldData> unknownFields) {
        if (unknownFields == null) {
            return null;
        }
        return this.repeated ? getRepeatedValueFrom(unknownFields) : getSingularValueFrom(unknownFields);
    }

    private T getRepeatedValueFrom(List<UnknownFieldData> unknownFields) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < unknownFields.size(); i++) {
            UnknownFieldData unknownFieldData = unknownFields.get(i);
            if (unknownFieldData.bytes.length != 0) {
                readDataInto(unknownFieldData, arrayList);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        T tCast = this.clazz.cast(Array.newInstance(this.clazz.getComponentType(), size));
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(tCast, i2, arrayList.get(i2));
        }
        return tCast;
    }

    private T getSingularValueFrom(List<UnknownFieldData> unknownFields) {
        if (unknownFields.isEmpty()) {
            return null;
        }
        return this.clazz.cast(readData(CodedInputByteBufferNano.newInstance(unknownFields.get(unknownFields.size() - 1).bytes)));
    }

    protected Object readData(CodedInputByteBufferNano input) {
        Class componentType = this.repeated ? this.clazz.getComponentType() : this.clazz;
        try {
            switch (this.type) {
                case 10:
                    MessageNano messageNano = (MessageNano) componentType.newInstance();
                    input.readGroup(messageNano, WireFormatNano.getTagFieldNumber(this.tag));
                    return messageNano;
                case 11:
                    if (this.defaultInstance != null) {
                        return input.readMessageLite(this.defaultInstance.getParserForType());
                    }
                    MessageNano messageNano2 = (MessageNano) componentType.newInstance();
                    input.readMessage(messageNano2);
                    return messageNano2;
                default:
                    int i = this.type;
                    StringBuilder sb = new StringBuilder(24);
                    sb.append("Unknown type ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("Error reading extension field", e);
        } catch (IllegalAccessException e2) {
            String strValueOf = String.valueOf(componentType);
            StringBuilder sb2 = new StringBuilder(33 + String.valueOf(strValueOf).length());
            sb2.append("Error creating instance of class ");
            sb2.append(strValueOf);
            throw new IllegalArgumentException(sb2.toString(), e2);
        } catch (InstantiationException e3) {
            String strValueOf2 = String.valueOf(componentType);
            StringBuilder sb3 = new StringBuilder(33 + String.valueOf(strValueOf2).length());
            sb3.append("Error creating instance of class ");
            sb3.append(strValueOf2);
            throw new IllegalArgumentException(sb3.toString(), e3);
        }
    }

    protected void readDataInto(UnknownFieldData data, List<Object> resultList) {
        resultList.add(readData(CodedInputByteBufferNano.newInstance(data.bytes)));
    }

    void writeTo(Object value, CodedOutputByteBufferNano output) throws IOException {
        if (this.repeated) {
            writeRepeatedData(value, output);
        } else {
            writeSingularData(value, output);
        }
    }

    void writeAsMessageSetTo(Object value, CodedOutputByteBufferNano output) throws IOException {
        if (this.repeated) {
            writeRepeatedDataAsMessageSet(value, output);
        } else {
            writeSingularDataAsMessageSet(value, output);
        }
    }

    protected void writeSingularData(Object value, CodedOutputByteBufferNano out) {
        try {
            out.writeRawVarint32(this.tag);
            switch (this.type) {
                case 10:
                    int tagFieldNumber = WireFormatNano.getTagFieldNumber(this.tag);
                    if (this.defaultInstance == null) {
                        out.writeGroupNoTag((MessageNano) value);
                    } else {
                        out.writeGroupNoTag((MessageLite) value);
                    }
                    out.writeTag(tagFieldNumber, 4);
                    return;
                case 11:
                    if (this.defaultInstance == null) {
                        out.writeMessageNoTag((MessageNano) value);
                        return;
                    } else {
                        out.writeMessageNoTag((MessageLite) value);
                        return;
                    }
                default:
                    int i = this.type;
                    StringBuilder sb = new StringBuilder(24);
                    sb.append("Unknown type ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    protected void writeSingularDataAsMessageSet(Object value, CodedOutputByteBufferNano out) throws IOException {
        out.writeMessageSetExtension(WireFormatNano.getTagFieldNumber(this.tag), (MessageNano) value);
    }

    protected void writeRepeatedData(Object array, CodedOutputByteBufferNano output) {
        int length = Array.getLength(array);
        for (int i = 0; i < length; i++) {
            Object obj = Array.get(array, i);
            if (obj != null) {
                writeSingularData(obj, output);
            }
        }
    }

    protected void writeRepeatedDataAsMessageSet(Object array, CodedOutputByteBufferNano output) throws IOException {
        int length = Array.getLength(array);
        for (int i = 0; i < length; i++) {
            Object obj = Array.get(array, i);
            if (obj != null) {
                writeSingularDataAsMessageSet(obj, output);
            }
        }
    }

    int computeSerializedSize(Object value) {
        if (this.repeated) {
            return computeRepeatedSerializedSize(value);
        }
        return computeSingularSerializedSize(value);
    }

    int computeSerializedSizeAsMessageSet(Object value) {
        if (this.repeated) {
            return computeRepeatedSerializedSizeAsMessageSet(value);
        }
        return computeSingularSerializedSizeAsMessageSet(value);
    }

    protected int computeRepeatedSerializedSize(Object array) {
        int length = Array.getLength(array);
        int iComputeSingularSerializedSize = 0;
        for (int i = 0; i < length; i++) {
            if (Array.get(array, i) != null) {
                iComputeSingularSerializedSize += computeSingularSerializedSize(Array.get(array, i));
            }
        }
        return iComputeSingularSerializedSize;
    }

    protected int computeSingularSerializedSize(Object value) {
        int tagFieldNumber = WireFormatNano.getTagFieldNumber(this.tag);
        switch (this.type) {
            case 10:
                if (this.defaultInstance == null) {
                    return CodedOutputByteBufferNano.computeGroupSize(tagFieldNumber, (MessageNano) value);
                }
                return CodedOutputStream.computeGroupSize(tagFieldNumber, (MessageLite) value);
            case 11:
                if (this.defaultInstance == null) {
                    return CodedOutputByteBufferNano.computeMessageSize(tagFieldNumber, (MessageNano) value);
                }
                return CodedOutputStream.computeMessageSize(tagFieldNumber, (MessageLite) value);
            default:
                int i = this.type;
                StringBuilder sb = new StringBuilder(24);
                sb.append("Unknown type ");
                sb.append(i);
                throw new IllegalArgumentException(sb.toString());
        }
    }

    protected int computeRepeatedSerializedSizeAsMessageSet(Object array) {
        int length = Array.getLength(array);
        int iComputeSingularSerializedSizeAsMessageSet = 0;
        for (int i = 0; i < length; i++) {
            if (Array.get(array, i) != null) {
                iComputeSingularSerializedSizeAsMessageSet += computeSingularSerializedSizeAsMessageSet(Array.get(array, i));
            }
        }
        return iComputeSingularSerializedSizeAsMessageSet;
    }

    protected int computeSingularSerializedSizeAsMessageSet(Object value) {
        return CodedOutputByteBufferNano.computeMessageSetExtensionSize(WireFormatNano.getTagFieldNumber(this.tag), (MessageNano) value);
    }
}
