package android.support.v4.os;

import android.os.Bundle;

class ResultReceiver$MyResultReceiver extends IResultReceiver$Stub {
    final /* synthetic */ ResultReceiver this$0;

    ResultReceiver$MyResultReceiver(ResultReceiver resultReceiver) {
        this.this$0 = resultReceiver;
    }

    @Override // android.support.v4.os.IResultReceiver
    public void send(int i, Bundle bundle) {
        if (this.this$0.mHandler != null) {
            this.this$0.mHandler.post(new ResultReceiver$MyRunnable(this.this$0, i, bundle));
        } else {
            this.this$0.onReceiveResult(i, bundle);
        }
    }
}
