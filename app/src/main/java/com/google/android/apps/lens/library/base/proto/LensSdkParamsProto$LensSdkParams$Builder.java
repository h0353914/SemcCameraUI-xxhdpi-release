package com.google.android.apps.lens.library.base.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite$Builder;

/* JADX INFO: loaded from: classes.dex */
public final class LensSdkParamsProto$LensSdkParams$Builder extends GeneratedMessageLite$Builder<LensSdkParamsProto$LensSdkParams, LensSdkParamsProto$LensSdkParams$Builder> implements LensSdkParamsProto$LensSdkParamsOrBuilder {
    /* synthetic */ LensSdkParamsProto$LensSdkParams$Builder(LensSdkParamsProto$1 lensSdkParamsProto$1) {
        this();
    }

    private LensSdkParamsProto$LensSdkParams$Builder() {
        super(LensSdkParamsProto$LensSdkParams.access$000());
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public boolean hasLensSdkVersion() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).hasLensSdkVersion();
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public String getLensSdkVersion() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).getLensSdkVersion();
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public ByteString getLensSdkVersionBytes() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).getLensSdkVersionBytes();
    }

    public LensSdkParamsProto$LensSdkParams$Builder setLensSdkVersion(String value) {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$100((LensSdkParamsProto$LensSdkParams) this.instance, value);
        return this;
    }

    public LensSdkParamsProto$LensSdkParams$Builder clearLensSdkVersion() {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$200((LensSdkParamsProto$LensSdkParams) this.instance);
        return this;
    }

    public LensSdkParamsProto$LensSdkParams$Builder setLensSdkVersionBytes(ByteString value) {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$300((LensSdkParamsProto$LensSdkParams) this.instance, value);
        return this;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public boolean hasAgsaVersionName() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).hasAgsaVersionName();
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public String getAgsaVersionName() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).getAgsaVersionName();
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public ByteString getAgsaVersionNameBytes() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).getAgsaVersionNameBytes();
    }

    public LensSdkParamsProto$LensSdkParams$Builder setAgsaVersionName(String value) {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$400((LensSdkParamsProto$LensSdkParams) this.instance, value);
        return this;
    }

    public LensSdkParamsProto$LensSdkParams$Builder clearAgsaVersionName() {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$500((LensSdkParamsProto$LensSdkParams) this.instance);
        return this;
    }

    public LensSdkParamsProto$LensSdkParams$Builder setAgsaVersionNameBytes(ByteString value) {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$600((LensSdkParamsProto$LensSdkParams) this.instance, value);
        return this;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public boolean hasLensAvailabilityStatus() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).hasLensAvailabilityStatus();
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus getLensAvailabilityStatus() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).getLensAvailabilityStatus();
    }

    public LensSdkParamsProto$LensSdkParams$Builder setLensAvailabilityStatus(LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus value) {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$700((LensSdkParamsProto$LensSdkParams) this.instance, value);
        return this;
    }

    public LensSdkParamsProto$LensSdkParams$Builder clearLensAvailabilityStatus() {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$800((LensSdkParamsProto$LensSdkParams) this.instance);
        return this;
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public boolean hasArStickersAvailabilityStatus() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).hasArStickersAvailabilityStatus();
    }

    @Override // com.google.android.apps.lens.library.base.proto.LensSdkParamsProto$LensSdkParamsOrBuilder
    public LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus getArStickersAvailabilityStatus() {
        return ((LensSdkParamsProto$LensSdkParams) this.instance).getArStickersAvailabilityStatus();
    }

    public LensSdkParamsProto$LensSdkParams$Builder setArStickersAvailabilityStatus(LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus value) {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$900((LensSdkParamsProto$LensSdkParams) this.instance, value);
        return this;
    }

    public LensSdkParamsProto$LensSdkParams$Builder clearArStickersAvailabilityStatus() {
        copyOnWrite();
        LensSdkParamsProto$LensSdkParams.access$1000((LensSdkParamsProto$LensSdkParams) this.instance);
        return this;
    }
}
