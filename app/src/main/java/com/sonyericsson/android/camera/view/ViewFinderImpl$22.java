package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;

class ViewFinderImpl$22 implements SuperSlowMotionTriggerAnimationController$OnAnimationEndListener {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$22(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.view.SuperSlowMotionTriggerAnimationController$OnAnimationEndListener
    public void onAnimationEnd() {
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_SLOW_MOTION_FEEDBACK_ANIMATION_END, new Object[0]);
    }
}
