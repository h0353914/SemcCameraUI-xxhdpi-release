package com.sonyericsson.cameracommon.focusview;

class FocusRectangles$OnFaceRectTouchListener$1 implements FocusRectangles$FaceReflectedCallback {
    final /* synthetic */ FocusRectangles$OnFaceRectTouchListener this$1;

    FocusRectangles$OnFaceRectTouchListener$1(FocusRectangles$OnFaceRectTouchListener focusRectangles$OnFaceRectTouchListener) {
        this.this$1 = focusRectangles$OnFaceRectTouchListener;
    }

    @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles$FaceReflectedCallback
    public void onFaceReflected() {
        FocusRectangles.access$3200(this.this$1.this$0).onReleased();
    }
}
