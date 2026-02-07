package com.sonymobile.sidetouchgesturedetector;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
class DynamicAreaFilter$2 extends ContentObserver {
    final /* synthetic */ DynamicAreaFilter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DynamicAreaFilter$2(DynamicAreaFilter dynamicAreaFilter, Handler handler) {
        super(handler);
        this.this$0 = dynamicAreaFilter;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        if (DynamicAreaFilter.access$300().equals(uri)) {
            DynamicAreaFilter.access$402(this.this$0, DynamicAreaFilter.access$500(this.this$0));
            DynamicAreaFilter.access$602(this.this$0, DynamicAreaFilter.access$700(this.this$0, DynamicAreaFilter.access$400(this.this$0)));
            return;
        }
        if (DynamicAreaFilter.access$800().equals(uri)) {
            DynamicAreaFilter.access$902(this.this$0, DynamicAreaFilter.access$1000(this.this$0));
            DynamicAreaFilter.access$1102(this.this$0, DynamicAreaFilter.access$1200(this.this$0, DynamicAreaFilter.access$900(this.this$0)));
            if (DynamicAreaFilter.access$1300(this.this$0) != null) {
                DynamicAreaFilter.access$1300(this.this$0).onTopLimitScaleChanged(DynamicAreaFilter.access$900(this.this$0));
                return;
            }
            return;
        }
        if (DynamicAreaFilter.access$1400().equals(uri)) {
            DynamicAreaFilter.access$1502(this.this$0, DynamicAreaFilter.access$1600(this.this$0));
        } else if (DynamicAreaFilter.access$1700().equals(uri)) {
            DynamicAreaFilter.access$1800(this.this$0);
        }
    }
}
