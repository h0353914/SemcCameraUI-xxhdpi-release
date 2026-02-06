package android.support.v4.view;

import android.os.Handler$Callback;
import android.os.Message;

class AsyncLayoutInflater$1 implements Handler$Callback {
    final /* synthetic */ AsyncLayoutInflater this$0;

    AsyncLayoutInflater$1(AsyncLayoutInflater asyncLayoutInflater) {
        this.this$0 = asyncLayoutInflater;
    }

    @Override // android.os.Handler$Callback
    public boolean handleMessage(Message message) {
        AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequest = (AsyncLayoutInflater$InflateRequest) message.obj;
        if (asyncLayoutInflater$InflateRequest.view == null) {
            asyncLayoutInflater$InflateRequest.view = this.this$0.mInflater.inflate(asyncLayoutInflater$InflateRequest.resid, asyncLayoutInflater$InflateRequest.parent, false);
        }
        asyncLayoutInflater$InflateRequest.callback.onInflateFinished(asyncLayoutInflater$InflateRequest.view, asyncLayoutInflater$InflateRequest.resid, asyncLayoutInflater$InflateRequest.parent);
        this.this$0.mInflateThread.releaseRequest(asyncLayoutInflater$InflateRequest);
        return true;
    }
}
