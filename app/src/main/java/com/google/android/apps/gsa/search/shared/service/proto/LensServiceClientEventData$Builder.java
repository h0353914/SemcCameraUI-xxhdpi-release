package com.google.android.apps.gsa.search.shared.service.proto;

import com.google.protobuf.GeneratedMessageLite$Builder;

public final class LensServiceClientEventData$Builder extends GeneratedMessageLite$Builder<LensServiceClientEventData, LensServiceClientEventData$Builder> implements LensServiceClientEventDataOrBuilder {
    /* synthetic */ LensServiceClientEventData$Builder(LensServiceClientEventData$1 lensServiceClientEventData$1) {
        this();
    }

    private LensServiceClientEventData$Builder() {
        super(LensServiceClientEventData.access$000());
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceClientEventDataOrBuilder
    public boolean hasTargetServiceApiVersion() {
        return ((LensServiceClientEventData) this.instance).hasTargetServiceApiVersion();
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceClientEventDataOrBuilder
    public int getTargetServiceApiVersion() {
        return ((LensServiceClientEventData) this.instance).getTargetServiceApiVersion();
    }

    public LensServiceClientEventData$Builder setTargetServiceApiVersion(int value) {
        copyOnWrite();
        LensServiceClientEventData.access$100((LensServiceClientEventData) this.instance, value);
        return this;
    }

    public LensServiceClientEventData$Builder clearTargetServiceApiVersion() {
        copyOnWrite();
        LensServiceClientEventData.access$200((LensServiceClientEventData) this.instance);
        return this;
    }
}
