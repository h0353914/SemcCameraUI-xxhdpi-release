package com.sonyericsson.android.camera.view;

import android.graphics.Point;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$AngleChangeButtonProcedure extends UserEventHandler$TouchEventProcedure {
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$AngleChangeButtonProcedure(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
    }

    /* synthetic */ UserEventHandler$AngleChangeButtonProcedure(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    public void doClick(Point point) {
        UserEventHandler$AngleActionHandler.access$3800(UserEventHandler.access$3700(this.this$0));
    }
}
