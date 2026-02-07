package com.google.android.apps.gsa.search.shared.service.proto;

import com.google.protobuf.GeneratedMessageLite$Builder;

/* JADX INFO: loaded from: classes.dex */
public final class LensServiceEventData$Builder extends GeneratedMessageLite$Builder<LensServiceEventData, LensServiceEventData$Builder> implements LensServiceEventDataOrBuilder {
    /* synthetic */ LensServiceEventData$Builder(LensServiceEventData$1 lensServiceEventData$1) {
        this();
    }

    private LensServiceEventData$Builder() {
        super(LensServiceEventData.access$000());
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceEventDataOrBuilder
    public boolean hasServiceApiVersion() {
        return ((LensServiceEventData) this.instance).hasServiceApiVersion();
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.LensServiceEventDataOrBuilder
    public int getServiceApiVersion() {
        return ((LensServiceEventData) this.instance).getServiceApiVersion();
    }

    public LensServiceEventData$Builder setServiceApiVersion(int value) {
        copyOnWrite();
        LensServiceEventData.access$100((LensServiceEventData) this.instance, value);
        return this;
    }

    public LensServiceEventData$Builder clearServiceApiVersion() {
        copyOnWrite();
        LensServiceEventData.access$200((LensServiceEventData) this.instance);
        return this;
    }
}
