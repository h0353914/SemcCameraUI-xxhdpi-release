package android.support.v4.os;

import android.os.Bundle;

class ResultReceiver$MyRunnable implements Runnable {
    final int mResultCode;
    final Bundle mResultData;
    final /* synthetic */ ResultReceiver this$0;

    ResultReceiver$MyRunnable(ResultReceiver resultReceiver, int i, Bundle bundle) {
        this.this$0 = resultReceiver;
        this.mResultCode = i;
        this.mResultData = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.onReceiveResult(this.mResultCode, this.mResultData);
    }
}
