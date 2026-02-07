package android.support.v4.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class ModernAsyncTask$InternalHandler extends Handler {
    ModernAsyncTask$InternalHandler() {
        super(Looper.getMainLooper());
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ModernAsyncTask$AsyncTaskResult modernAsyncTask$AsyncTaskResult = (ModernAsyncTask$AsyncTaskResult) message.obj;
        switch (message.what) {
            case 1:
                modernAsyncTask$AsyncTaskResult.mTask.finish(modernAsyncTask$AsyncTaskResult.mData[0]);
                break;
            case 2:
                modernAsyncTask$AsyncTaskResult.mTask.onProgressUpdate(modernAsyncTask$AsyncTaskResult.mData);
                break;
        }
    }
}
