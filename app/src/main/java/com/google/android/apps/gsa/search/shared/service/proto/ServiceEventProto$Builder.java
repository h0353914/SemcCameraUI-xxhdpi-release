package com.google.android.apps.gsa.search.shared.service.proto;

import com.google.protobuf.GeneratedMessageLite$ExtendableBuilder;

public final class ServiceEventProto$Builder extends GeneratedMessageLite$ExtendableBuilder<ServiceEventProto, ServiceEventProto$Builder> implements ServiceEventProtoOrBuilder {
    /* synthetic */ ServiceEventProto$Builder(ServiceEventProto$1 serviceEventProto$1) {
        this();
    }

    private ServiceEventProto$Builder() {
        super(ServiceEventProto.access$000());
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.ServiceEventProtoOrBuilder
    public boolean hasEventId() {
        return this.instance.hasEventId();
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.ServiceEventProtoOrBuilder
    public int getEventId() {
        return this.instance.getEventId();
    }

    public ServiceEventProto$Builder setEventId(int value) {
        copyOnWrite();
        ServiceEventProto.access$100(this.instance, value);
        return this;
    }

    public ServiceEventProto$Builder clearEventId() {
        copyOnWrite();
        ServiceEventProto.access$200(this.instance);
        return this;
    }
}
