package android.support.v4.view;

import android.os.Message;
import android.support.v4.util.Pools$SynchronizedPool;
import android.util.Log;
import java.util.concurrent.ArrayBlockingQueue;

class AsyncLayoutInflater$InflateThread extends Thread {
    private static final AsyncLayoutInflater$InflateThread sInstance = new AsyncLayoutInflater$InflateThread();
    private ArrayBlockingQueue<AsyncLayoutInflater$InflateRequest> mQueue = new ArrayBlockingQueue<>(10);
    private Pools$SynchronizedPool<AsyncLayoutInflater$InflateRequest> mRequestPool = new Pools$SynchronizedPool<>(10);

    private AsyncLayoutInflater$InflateThread() {
    }

    static {
        sInstance.start();
    }

    public static AsyncLayoutInflater$InflateThread getInstance() {
        return sInstance;
    }

    public void runInner() {
        try {
            AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequestTake = this.mQueue.take();
            try {
                asyncLayoutInflater$InflateRequestTake.view = asyncLayoutInflater$InflateRequestTake.inflater.mInflater.inflate(asyncLayoutInflater$InflateRequestTake.resid, asyncLayoutInflater$InflateRequestTake.parent, false);
            } catch (RuntimeException e) {
                Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", e);
            }
            Message.obtain(asyncLayoutInflater$InflateRequestTake.inflater.mHandler, 0, asyncLayoutInflater$InflateRequestTake).sendToTarget();
        } catch (InterruptedException e2) {
            Log.w("AsyncLayoutInflater", e2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            runInner();
        }
    }

    public AsyncLayoutInflater$InflateRequest obtainRequest() {
        AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequestAcquire = this.mRequestPool.acquire();
        return asyncLayoutInflater$InflateRequestAcquire == null ? new AsyncLayoutInflater$InflateRequest() : asyncLayoutInflater$InflateRequestAcquire;
    }

    public void releaseRequest(AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequest) {
        asyncLayoutInflater$InflateRequest.callback = null;
        asyncLayoutInflater$InflateRequest.inflater = null;
        asyncLayoutInflater$InflateRequest.parent = null;
        asyncLayoutInflater$InflateRequest.resid = 0;
        asyncLayoutInflater$InflateRequest.view = null;
        this.mRequestPool.release(asyncLayoutInflater$InflateRequest);
    }

    public void enqueue(AsyncLayoutInflater$InflateRequest asyncLayoutInflater$InflateRequest) {
        try {
            this.mQueue.put(asyncLayoutInflater$InflateRequest);
        } catch (InterruptedException e) {
            throw new RuntimeException("Failed to enqueue async inflate request", e);
        }
    }
}
