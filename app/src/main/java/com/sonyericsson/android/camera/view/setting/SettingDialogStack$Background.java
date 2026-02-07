package com.sonyericsson.android.camera.view.setting;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.view.setting.dialog.SettingDialogInterface;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;

/* JADX INFO: loaded from: classes.dex */
class SettingDialogStack$Background extends FrameLayout {
    private final Rect mBackgroundRect;
    private final Rect mItemRect;
    final /* synthetic */ SettingDialogStack this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingDialogStack$Background(SettingDialogStack settingDialogStack, Context context) {
        super(context);
        this.this$0 = settingDialogStack;
        this.mBackgroundRect = new Rect();
        this.mItemRect = new Rect();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        if (CamLog.VERBOSE) {
            CamLog.d("onMeasure() E");
        }
        if (SettingDialogStack.access$000(this.this$0) != null) {
            Object obj = SettingDialogStack.access$100(this.this$0).get(SettingDialogStack.access$000(this.this$0));
            Rect rect = new Rect();
            if (SettingDialogStack.access$200(this.this$0).getGlobalVisibleRect(rect)) {
                if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                    this.mBackgroundRect.left = rect.top;
                    this.mBackgroundRect.top = rect.left;
                    this.mBackgroundRect.right = rect.bottom;
                    this.mBackgroundRect.bottom = rect.right;
                } else {
                    this.mBackgroundRect.left = rect.left;
                    this.mBackgroundRect.top = rect.top;
                    this.mBackgroundRect.right = rect.right;
                    this.mBackgroundRect.bottom = rect.bottom;
                }
                if (CamLog.VERBOSE) {
                    CamLog.d("  backgroundRect: (" + this.mBackgroundRect.left + ", " + this.mBackgroundRect.top + ", " + this.mBackgroundRect.right + ", " + this.mBackgroundRect.bottom + ")");
                }
                Rect rect2 = new Rect();
                if (SettingDialogStack.access$300(this.this$0).getGlobalVisibleItemRect(rect2, obj)) {
                    if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
                        this.mItemRect.left = rect2.top;
                        this.mItemRect.top = rect2.left;
                        this.mItemRect.right = rect2.bottom;
                        this.mItemRect.bottom = rect2.right;
                    } else {
                        this.mItemRect.left = rect2.left;
                        this.mItemRect.top = rect2.top;
                        this.mItemRect.right = rect2.right;
                        this.mItemRect.bottom = rect2.bottom;
                    }
                    if (CamLog.VERBOSE) {
                        CamLog.d("  itemRect: (" + this.mItemRect.left + ", " + this.mItemRect.top + ", " + this.mItemRect.right + ", " + this.mItemRect.bottom + ")");
                    }
                    if (SettingDialogStack.access$400(this.this$0) == 2) {
                        i3 = this.mBackgroundRect.bottom - this.mItemRect.bottom;
                    } else {
                        i3 = this.mBackgroundRect.right - this.mItemRect.right;
                    }
                    SettingDialogStack.access$000(this.this$0).setBottomMarginHint(i3);
                    if (CamLog.VERBOSE) {
                        CamLog.d("  margin-button:" + i3);
                    }
                }
            }
        }
        if (CamLog.VERBOSE) {
            CamLog.d("onMeasure() X");
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (CamLog.VERBOSE) {
            CamLog.d("onTouchEvent: " + motionEvent.getAction());
        }
        SettingDialogInterface settingDialogInterfaceAccess$500 = SettingDialogStack.access$500(this.this$0);
        if (settingDialogInterfaceAccess$500 != null) {
            switch (motionEvent.getAction()) {
                case 0:
                    if (SettingDialogStack.access$600(this.this$0) == null || !SettingDialogStack.access$600(this.this$0).isExclusiveView(SettingDialogStack.access$700(this.this$0), motionEvent)) {
                    }
                    break;
                case 1:
                    if (SettingDialogStack.access$800(this.this$0)) {
                        if (SettingDialogStack.access$300(this.this$0) == null || !SettingDialogStack.access$300(this.this$0).isOperationAcceptable()) {
                            Rect rect = new Rect();
                            SettingDialogStack.access$700(this.this$0).getGlobalVisibleRect(rect);
                            if (!settingDialogInterfaceAccess$500.hitTest(rect.right - ((int) motionEvent.getY()), rect.top + ((int) motionEvent.getX()))) {
                                this.this$0.closeCurrentDialog();
                            }
                        }
                        break;
                    }
                    break;
            }
            return true;
        }
        return false;
    }
}
