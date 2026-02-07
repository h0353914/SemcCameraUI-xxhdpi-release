package com.google.android.apps.gsa.search.shared.service.proto;

import com.google.protobuf.Internal$EnumLite;
import com.google.protobuf.Internal$EnumLiteMap;

/* JADX INFO: loaded from: classes.dex */
class ClientEventId$1 implements Internal$EnumLiteMap<ClientEventId> {
    ClientEventId$1() {
    }

    /* JADX INFO: renamed from: findValueByNumber, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Internal$EnumLite m4findValueByNumber(int number) {
        return findValueByNumber(number);
    }

    public ClientEventId findValueByNumber(int number) {
        return ClientEventId.forNumber(number);
    }
}
