package com.google.android.apps.lens.library.base.proto.nano;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.ExtendableMessageNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.NanoEnumValue;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class LensSdkParamsProto$LensSdkParams extends ExtendableMessageNano<LensSdkParamsProto$LensSdkParams> implements Cloneable {
    private static volatile LensSdkParamsProto$LensSdkParams[] _emptyArray;
    public String agsaVersionName;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public int arStickersAvailabilityStatus;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public int lensAvailabilityStatus;
    public String lensSdkVersion;

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ ExtendableMessageNano clone() throws CloneNotSupportedException {
        return clone();
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano clone() throws CloneNotSupportedException {
        return clone();
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: clone */
    public /* bridge */ /* synthetic */ Object mo6clone() throws CloneNotSupportedException {
        return clone();
    }

    @Override // com.google.protobuf.nano.MessageNano
    public /* bridge */ /* synthetic */ MessageNano mergeFrom(CodedInputByteBufferNano input) throws IOException {
        return mergeFrom(input);
    }

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static int checkLensAvailabilityStatusOrThrow(int value) {
        if (value >= -1 && value <= 6) {
            return value;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append(value);
        sb.append(" is not a valid enum LensAvailabilityStatus");
        throw new IllegalArgumentException(sb.toString());
    }

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static int[] checkLensAvailabilityStatusOrThrow(int[] values) {
        int[] iArr = (int[]) values.clone();
        for (int i : iArr) {
            checkLensAvailabilityStatusOrThrow(i);
        }
        return iArr;
    }

    public static LensSdkParamsProto$LensSdkParams[] emptyArray() {
        if (_emptyArray == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                if (_emptyArray == null) {
                    _emptyArray = new LensSdkParamsProto$LensSdkParams[0];
                }
            }
        }
        return _emptyArray;
    }

    public LensSdkParamsProto$LensSdkParams() {
        clear();
    }

    public LensSdkParamsProto$LensSdkParams clear() {
        this.lensSdkVersion = "";
        this.agsaVersionName = "";
        this.lensAvailabilityStatus = -1;
        this.arStickersAvailabilityStatus = -1;
        this.unknownFieldData = null;
        this.cachedSize = -1;
        return this;
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public LensSdkParamsProto$LensSdkParams clone() {
        try {
            return (LensSdkParamsProto$LensSdkParams) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    public void writeTo(CodedOutputByteBufferNano output) throws IOException {
        if (this.lensSdkVersion != null && !this.lensSdkVersion.equals("")) {
            output.writeString(1, this.lensSdkVersion);
        }
        if (this.agsaVersionName != null && !this.agsaVersionName.equals("")) {
            output.writeString(2, this.agsaVersionName);
        }
        if (this.lensAvailabilityStatus != -1) {
            output.writeInt32(3, this.lensAvailabilityStatus);
        }
        if (this.arStickersAvailabilityStatus != -1) {
            output.writeInt32(4, this.arStickersAvailabilityStatus);
        }
        super.writeTo(output);
    }

    @Override // com.google.protobuf.nano.ExtendableMessageNano, com.google.protobuf.nano.MessageNano
    protected int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (this.lensSdkVersion != null && !this.lensSdkVersion.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.lensSdkVersion);
        }
        if (this.agsaVersionName != null && !this.agsaVersionName.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.agsaVersionName);
        }
        if (this.lensAvailabilityStatus != -1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(3, this.lensAvailabilityStatus);
        }
        return this.arStickersAvailabilityStatus != -1 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(4, this.arStickersAvailabilityStatus) : iComputeSerializedSize;
    }

    @Override // com.google.protobuf.nano.MessageNano
    public LensSdkParamsProto$LensSdkParams mergeFrom(CodedInputByteBufferNano input) throws IOException {
        while (true) {
            int tag = input.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.lensSdkVersion = input.readString();
            } else if (tag == 18) {
                this.agsaVersionName = input.readString();
            } else if (tag == 24) {
                int position = input.getPosition();
                try {
                    this.lensAvailabilityStatus = checkLensAvailabilityStatusOrThrow(input.readInt32());
                } catch (IllegalArgumentException unused) {
                    input.rewindToPosition(position);
                    storeUnknownField(input, tag);
                }
            } else if (tag != 32) {
                if (!super.storeUnknownField(input, tag)) {
                    return this;
                }
            } else {
                int position2 = input.getPosition();
                try {
                    this.arStickersAvailabilityStatus = checkLensAvailabilityStatusOrThrow(input.readInt32());
                } catch (IllegalArgumentException unused2) {
                    input.rewindToPosition(position2);
                    storeUnknownField(input, tag);
                }
            }
        }
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
        return (LensSdkParamsProto$LensSdkParams) MessageNano.mergeFrom(new LensSdkParamsProto$LensSdkParams(), data);
    }

    public static LensSdkParamsProto$LensSdkParams parseFrom(CodedInputByteBufferNano input) throws IOException {
        return new LensSdkParamsProto$LensSdkParams().mergeFrom(input);
    }
}
