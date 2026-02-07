package android.support.v4.view;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler extends Handler {
    final /* synthetic */ GestureDetectorCompat$GestureDetectorCompatImplBase this$0;

    GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler(GestureDetectorCompat$GestureDetectorCompatImplBase gestureDetectorCompat$GestureDetectorCompatImplBase) {
        this.this$0 = gestureDetectorCompat$GestureDetectorCompatImplBase;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler(GestureDetectorCompat$GestureDetectorCompatImplBase gestureDetectorCompat$GestureDetectorCompatImplBase, Handler handler) {
        super(handler.getLooper());
        this.this$0 = gestureDetectorCompat$GestureDetectorCompatImplBase;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.this$0.mListener.onShowPress(this.this$0.mCurrentDownEvent);
                return;
            case 2:
                this.this$0.dispatchLongPress();
                return;
            case 3:
                if (this.this$0.mDoubleTapListener != null) {
                    if (!this.this$0.mStillDown) {
                        this.this$0.mDoubleTapListener.onSingleTapConfirmed(this.this$0.mCurrentDownEvent);
                        return;
                    } else {
                        this.this$0.mDeferConfirmSingleTap = true;
                        return;
                    }
                }
                return;
            default:
                throw new RuntimeException("Unknown message " + message);
        }
    }
}
