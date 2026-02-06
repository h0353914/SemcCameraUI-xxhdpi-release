package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.recorder.RecorderController$Result;

class BaseRecorderController$NotifyFinishResult implements Runnable {
    private final RecorderController$Result mResult;
    final /* synthetic */ BaseRecorderController this$0;

    public BaseRecorderController$NotifyFinishResult(BaseRecorderController baseRecorderController, RecorderController$Result recorderController$Result) {
        this.this$0 = baseRecorderController;
        this.mResult = recorderController$Result;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zVerifyState;
        BaseRecorderController.access$100("notifyFinishResult() E result:" + this.mResult.name());
        switch (BaseRecorderController$8.$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result[this.mResult.ordinal()]) {
            case 1:
            case 2:
                synchronized (this.this$0.mStateLock) {
                    zVerifyState = this.this$0.verifyState(BaseRecorderController$State.STOPPING, BaseRecorderController$State.RELEASING, BaseRecorderController$State.RELEASED);
                    break;
                }
                if (zVerifyState) {
                    BaseRecorderController.access$500(this.this$0).onRecordFinished(this.mResult);
                }
                synchronized (this.this$0.mStateLock) {
                    BaseRecorderController.access$1600(this.this$0).reset(Math.max(BaseRecorderController.access$1600(this.this$0).elapsedTimeMillis(), BaseRecorderController.access$1700(this.this$0)));
                    if (!this.this$0.verifyState(BaseRecorderController$State.RELEASING, BaseRecorderController$State.RELEASED)) {
                        this.this$0.changeTo(BaseRecorderController$State.IDLE);
                    }
                    break;
                }
                break;
            case 3:
            case 4:
                BaseRecorderController.access$500(this.this$0).onRecordFinished(this.mResult);
                break;
        }
        BaseRecorderController.access$100("notifyFinishResult() X");
    }
}
