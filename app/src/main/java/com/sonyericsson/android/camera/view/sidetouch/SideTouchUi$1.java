package com.sonyericsson.android.camera.view.sidetouch;

/* JADX INFO: loaded from: classes.dex */
class SideTouchUi$1 implements SideTouchUi$Icon$OnDetachedListener {
    final /* synthetic */ SideTouchUi this$0;

    SideTouchUi$1(SideTouchUi sideTouchUi) {
        this.this$0 = sideTouchUi;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon$OnDetachedListener
    public void onDetached(SideTouchUi$Icon sideTouchUi$Icon) {
        int iFindIconLayerNum = findIconLayerNum(sideTouchUi$Icon);
        if (iFindIconLayerNum != -1) {
            SideTouchUi.access$000(this.this$0, iFindIconLayerNum);
            SideTouchUi.access$100(this.this$0, iFindIconLayerNum);
        }
    }

    private int findIconLayerNum(SideTouchUi$Icon sideTouchUi$Icon) {
        for (int i = 0; i < SideTouchUi.access$200(this.this$0).size(); i++) {
            int iKeyAt = SideTouchUi.access$200(this.this$0).keyAt(i);
            if (SideTouchUi$IconLayer.access$300((SideTouchUi$IconLayer) SideTouchUi.access$200(this.this$0).get(iKeyAt)) == sideTouchUi$Icon) {
                return iKeyAt;
            }
        }
        return -1;
    }
}
