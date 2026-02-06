package android.support.v4.app;

import android.view.FrameMetrics;
import android.view.Window;
import android.view.Window$OnFrameMetricsAvailableListener;

class FrameMetricsAggregator$FrameMetricsApi24Impl$1 implements Window$OnFrameMetricsAvailableListener {
    final /* synthetic */ FrameMetricsAggregator$FrameMetricsApi24Impl this$0;

    FrameMetricsAggregator$FrameMetricsApi24Impl$1(FrameMetricsAggregator$FrameMetricsApi24Impl frameMetricsAggregator$FrameMetricsApi24Impl) {
        this.this$0 = frameMetricsAggregator$FrameMetricsApi24Impl;
    }

    @Override // android.view.Window$OnFrameMetricsAvailableListener
    public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
        if ((this.this$0.mTrackingFlags & 1) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[0], frameMetrics.getMetric(8));
        }
        if ((this.this$0.mTrackingFlags & 2) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[1], frameMetrics.getMetric(1));
        }
        if ((this.this$0.mTrackingFlags & 4) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[2], frameMetrics.getMetric(3));
        }
        if ((this.this$0.mTrackingFlags & 8) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[3], frameMetrics.getMetric(4));
        }
        if ((this.this$0.mTrackingFlags & 16) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[4], frameMetrics.getMetric(5));
        }
        if ((this.this$0.mTrackingFlags & 64) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[6], frameMetrics.getMetric(7));
        }
        if ((this.this$0.mTrackingFlags & 32) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[5], frameMetrics.getMetric(6));
        }
        if ((this.this$0.mTrackingFlags & 128) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[7], frameMetrics.getMetric(0));
        }
        if ((this.this$0.mTrackingFlags & 256) != 0) {
            this.this$0.addDurationItem(this.this$0.mMetrics[8], frameMetrics.getMetric(2));
        }
    }
}
