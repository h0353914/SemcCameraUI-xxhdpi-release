package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.os.Handler$Callback;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import android.view.LayoutInflater;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class AsyncLayoutInflater {
    private static final String TAG = "AsyncLayoutInflater";
    LayoutInflater mInflater;
    private Handler$Callback mHandlerCallback = new AsyncLayoutInflater$1(this);
    Handler mHandler = new Handler(this.mHandlerCallback);
    AsyncLayoutInflater$InflateThread mInflateThread = AsyncLayoutInflater$InflateThread.getInstance();

    public AsyncLayoutInflater(@NonNull Context context) {
        this.mInflater = new AsyncLayoutInflater$BasicInflater(context);
    }

    @UiThread
    public void inflate(@LayoutRes int i, @Nullable ViewGroup viewGroup, @NonNull AsyncLayoutInflater$OnInflateFinishedListener asyncLayoutInflater$OnInflateFinishedListener) {
        if (asyncLayoutInflater$OnInflateFinishedListener == null) {
            throw new NullPointerException("callback argument may not be null!");
        }
        AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequestObtainRequest = this.mInflateThread.obtainRequest();
        asyncLayoutInflater$InflateRequestObtainRequest.inflater = this;
        asyncLayoutInflater$InflateRequestObtainRequest.resid = i;
        asyncLayoutInflater$InflateRequestObtainRequest.parent = viewGroup;
        asyncLayoutInflater$InflateRequestObtainRequest.callback = asyncLayoutInflater$OnInflateFinishedListener;
        this.mInflateThread.enqueue(asyncLayoutInflater$InflateRequestObtainRequest);
    }
}
