package com.google.android.apps.gsa.search.shared.service.proto;

import com.google.protobuf.GeneratedMessageLite$ExtendableBuilder;

/* JADX INFO: loaded from: classes.dex */
public final class ClientEventProto$Builder extends GeneratedMessageLite$ExtendableBuilder<ClientEventProto, ClientEventProto$Builder> implements ClientEventProtoOrBuilder {
    /* synthetic */ ClientEventProto$Builder(ClientEventProto$1 clientEventProto$1) {
        this();
    }

    private ClientEventProto$Builder() {
        super(ClientEventProto.access$000());
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.ClientEventProtoOrBuilder
    public boolean hasEventId() {
        return this.instance.hasEventId();
    }

    @Override // com.google.android.apps.gsa.search.shared.service.proto.ClientEventProtoOrBuilder
    public int getEventId() {
        return this.instance.getEventId();
    }

    public ClientEventProto$Builder setEventId(int value) {
        copyOnWrite();
        ClientEventProto.access$100(this.instance, value);
        return this;
    }

    public ClientEventProto$Builder clearEventId() {
        copyOnWrite();
        ClientEventProto.access$200(this.instance);
        return this;
    }
}
