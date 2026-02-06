package android.support.v4.app;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.annotation.RequiresApi;
import android.util.SparseIntArray;
import android.view.Window$OnFrameMetricsAvailableListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@RequiresApi(24)
class FrameMetricsAggregator$FrameMetricsApi24Impl extends FrameMetricsAggregator$FrameMetricsBaseImpl {
    private static final int NANOS_PER_MS = 1000000;
    private static final int NANOS_ROUNDING_VALUE = 500000;
    private static Handler sHandler;
    private static HandlerThread sHandlerThread;
    int mTrackingFlags;
    SparseIntArray[] mMetrics = new SparseIntArray[9];
    private ArrayList<WeakReference<Activity>> mActivities = new ArrayList<>();
    Window$OnFrameMetricsAvailableListener mListener = new FrameMetricsAggregator$FrameMetricsApi24Impl$1(this);

    FrameMetricsAggregator$FrameMetricsApi24Impl(int i) {
        this.mTrackingFlags = i;
    }

    void addDurationItem(SparseIntArray sparseIntArray, long j) {
        if (sparseIntArray != null) {
            int i = (int) ((500000 + j) / 1000000);
            if (j >= 0) {
                sparseIntArray.put(i, sparseIntArray.get(i) + 1);
            }
        }
    }

    @Override // android.support.v4.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public void add(Activity activity) {
        if (sHandlerThread == null) {
            sHandlerThread = new HandlerThread("FrameMetricsAggregator");
            sHandlerThread.start();
            sHandler = new Handler(sHandlerThread.getLooper());
        }
        for (int i = 0; i <= 8; i++) {
            if (this.mMetrics[i] == null && (this.mTrackingFlags & (1 << i)) != 0) {
                this.mMetrics[i] = new SparseIntArray();
            }
        }
        activity.getWindow().addOnFrameMetricsAvailableListener(this.mListener, sHandler);
        this.mActivities.add(new WeakReference<>(activity));
    }

    @Override // android.support.v4.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public SparseIntArray[] remove(Activity activity) {
        Iterator<WeakReference<Activity>> it = this.mActivities.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            WeakReference<Activity> next = it.next();
            if (next.get() == activity) {
                this.mActivities.remove(next);
                break;
            }
        }
        activity.getWindow().removeOnFrameMetricsAvailableListener(this.mListener);
        return this.mMetrics;
    }

    @Override // android.support.v4.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public SparseIntArray[] stop() {
        for (int size = this.mActivities.size() - 1; size >= 0; size--) {
            WeakReference<Activity> weakReference = this.mActivities.get(size);
            Activity activity = weakReference.get();
            if (weakReference.get() != null) {
                activity.getWindow().removeOnFrameMetricsAvailableListener(this.mListener);
                this.mActivities.remove(size);
            }
        }
        return this.mMetrics;
    }

    @Override // android.support.v4.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public SparseIntArray[] getMetrics() {
        return this.mMetrics;
    }

    @Override // android.support.v4.app.FrameMetricsAggregator$FrameMetricsBaseImpl
    public SparseIntArray[] reset() {
        SparseIntArray[] sparseIntArrayArr = this.mMetrics;
        this.mMetrics = new SparseIntArray[9];
        return sparseIntArrayArr;
    }
}
