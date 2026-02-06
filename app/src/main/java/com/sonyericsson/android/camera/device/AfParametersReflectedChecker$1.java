package com.sonyericsson.android.camera.device;

class AfParametersReflectedChecker$1 implements Runnable {
    final /* synthetic */ AfParametersReflectedChecker this$0;

    AfParametersReflectedChecker$1(AfParametersReflectedChecker afParametersReflectedChecker) {
        this.this$0 = afParametersReflectedChecker;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (AfParametersReflectedChecker.access$000(this.this$0) != null) {
            AfParametersReflectedChecker.access$000(this.this$0).onReflected(this.this$0);
        }
    }
}
