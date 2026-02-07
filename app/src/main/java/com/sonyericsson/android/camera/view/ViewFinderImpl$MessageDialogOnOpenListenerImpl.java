package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnOpenListener;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$MessageDialogOnOpenListenerImpl implements MessageDialogController$MessageDialogOnOpenListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$MessageDialogOnOpenListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$MessageDialogOnOpenListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1067)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1092)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    @Override // com.sonyericsson.android.camera.view.messagedialog.MessageDialogController$MessageDialogOnOpenListener
    public void onOpen(com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest r4) {
        /*
            r3 = this;
            int[] r0 = com.sonyericsson.android.camera.view.ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId
            com.sonyericsson.android.camera.view.messagedialog.DialogId r4 = r4.mDialogId
            int r4 = r4.ordinal()
            r4 = r0[r4]
            r0 = 13
            if (r4 == r0) goto L1b
            switch(r4) {
                case 1: goto L15;
                case 2: goto L15;
                case 3: goto L15;
                case 4: goto L15;
                default: goto L11;
            }
        L11:
            switch(r4) {
                case 26: goto L15;
                case 27: goto L15;
                case 28: goto L15;
                case 29: goto L1b;
                case 30: goto L1b;
                default: goto L14;
            }
        L14:
            goto L2e
        L15:
            com.sonyericsson.android.camera.view.ViewFinderImpl r3 = r3.this$0
            com.sonyericsson.android.camera.view.ViewFinderImpl.access$9100(r3)
            goto L2e
        L1b:
            com.sonyericsson.android.camera.view.ViewFinderImpl r3 = r3.this$0
            com.sonyericsson.android.camera.controller.StateMachine r3 = com.sonyericsson.android.camera.view.ViewFinderImpl.access$1000(r3)
            com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent r4 = com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent.EVENT_DIALOG_OPENED
            r0 = 1
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = 0
            com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind r2 = com.sonyericsson.android.camera.view.ViewFinder$UiComponentKind.NOTICE_DIALOG
            r0[r1] = r2
            r3.sendEvent(r4, r0)
        L2e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sonyericsson.android.camera.view.ViewFinderImpl$MessageDialogOnOpenListenerImpl.onOpen(com.sonyericsson.android.camera.view.messagedialog.MessageDialogRequest):void");
    }
}
